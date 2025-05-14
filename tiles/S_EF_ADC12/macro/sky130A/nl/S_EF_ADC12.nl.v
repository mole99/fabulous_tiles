module S_EF_ADC12 (CMP_top,
    Co,
    HOLD_top,
    RESET_top,
    UserCLK,
    UserCLKo,
    VALUE_top0,
    VALUE_top1,
    VALUE_top10,
    VALUE_top11,
    VALUE_top2,
    VALUE_top3,
    VALUE_top4,
    VALUE_top5,
    VALUE_top6,
    VALUE_top7,
    VALUE_top8,
    VALUE_top9,
    FrameData,
    FrameData_O,
    FrameStrobe,
    FrameStrobe_O,
    N1BEG,
    N2BEG,
    N2BEGb,
    N4BEG,
    NN4BEG,
    S1END,
    S2END,
    S2MID,
    S4END,
    SS4END);
 input CMP_top;
 output Co;
 output HOLD_top;
 output RESET_top;
 input UserCLK;
 output UserCLKo;
 output VALUE_top0;
 output VALUE_top1;
 output VALUE_top10;
 output VALUE_top11;
 output VALUE_top2;
 output VALUE_top3;
 output VALUE_top4;
 output VALUE_top5;
 output VALUE_top6;
 output VALUE_top7;
 output VALUE_top8;
 output VALUE_top9;
 input [31:0] FrameData;
 output [31:0] FrameData_O;
 input [19:0] FrameStrobe;
 output [19:0] FrameStrobe_O;
 output [3:0] N1BEG;
 output [7:0] N2BEG;
 output [7:0] N2BEGb;
 output [15:0] N4BEG;
 output [15:0] NN4BEG;
 input [3:0] S1END;
 input [7:0] S2END;
 input [7:0] S2MID;
 input [15:0] S4END;
 input [15:0] SS4END;

 wire UserCLK_regs;
 wire net99;
 wire net100;
 wire net101;
 wire net102;
 wire net103;
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
 wire \Inst_EF_ADC12.VALID ;
 wire \Inst_EF_ADC12.curr_state[0] ;
 wire \Inst_EF_ADC12.curr_state[1] ;
 wire \Inst_EF_ADC12.curr_state[2] ;
 wire \Inst_EF_ADC12.curr_state[3] ;
 wire \Inst_EF_ADC12.curr_state[5] ;
 wire \Inst_EF_ADC12.next_bit[0] ;
 wire \Inst_EF_ADC12.next_bit[10] ;
 wire \Inst_EF_ADC12.next_bit[1] ;
 wire \Inst_EF_ADC12.next_bit[2] ;
 wire \Inst_EF_ADC12.next_bit[3] ;
 wire \Inst_EF_ADC12.next_bit[4] ;
 wire \Inst_EF_ADC12.next_bit[5] ;
 wire \Inst_EF_ADC12.next_bit[6] ;
 wire \Inst_EF_ADC12.next_bit[7] ;
 wire \Inst_EF_ADC12.next_bit[8] ;
 wire \Inst_EF_ADC12.next_bit[9] ;
 wire \Inst_EF_ADC12.sample_counter[0] ;
 wire \Inst_EF_ADC12.sample_counter[1] ;
 wire \Inst_EF_ADC12.sample_counter[2] ;
 wire \Inst_EF_ADC12.sample_counter[3] ;
 wire \Inst_EF_ADC12.shift_value[0] ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit0.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit1.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit10.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit11.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit12.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit13.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit14.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit15.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit16.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit17.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit18.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit19.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit2.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit20.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit21.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit22.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit23.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit24.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit25.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit26.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit27.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit28.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit29.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit3.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit30.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit31.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit4.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit5.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit6.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit7.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit8.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit9.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit0.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit1.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit10.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit11.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit12.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit13.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit14.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit15.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit16.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit17.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit18.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit19.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit2.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit20.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit21.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit22.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit23.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit24.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit25.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit26.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit27.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit28.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit29.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit3.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit30.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit31.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit4.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit5.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit6.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit7.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit8.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit9.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame2_bit30.Q ;
 wire \Inst_S_EF_ADC12_ConfigMem.Inst_frame2_bit31.Q ;
 wire \Inst_S_EF_ADC12_switch_matrix.N1BEG0 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N1BEG1 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N1BEG2 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N1BEG3 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N2BEG0 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N2BEG1 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N2BEG2 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N2BEG3 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N2BEG4 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N2BEG5 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N2BEG6 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N2BEG7 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N2BEGb0 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N2BEGb1 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N2BEGb2 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N2BEGb3 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N2BEGb4 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N2BEGb5 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N2BEGb6 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N2BEGb7 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N4BEG0 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N4BEG1 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N4BEG10 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N4BEG11 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N4BEG12 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N4BEG13 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N4BEG14 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N4BEG15 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N4BEG2 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N4BEG3 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N4BEG4 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N4BEG5 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N4BEG6 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N4BEG7 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N4BEG8 ;
 wire \Inst_S_EF_ADC12_switch_matrix.N4BEG9 ;
 wire \Inst_S_EF_ADC12_switch_matrix.NN4BEG0 ;
 wire \Inst_S_EF_ADC12_switch_matrix.NN4BEG1 ;
 wire \Inst_S_EF_ADC12_switch_matrix.NN4BEG10 ;
 wire \Inst_S_EF_ADC12_switch_matrix.NN4BEG11 ;
 wire \Inst_S_EF_ADC12_switch_matrix.NN4BEG12 ;
 wire \Inst_S_EF_ADC12_switch_matrix.NN4BEG13 ;
 wire \Inst_S_EF_ADC12_switch_matrix.NN4BEG14 ;
 wire \Inst_S_EF_ADC12_switch_matrix.NN4BEG15 ;
 wire \Inst_S_EF_ADC12_switch_matrix.NN4BEG2 ;
 wire \Inst_S_EF_ADC12_switch_matrix.NN4BEG3 ;
 wire \Inst_S_EF_ADC12_switch_matrix.NN4BEG4 ;
 wire \Inst_S_EF_ADC12_switch_matrix.NN4BEG5 ;
 wire \Inst_S_EF_ADC12_switch_matrix.NN4BEG6 ;
 wire \Inst_S_EF_ADC12_switch_matrix.NN4BEG7 ;
 wire \Inst_S_EF_ADC12_switch_matrix.NN4BEG8 ;
 wire \Inst_S_EF_ADC12_switch_matrix.NN4BEG9 ;
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
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
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
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
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
 wire net218;
 wire clknet_0_UserCLK;
 wire clknet_1_0__leaf_UserCLK;
 wire clknet_0_UserCLK_regs;
 wire clknet_2_0__leaf_UserCLK_regs;
 wire clknet_2_1__leaf_UserCLK_regs;
 wire clknet_2_2__leaf_UserCLK_regs;
 wire clknet_2_3__leaf_UserCLK_regs;
 wire net219;
 wire net220;
 wire net221;
 wire net222;
 wire net223;
 wire net224;
 wire net225;
 wire net226;
 wire net227;
 wire net228;
 wire net229;
 wire net230;
 wire net231;
 wire net232;
 wire net233;
 wire net234;
 wire net235;
 wire net236;
 wire net237;

 sky130_fd_sc_hd__inv_2 _082_ (.A(net219),
    .Y(_006_));
 sky130_fd_sc_hd__inv_1 _083_ (.A(net236),
    .Y(_034_));
 sky130_fd_sc_hd__inv_2 _084_ (.A(net224),
    .Y(_035_));
 sky130_fd_sc_hd__inv_2 _085_ (.A(net222),
    .Y(_036_));
 sky130_fd_sc_hd__inv_2 _086_ (.A(\Inst_EF_ADC12.sample_counter[3] ),
    .Y(_037_));
 sky130_fd_sc_hd__inv_2 _087_ (.A(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit31.Q ),
    .Y(_038_));
 sky130_fd_sc_hd__inv_1 _088_ (.A(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit28.Q ),
    .Y(_039_));
 sky130_fd_sc_hd__mux2_1 _089_ (.A0(net77),
    .A1(net215),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit5.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N4BEG11 ));
 sky130_fd_sc_hd__mux2_1 _090_ (.A0(net78),
    .A1(net214),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit4.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N4BEG10 ));
 sky130_fd_sc_hd__mux2_1 _091_ (.A0(net79),
    .A1(net213),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit3.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N4BEG9 ));
 sky130_fd_sc_hd__mux2_1 _092_ (.A0(net80),
    .A1(net212),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit2.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N4BEG8 ));
 sky130_fd_sc_hd__mux2_1 _093_ (.A0(net81),
    .A1(net211),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit1.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N4BEG7 ));
 sky130_fd_sc_hd__mux2_1 _094_ (.A0(net82),
    .A1(net210),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit0.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N4BEG6 ));
 sky130_fd_sc_hd__mux2_1 _095_ (.A0(net68),
    .A1(net207),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit31.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N4BEG5 ));
 sky130_fd_sc_hd__mux2_1 _096_ (.A0(net69),
    .A1(net206),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit30.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N4BEG4 ));
 sky130_fd_sc_hd__mux2_1 _097_ (.A0(net70),
    .A1(\Inst_EF_ADC12.VALID ),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit29.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N4BEG3 ));
 sky130_fd_sc_hd__mux2_1 _098_ (.A0(net71),
    .A1(\Inst_EF_ADC12.VALID ),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit28.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N4BEG2 ));
 sky130_fd_sc_hd__mux2_1 _099_ (.A0(net72),
    .A1(\Inst_EF_ADC12.VALID ),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit27.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N4BEG1 ));
 sky130_fd_sc_hd__mux2_1 _100_ (.A0(net73),
    .A1(\Inst_EF_ADC12.VALID ),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit26.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N4BEG0 ));
 sky130_fd_sc_hd__mux2_1 _101_ (.A0(net51),
    .A1(net212),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit25.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N2BEGb7 ));
 sky130_fd_sc_hd__mux2_1 _102_ (.A0(net52),
    .A1(net213),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit24.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N2BEGb6 ));
 sky130_fd_sc_hd__mux2_1 _103_ (.A0(net53),
    .A1(net214),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit23.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N2BEGb5 ));
 sky130_fd_sc_hd__mux2_1 _104_ (.A0(net54),
    .A1(net215),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit22.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N2BEGb4 ));
 sky130_fd_sc_hd__mux2_1 _105_ (.A0(net55),
    .A1(net216),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit21.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N2BEGb3 ));
 sky130_fd_sc_hd__mux2_1 _106_ (.A0(net56),
    .A1(net217),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit20.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N2BEGb2 ));
 sky130_fd_sc_hd__mux2_1 _107_ (.A0(net57),
    .A1(net208),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit19.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N2BEGb1 ));
 sky130_fd_sc_hd__mux2_1 _108_ (.A0(net58),
    .A1(net209),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit18.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N2BEGb0 ));
 sky130_fd_sc_hd__mux2_1 _109_ (.A0(net59),
    .A1(net206),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit17.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N2BEG7 ));
 sky130_fd_sc_hd__mux2_1 _110_ (.A0(net60),
    .A1(net207),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit16.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N2BEG6 ));
 sky130_fd_sc_hd__mux2_1 _111_ (.A0(net61),
    .A1(net210),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit15.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N2BEG5 ));
 sky130_fd_sc_hd__mux2_1 _112_ (.A0(net62),
    .A1(net211),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit14.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N2BEG4 ));
 sky130_fd_sc_hd__mux2_1 _113_ (.A0(net63),
    .A1(net212),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit13.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N2BEG3 ));
 sky130_fd_sc_hd__mux2_1 _114_ (.A0(net64),
    .A1(net213),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit12.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N2BEG2 ));
 sky130_fd_sc_hd__mux2_1 _115_ (.A0(net65),
    .A1(net214),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit11.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N2BEG1 ));
 sky130_fd_sc_hd__mux2_1 _116_ (.A0(net66),
    .A1(net215),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit10.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N2BEG0 ));
 sky130_fd_sc_hd__mux4_1 _117_ (.A0(net47),
    .A1(net206),
    .A2(net212),
    .A3(net216),
    .S0(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit8.Q ),
    .S1(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit9.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N1BEG3 ));
 sky130_fd_sc_hd__mux4_1 _118_ (.A0(net48),
    .A1(net207),
    .A2(net213),
    .A3(net217),
    .S0(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit6.Q ),
    .S1(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit7.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N1BEG2 ));
 sky130_fd_sc_hd__mux4_1 _119_ (.A0(net49),
    .A1(net210),
    .A2(net214),
    .A3(net208),
    .S0(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit4.Q ),
    .S1(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit5.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N1BEG1 ));
 sky130_fd_sc_hd__mux4_1 _120_ (.A0(net50),
    .A1(net211),
    .A2(net215),
    .A3(net209),
    .S0(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit2.Q ),
    .S1(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit3.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N1BEG0 ));
 sky130_fd_sc_hd__mux4_1 _121_ (.A0(net58),
    .A1(net76),
    .A2(net90),
    .A3(net92),
    .S0(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit29.Q ),
    .S1(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit30.Q ),
    .X(_040_));
 sky130_fd_sc_hd__nand2b_1 _122_ (.A_N(net60),
    .B(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit29.Q ),
    .Y(_041_));
 sky130_fd_sc_hd__o21ba_1 _123_ (.A1(net48),
    .A2(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit29.Q ),
    .B1_N(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit30.Q ),
    .X(_042_));
 sky130_fd_sc_hd__mux2_1 _124_ (.A0(net62),
    .A1(net56),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit29.Q ),
    .X(_043_));
 sky130_fd_sc_hd__a221o_1 _125_ (.A1(_041_),
    .A2(_042_),
    .B1(_043_),
    .B2(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit30.Q ),
    .C1(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit31.Q ),
    .X(_044_));
 sky130_fd_sc_hd__o21ai_2 _126_ (.A1(_038_),
    .A2(_040_),
    .B1(_044_),
    .Y(_045_));
 sky130_fd_sc_hd__mux4_1 _127_ (.A0(net57),
    .A1(net75),
    .A2(net83),
    .A3(net91),
    .S0(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit26.Q ),
    .S1(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit27.Q ),
    .X(_046_));
 sky130_fd_sc_hd__nand2b_1 _128_ (.A_N(net59),
    .B(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit26.Q ),
    .Y(_047_));
 sky130_fd_sc_hd__o21ba_1 _129_ (.A1(net47),
    .A2(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit26.Q ),
    .B1_N(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit27.Q ),
    .X(_048_));
 sky130_fd_sc_hd__mux2_1 _130_ (.A0(net61),
    .A1(net55),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit26.Q ),
    .X(_049_));
 sky130_fd_sc_hd__a221o_1 _131_ (.A1(_047_),
    .A2(_048_),
    .B1(_049_),
    .B2(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit27.Q ),
    .C1(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit28.Q ),
    .X(_050_));
 sky130_fd_sc_hd__o21a_1 _132_ (.A1(_039_),
    .A2(_046_),
    .B1(_050_),
    .X(_051_));
 sky130_fd_sc_hd__and3_1 _133_ (.A(net224),
    .B(_045_),
    .C(_051_),
    .X(_000_));
 sky130_fd_sc_hd__or4_1 _134_ (.A(\Inst_EF_ADC12.next_bit[7] ),
    .B(\Inst_EF_ADC12.next_bit[8] ),
    .C(\Inst_EF_ADC12.next_bit[9] ),
    .D(\Inst_EF_ADC12.next_bit[10] ),
    .X(_052_));
 sky130_fd_sc_hd__or4_1 _135_ (.A(\Inst_EF_ADC12.next_bit[3] ),
    .B(\Inst_EF_ADC12.next_bit[4] ),
    .C(\Inst_EF_ADC12.next_bit[5] ),
    .D(\Inst_EF_ADC12.next_bit[6] ),
    .X(_053_));
 sky130_fd_sc_hd__or4b_1 _136_ (.A(\Inst_EF_ADC12.next_bit[0] ),
    .B(\Inst_EF_ADC12.next_bit[1] ),
    .C(\Inst_EF_ADC12.next_bit[2] ),
    .D_N(\Inst_EF_ADC12.shift_value[0] ),
    .X(_054_));
 sky130_fd_sc_hd__nor3_1 _137_ (.A(_052_),
    .B(_053_),
    .C(_054_),
    .Y(_055_));
 sky130_fd_sc_hd__and3_1 _138_ (.A(net35),
    .B(_045_),
    .C(_055_),
    .X(_001_));
 sky130_fd_sc_hd__xnor2_1 _139_ (.A(\Inst_EF_ADC12.sample_counter[0] ),
    .B(\Inst_S_EF_ADC12_ConfigMem.Inst_frame2_bit30.Q ),
    .Y(_056_));
 sky130_fd_sc_hd__xnor2_1 _140_ (.A(\Inst_EF_ADC12.sample_counter[2] ),
    .B(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit0.Q ),
    .Y(_057_));
 sky130_fd_sc_hd__xnor2_1 _141_ (.A(\Inst_EF_ADC12.sample_counter[3] ),
    .B(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit1.Q ),
    .Y(_058_));
 sky130_fd_sc_hd__xnor2_1 _142_ (.A(\Inst_EF_ADC12.sample_counter[1] ),
    .B(\Inst_S_EF_ADC12_ConfigMem.Inst_frame2_bit31.Q ),
    .Y(_059_));
 sky130_fd_sc_hd__and4_1 _143_ (.A(_056_),
    .B(_057_),
    .C(_058_),
    .D(_059_),
    .X(_060_));
 sky130_fd_sc_hd__and3_1 _144_ (.A(\Inst_EF_ADC12.curr_state[2] ),
    .B(_045_),
    .C(_060_),
    .X(_002_));
 sky130_fd_sc_hd__and2b_1 _145_ (.A_N(_060_),
    .B(\Inst_EF_ADC12.curr_state[2] ),
    .X(_061_));
 sky130_fd_sc_hd__o21a_1 _146_ (.A1(net221),
    .A2(_061_),
    .B1(_045_),
    .X(_005_));
 sky130_fd_sc_hd__o211ai_1 _147_ (.A1(_035_),
    .A2(_051_),
    .B1(_045_),
    .C1(_034_),
    .Y(_003_));
 sky130_fd_sc_hd__nor2_1 _148_ (.A(_006_),
    .B(_055_),
    .Y(_062_));
 sky130_fd_sc_hd__o21a_1 _149_ (.A1(net220),
    .A2(_062_),
    .B1(_045_),
    .X(_004_));
 sky130_fd_sc_hd__or2_1 _150_ (.A(\Inst_EF_ADC12.curr_state[2] ),
    .B(\Inst_EF_ADC12.curr_state[5] ),
    .X(net204));
 sky130_fd_sc_hd__nand2b_1 _151_ (.A_N(\Inst_EF_ADC12.curr_state[2] ),
    .B(\Inst_EF_ADC12.curr_state[3] ),
    .Y(net151));
 sky130_fd_sc_hd__mux2_1 _152_ (.A0(net83),
    .A1(\Inst_EF_ADC12.VALID ),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit25.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.NN4BEG15 ));
 sky130_fd_sc_hd__mux2_1 _153_ (.A0(net90),
    .A1(\Inst_EF_ADC12.VALID ),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit24.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.NN4BEG14 ));
 sky130_fd_sc_hd__mux2_1 _154_ (.A0(net91),
    .A1(\Inst_EF_ADC12.VALID ),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit23.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.NN4BEG13 ));
 sky130_fd_sc_hd__mux2_1 _155_ (.A0(net92),
    .A1(\Inst_EF_ADC12.VALID ),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit22.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.NN4BEG12 ));
 sky130_fd_sc_hd__mux2_1 _156_ (.A0(net93),
    .A1(net206),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit21.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.NN4BEG11 ));
 sky130_fd_sc_hd__mux2_1 _157_ (.A0(net94),
    .A1(net207),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit20.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.NN4BEG10 ));
 sky130_fd_sc_hd__mux2_1 _158_ (.A0(net95),
    .A1(net210),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit19.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.NN4BEG9 ));
 sky130_fd_sc_hd__mux2_1 _159_ (.A0(net96),
    .A1(net211),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit18.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.NN4BEG8 ));
 sky130_fd_sc_hd__mux2_1 _160_ (.A0(net97),
    .A1(net212),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit17.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.NN4BEG7 ));
 sky130_fd_sc_hd__mux2_1 _161_ (.A0(net98),
    .A1(net213),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit16.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.NN4BEG6 ));
 sky130_fd_sc_hd__mux2_1 _162_ (.A0(net84),
    .A1(net214),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit15.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.NN4BEG5 ));
 sky130_fd_sc_hd__mux2_1 _163_ (.A0(net85),
    .A1(net215),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit14.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.NN4BEG4 ));
 sky130_fd_sc_hd__mux2_1 _164_ (.A0(net86),
    .A1(net216),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit13.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.NN4BEG3 ));
 sky130_fd_sc_hd__mux2_1 _165_ (.A0(net87),
    .A1(net217),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit12.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.NN4BEG2 ));
 sky130_fd_sc_hd__mux2_1 _166_ (.A0(net88),
    .A1(net208),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit11.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.NN4BEG1 ));
 sky130_fd_sc_hd__mux2_1 _167_ (.A0(net89),
    .A1(net209),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit10.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.NN4BEG0 ));
 sky130_fd_sc_hd__mux2_1 _168_ (.A0(net67),
    .A1(net209),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit9.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N4BEG15 ));
 sky130_fd_sc_hd__mux2_1 _169_ (.A0(net74),
    .A1(net208),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit8.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N4BEG14 ));
 sky130_fd_sc_hd__mux2_1 _170_ (.A0(net75),
    .A1(net217),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit7.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N4BEG13 ));
 sky130_fd_sc_hd__mux2_1 _171_ (.A0(net76),
    .A1(net216),
    .S(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit6.Q ),
    .X(\Inst_S_EF_ADC12_switch_matrix.N4BEG12 ));
 sky130_fd_sc_hd__nor2_1 _172_ (.A(_006_),
    .B(_036_),
    .Y(_033_));
 sky130_fd_sc_hd__o31a_1 _173_ (.A1(_006_),
    .A2(net1),
    .A3(_036_),
    .B1(net209),
    .X(_063_));
 sky130_fd_sc_hd__o21a_1 _174_ (.A1(\Inst_EF_ADC12.curr_state[2] ),
    .A2(_063_),
    .B1(_035_),
    .X(_007_));
 sky130_fd_sc_hd__nor2_1 _175_ (.A(_006_),
    .B(net1),
    .Y(_064_));
 sky130_fd_sc_hd__nand2_1 _176_ (.A(net223),
    .B(net33),
    .Y(_065_));
 sky130_fd_sc_hd__nor2_1 _177_ (.A(net230),
    .B(\Inst_EF_ADC12.curr_state[2] ),
    .Y(_066_));
 sky130_fd_sc_hd__and2_1 _178_ (.A(net35),
    .B(net227),
    .X(_023_));
 sky130_fd_sc_hd__o211a_1 _179_ (.A1(net206),
    .A2(_023_),
    .B1(net34),
    .C1(_065_),
    .X(_008_));
 sky130_fd_sc_hd__nand2_1 _180_ (.A(net227),
    .B(net33),
    .Y(_067_));
 sky130_fd_sc_hd__and2_1 _181_ (.A(net35),
    .B(net234),
    .X(_024_));
 sky130_fd_sc_hd__o211a_1 _182_ (.A1(net207),
    .A2(_024_),
    .B1(_067_),
    .C1(net34),
    .X(_009_));
 sky130_fd_sc_hd__nand2_1 _183_ (.A(net234),
    .B(net33),
    .Y(_068_));
 sky130_fd_sc_hd__and2_1 _184_ (.A(net35),
    .B(net235),
    .X(_025_));
 sky130_fd_sc_hd__o211a_1 _185_ (.A1(net210),
    .A2(_025_),
    .B1(_068_),
    .C1(net34),
    .X(_010_));
 sky130_fd_sc_hd__nand2_1 _186_ (.A(net235),
    .B(net33),
    .Y(_069_));
 sky130_fd_sc_hd__and2_1 _187_ (.A(net35),
    .B(net233),
    .X(_026_));
 sky130_fd_sc_hd__o211a_1 _188_ (.A1(net211),
    .A2(_026_),
    .B1(_069_),
    .C1(net34),
    .X(_011_));
 sky130_fd_sc_hd__nand2_1 _189_ (.A(net233),
    .B(net33),
    .Y(_070_));
 sky130_fd_sc_hd__and2_1 _190_ (.A(net35),
    .B(net228),
    .X(_027_));
 sky130_fd_sc_hd__o211a_1 _191_ (.A1(net212),
    .A2(_027_),
    .B1(_070_),
    .C1(net34),
    .X(_012_));
 sky130_fd_sc_hd__nand2_1 _192_ (.A(net228),
    .B(net33),
    .Y(_071_));
 sky130_fd_sc_hd__and2_1 _193_ (.A(net35),
    .B(net231),
    .X(_028_));
 sky130_fd_sc_hd__o211a_1 _194_ (.A1(net213),
    .A2(_028_),
    .B1(_071_),
    .C1(net34),
    .X(_013_));
 sky130_fd_sc_hd__nand2_1 _195_ (.A(net231),
    .B(net33),
    .Y(_072_));
 sky130_fd_sc_hd__and2_1 _196_ (.A(net35),
    .B(net232),
    .X(_029_));
 sky130_fd_sc_hd__o211a_1 _197_ (.A1(net214),
    .A2(_029_),
    .B1(_072_),
    .C1(net34),
    .X(_014_));
 sky130_fd_sc_hd__nand2_1 _198_ (.A(net232),
    .B(net33),
    .Y(_073_));
 sky130_fd_sc_hd__and2_1 _199_ (.A(net219),
    .B(net225),
    .X(_030_));
 sky130_fd_sc_hd__o211a_1 _200_ (.A1(net215),
    .A2(_030_),
    .B1(_073_),
    .C1(net34),
    .X(_015_));
 sky130_fd_sc_hd__nand2_1 _201_ (.A(net225),
    .B(net33),
    .Y(_074_));
 sky130_fd_sc_hd__and2_1 _202_ (.A(net35),
    .B(net226),
    .X(_031_));
 sky130_fd_sc_hd__o211a_1 _203_ (.A1(net216),
    .A2(_031_),
    .B1(_074_),
    .C1(net34),
    .X(_016_));
 sky130_fd_sc_hd__nand2_1 _204_ (.A(net226),
    .B(net33),
    .Y(_075_));
 sky130_fd_sc_hd__and2_1 _205_ (.A(net35),
    .B(net229),
    .X(_032_));
 sky130_fd_sc_hd__o211a_1 _206_ (.A1(net217),
    .A2(_032_),
    .B1(_075_),
    .C1(net34),
    .X(_017_));
 sky130_fd_sc_hd__nand2_1 _207_ (.A(net229),
    .B(_064_),
    .Y(_076_));
 sky130_fd_sc_hd__o211a_1 _208_ (.A1(net208),
    .A2(_033_),
    .B1(_066_),
    .C1(_076_),
    .X(_018_));
 sky130_fd_sc_hd__and2b_1 _209_ (.A_N(\Inst_EF_ADC12.sample_counter[0] ),
    .B(\Inst_EF_ADC12.curr_state[2] ),
    .X(_019_));
 sky130_fd_sc_hd__a21boi_1 _210_ (.A1(\Inst_EF_ADC12.sample_counter[0] ),
    .A2(\Inst_EF_ADC12.sample_counter[1] ),
    .B1_N(\Inst_EF_ADC12.curr_state[2] ),
    .Y(_077_));
 sky130_fd_sc_hd__o21a_1 _211_ (.A1(\Inst_EF_ADC12.sample_counter[0] ),
    .A2(net237),
    .B1(_077_),
    .X(_020_));
 sky130_fd_sc_hd__a21o_1 _212_ (.A1(\Inst_EF_ADC12.sample_counter[0] ),
    .A2(\Inst_EF_ADC12.sample_counter[1] ),
    .B1(\Inst_EF_ADC12.sample_counter[2] ),
    .X(_078_));
 sky130_fd_sc_hd__nand3_1 _213_ (.A(\Inst_EF_ADC12.sample_counter[0] ),
    .B(\Inst_EF_ADC12.sample_counter[1] ),
    .C(\Inst_EF_ADC12.sample_counter[2] ),
    .Y(_079_));
 sky130_fd_sc_hd__and3_1 _214_ (.A(\Inst_EF_ADC12.curr_state[2] ),
    .B(_078_),
    .C(_079_),
    .X(_021_));
 sky130_fd_sc_hd__or2_1 _215_ (.A(_037_),
    .B(_079_),
    .X(_080_));
 sky130_fd_sc_hd__nand2_1 _216_ (.A(_037_),
    .B(_079_),
    .Y(_081_));
 sky130_fd_sc_hd__and3_1 _217_ (.A(\Inst_EF_ADC12.curr_state[2] ),
    .B(_080_),
    .C(_081_),
    .X(_022_));
 sky130_fd_sc_hd__dfxtp_1 _218_ (.CLK(clknet_2_3__leaf_UserCLK_regs),
    .D(_007_),
    .Q(net209));
 sky130_fd_sc_hd__dfxtp_1 _219_ (.CLK(clknet_2_3__leaf_UserCLK_regs),
    .D(_003_),
    .Q(\Inst_EF_ADC12.curr_state[0] ));
 sky130_fd_sc_hd__dfxtp_1 _220_ (.CLK(clknet_2_3__leaf_UserCLK_regs),
    .D(_004_),
    .Q(\Inst_EF_ADC12.curr_state[1] ));
 sky130_fd_sc_hd__dfxtp_1 _221_ (.CLK(clknet_2_3__leaf_UserCLK_regs),
    .D(_005_),
    .Q(\Inst_EF_ADC12.curr_state[2] ));
 sky130_fd_sc_hd__dfxtp_1 _222_ (.CLK(clknet_2_3__leaf_UserCLK_regs),
    .D(_000_),
    .Q(\Inst_EF_ADC12.curr_state[3] ));
 sky130_fd_sc_hd__dfxtp_2 _223_ (.CLK(clknet_2_3__leaf_UserCLK_regs),
    .D(_001_),
    .Q(\Inst_EF_ADC12.VALID ));
 sky130_fd_sc_hd__dfxtp_1 _224_ (.CLK(clknet_2_2__leaf_UserCLK_regs),
    .D(_002_),
    .Q(\Inst_EF_ADC12.curr_state[5] ));
 sky130_fd_sc_hd__dlxtp_1 _225_ (.D(net25),
    .GATE(net46),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame2_bit30.Q ));
 sky130_fd_sc_hd__dlxtp_1 _226_ (.D(net26),
    .GATE(net46),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame2_bit31.Q ));
 sky130_fd_sc_hd__dlxtp_1 _227_ (.D(net2),
    .GATE(net39),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit0.Q ));
 sky130_fd_sc_hd__dlxtp_1 _228_ (.D(net13),
    .GATE(net39),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit1.Q ));
 sky130_fd_sc_hd__dlxtp_1 _229_ (.D(net24),
    .GATE(net38),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit2.Q ));
 sky130_fd_sc_hd__dlxtp_1 _230_ (.D(net27),
    .GATE(net38),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit3.Q ));
 sky130_fd_sc_hd__dlxtp_1 _231_ (.D(net28),
    .GATE(net36),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit4.Q ));
 sky130_fd_sc_hd__dlxtp_1 _232_ (.D(net29),
    .GATE(net38),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit5.Q ));
 sky130_fd_sc_hd__dlxtp_1 _233_ (.D(net30),
    .GATE(net38),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit6.Q ));
 sky130_fd_sc_hd__dlxtp_1 _234_ (.D(net31),
    .GATE(net38),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit7.Q ));
 sky130_fd_sc_hd__dlxtp_1 _235_ (.D(net32),
    .GATE(net38),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit8.Q ));
 sky130_fd_sc_hd__dlxtp_1 _236_ (.D(net44),
    .GATE(net38),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit9.Q ));
 sky130_fd_sc_hd__dlxtp_1 _237_ (.D(net3),
    .GATE(net36),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit10.Q ));
 sky130_fd_sc_hd__dlxtp_1 _238_ (.D(net4),
    .GATE(net36),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit11.Q ));
 sky130_fd_sc_hd__dlxtp_1 _239_ (.D(net5),
    .GATE(net36),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit12.Q ));
 sky130_fd_sc_hd__dlxtp_1 _240_ (.D(net6),
    .GATE(net36),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit13.Q ));
 sky130_fd_sc_hd__dlxtp_1 _241_ (.D(net7),
    .GATE(net36),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit14.Q ));
 sky130_fd_sc_hd__dlxtp_1 _242_ (.D(net8),
    .GATE(net36),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit15.Q ));
 sky130_fd_sc_hd__dlxtp_1 _243_ (.D(net9),
    .GATE(net36),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit16.Q ));
 sky130_fd_sc_hd__dlxtp_1 _244_ (.D(net10),
    .GATE(net36),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit17.Q ));
 sky130_fd_sc_hd__dlxtp_1 _245_ (.D(net11),
    .GATE(net37),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit18.Q ));
 sky130_fd_sc_hd__dlxtp_1 _246_ (.D(net12),
    .GATE(net36),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit19.Q ));
 sky130_fd_sc_hd__dlxtp_1 _247_ (.D(net14),
    .GATE(net39),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit20.Q ));
 sky130_fd_sc_hd__dlxtp_1 _248_ (.D(net15),
    .GATE(net37),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit21.Q ));
 sky130_fd_sc_hd__dlxtp_1 _249_ (.D(net16),
    .GATE(net39),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit22.Q ));
 sky130_fd_sc_hd__dlxtp_1 _250_ (.D(net17),
    .GATE(net37),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit23.Q ));
 sky130_fd_sc_hd__dlxtp_1 _251_ (.D(net18),
    .GATE(net37),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit24.Q ));
 sky130_fd_sc_hd__dlxtp_1 _252_ (.D(net19),
    .GATE(net37),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit25.Q ));
 sky130_fd_sc_hd__dlxtp_1 _253_ (.D(net20),
    .GATE(net39),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit26.Q ));
 sky130_fd_sc_hd__dlxtp_1 _254_ (.D(net21),
    .GATE(net39),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit27.Q ));
 sky130_fd_sc_hd__dlxtp_1 _255_ (.D(net22),
    .GATE(net39),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit28.Q ));
 sky130_fd_sc_hd__dlxtp_1 _256_ (.D(net23),
    .GATE(net39),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit29.Q ));
 sky130_fd_sc_hd__dlxtp_1 _257_ (.D(net25),
    .GATE(net45),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit30.Q ));
 sky130_fd_sc_hd__dlxtp_1 _258_ (.D(net26),
    .GATE(net45),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame1_bit31.Q ));
 sky130_fd_sc_hd__dlxtp_1 _259_ (.D(net2),
    .GATE(net41),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit0.Q ));
 sky130_fd_sc_hd__dlxtp_1 _260_ (.D(net13),
    .GATE(net41),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit1.Q ));
 sky130_fd_sc_hd__dlxtp_1 _261_ (.D(net24),
    .GATE(net41),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit2.Q ));
 sky130_fd_sc_hd__dlxtp_1 _262_ (.D(net27),
    .GATE(net41),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit3.Q ));
 sky130_fd_sc_hd__dlxtp_1 _263_ (.D(net28),
    .GATE(net40),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit4.Q ));
 sky130_fd_sc_hd__dlxtp_1 _264_ (.D(net29),
    .GATE(net41),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit5.Q ));
 sky130_fd_sc_hd__dlxtp_1 _265_ (.D(net30),
    .GATE(net43),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit6.Q ));
 sky130_fd_sc_hd__dlxtp_1 _266_ (.D(net31),
    .GATE(net43),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit7.Q ));
 sky130_fd_sc_hd__dlxtp_1 _267_ (.D(net32),
    .GATE(net40),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit8.Q ));
 sky130_fd_sc_hd__dlxtp_1 _268_ (.D(net44),
    .GATE(net40),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit9.Q ));
 sky130_fd_sc_hd__dlxtp_1 _269_ (.D(net3),
    .GATE(net40),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit10.Q ));
 sky130_fd_sc_hd__dlxtp_1 _270_ (.D(net4),
    .GATE(net40),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit11.Q ));
 sky130_fd_sc_hd__dlxtp_1 _271_ (.D(net5),
    .GATE(net40),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit12.Q ));
 sky130_fd_sc_hd__dlxtp_1 _272_ (.D(net6),
    .GATE(net40),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit13.Q ));
 sky130_fd_sc_hd__dlxtp_1 _273_ (.D(net7),
    .GATE(net42),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit14.Q ));
 sky130_fd_sc_hd__dlxtp_1 _274_ (.D(net8),
    .GATE(net40),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit15.Q ));
 sky130_fd_sc_hd__dlxtp_1 _275_ (.D(net9),
    .GATE(net42),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit16.Q ));
 sky130_fd_sc_hd__dlxtp_1 _276_ (.D(net10),
    .GATE(net41),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit17.Q ));
 sky130_fd_sc_hd__dlxtp_1 _277_ (.D(net11),
    .GATE(net42),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit18.Q ));
 sky130_fd_sc_hd__dlxtp_1 _278_ (.D(net12),
    .GATE(net41),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit19.Q ));
 sky130_fd_sc_hd__dlxtp_1 _279_ (.D(net14),
    .GATE(net42),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit20.Q ));
 sky130_fd_sc_hd__dlxtp_1 _280_ (.D(net15),
    .GATE(net42),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit21.Q ));
 sky130_fd_sc_hd__dlxtp_1 _281_ (.D(net16),
    .GATE(net42),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit22.Q ));
 sky130_fd_sc_hd__dlxtp_1 _282_ (.D(net17),
    .GATE(net42),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit23.Q ));
 sky130_fd_sc_hd__dlxtp_1 _283_ (.D(net18),
    .GATE(net42),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit24.Q ));
 sky130_fd_sc_hd__dlxtp_1 _284_ (.D(net19),
    .GATE(net42),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit25.Q ));
 sky130_fd_sc_hd__dlxtp_1 _285_ (.D(net20),
    .GATE(net43),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit26.Q ));
 sky130_fd_sc_hd__dlxtp_1 _286_ (.D(net21),
    .GATE(net40),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit27.Q ));
 sky130_fd_sc_hd__dlxtp_1 _287_ (.D(net22),
    .GATE(net40),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit28.Q ));
 sky130_fd_sc_hd__dlxtp_1 _288_ (.D(net23),
    .GATE(net41),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit29.Q ));
 sky130_fd_sc_hd__dlxtp_1 _289_ (.D(net25),
    .GATE(net41),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit30.Q ));
 sky130_fd_sc_hd__dlxtp_1 _290_ (.D(net26),
    .GATE(net41),
    .Q(\Inst_S_EF_ADC12_ConfigMem.Inst_frame0_bit31.Q ));
 sky130_fd_sc_hd__dfxtp_1 _291_ (.CLK(clknet_2_3__leaf_UserCLK_regs),
    .D(_006_),
    .Q(\Inst_EF_ADC12.next_bit[10] ));
 sky130_fd_sc_hd__dfxtp_2 _292_ (.CLK(clknet_2_2__leaf_UserCLK_regs),
    .D(_008_),
    .Q(net206));
 sky130_fd_sc_hd__dfxtp_2 _293_ (.CLK(clknet_2_2__leaf_UserCLK_regs),
    .D(_009_),
    .Q(net207));
 sky130_fd_sc_hd__dfxtp_2 _294_ (.CLK(clknet_2_2__leaf_UserCLK_regs),
    .D(_010_),
    .Q(net210));
 sky130_fd_sc_hd__dfxtp_2 _295_ (.CLK(clknet_2_0__leaf_UserCLK_regs),
    .D(_011_),
    .Q(net211));
 sky130_fd_sc_hd__dfxtp_2 _296_ (.CLK(clknet_2_1__leaf_UserCLK_regs),
    .D(_012_),
    .Q(net212));
 sky130_fd_sc_hd__dfxtp_2 _297_ (.CLK(clknet_2_1__leaf_UserCLK_regs),
    .D(_013_),
    .Q(net213));
 sky130_fd_sc_hd__dfxtp_2 _298_ (.CLK(clknet_2_1__leaf_UserCLK_regs),
    .D(_014_),
    .Q(net214));
 sky130_fd_sc_hd__dfxtp_2 _299_ (.CLK(clknet_2_0__leaf_UserCLK_regs),
    .D(_015_),
    .Q(net215));
 sky130_fd_sc_hd__dfxtp_1 _300_ (.CLK(clknet_2_1__leaf_UserCLK_regs),
    .D(_016_),
    .Q(net216));
 sky130_fd_sc_hd__dfxtp_2 _301_ (.CLK(clknet_2_1__leaf_UserCLK_regs),
    .D(_017_),
    .Q(net217));
 sky130_fd_sc_hd__dfxtp_1 _302_ (.CLK(clknet_2_3__leaf_UserCLK_regs),
    .D(_018_),
    .Q(net208));
 sky130_fd_sc_hd__dfxtp_1 _303_ (.CLK(clknet_2_2__leaf_UserCLK_regs),
    .D(_019_),
    .Q(\Inst_EF_ADC12.sample_counter[0] ));
 sky130_fd_sc_hd__dfxtp_1 _304_ (.CLK(clknet_2_2__leaf_UserCLK_regs),
    .D(_020_),
    .Q(\Inst_EF_ADC12.sample_counter[1] ));
 sky130_fd_sc_hd__dfxtp_1 _305_ (.CLK(clknet_2_2__leaf_UserCLK_regs),
    .D(_021_),
    .Q(\Inst_EF_ADC12.sample_counter[2] ));
 sky130_fd_sc_hd__dfxtp_1 _306_ (.CLK(clknet_2_2__leaf_UserCLK_regs),
    .D(_022_),
    .Q(\Inst_EF_ADC12.sample_counter[3] ));
 sky130_fd_sc_hd__dfxtp_1 _307_ (.CLK(clknet_2_2__leaf_UserCLK_regs),
    .D(_023_),
    .Q(\Inst_EF_ADC12.shift_value[0] ));
 sky130_fd_sc_hd__dfxtp_1 _308_ (.CLK(clknet_2_0__leaf_UserCLK_regs),
    .D(_024_),
    .Q(\Inst_EF_ADC12.next_bit[0] ));
 sky130_fd_sc_hd__dfxtp_1 _309_ (.CLK(clknet_2_0__leaf_UserCLK_regs),
    .D(_025_),
    .Q(\Inst_EF_ADC12.next_bit[1] ));
 sky130_fd_sc_hd__dfxtp_1 _310_ (.CLK(clknet_2_0__leaf_UserCLK_regs),
    .D(_026_),
    .Q(\Inst_EF_ADC12.next_bit[2] ));
 sky130_fd_sc_hd__dfxtp_1 _311_ (.CLK(clknet_2_0__leaf_UserCLK_regs),
    .D(_027_),
    .Q(\Inst_EF_ADC12.next_bit[3] ));
 sky130_fd_sc_hd__dfxtp_1 _312_ (.CLK(clknet_2_1__leaf_UserCLK_regs),
    .D(_028_),
    .Q(\Inst_EF_ADC12.next_bit[4] ));
 sky130_fd_sc_hd__dfxtp_1 _313_ (.CLK(clknet_2_1__leaf_UserCLK_regs),
    .D(_029_),
    .Q(\Inst_EF_ADC12.next_bit[5] ));
 sky130_fd_sc_hd__dfxtp_1 _314_ (.CLK(clknet_2_0__leaf_UserCLK_regs),
    .D(_030_),
    .Q(\Inst_EF_ADC12.next_bit[6] ));
 sky130_fd_sc_hd__dfxtp_1 _315_ (.CLK(clknet_2_1__leaf_UserCLK_regs),
    .D(_031_),
    .Q(\Inst_EF_ADC12.next_bit[7] ));
 sky130_fd_sc_hd__dfxtp_1 _316_ (.CLK(clknet_2_1__leaf_UserCLK_regs),
    .D(_032_),
    .Q(\Inst_EF_ADC12.next_bit[8] ));
 sky130_fd_sc_hd__dfxtp_1 _317_ (.CLK(clknet_2_3__leaf_UserCLK_regs),
    .D(_033_),
    .Q(\Inst_EF_ADC12.next_bit[9] ));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_regs_0_UserCLK (.A(UserCLK),
    .X(UserCLK_regs));
 sky130_fd_sc_hd__buf_1 _319_ (.A(net2),
    .X(net99));
 sky130_fd_sc_hd__buf_1 _320_ (.A(net13),
    .X(net110));
 sky130_fd_sc_hd__buf_1 _321_ (.A(net24),
    .X(net121));
 sky130_fd_sc_hd__buf_1 _322_ (.A(net27),
    .X(net124));
 sky130_fd_sc_hd__clkbuf_2 _323_ (.A(net28),
    .X(net125));
 sky130_fd_sc_hd__buf_1 _324_ (.A(net29),
    .X(net126));
 sky130_fd_sc_hd__buf_1 _325_ (.A(net30),
    .X(net127));
 sky130_fd_sc_hd__buf_1 _326_ (.A(net31),
    .X(net128));
 sky130_fd_sc_hd__clkbuf_2 _327_ (.A(net32),
    .X(net129));
 sky130_fd_sc_hd__buf_1 _328_ (.A(net44),
    .X(net130));
 sky130_fd_sc_hd__clkbuf_2 _329_ (.A(net3),
    .X(net100));
 sky130_fd_sc_hd__clkbuf_2 _330_ (.A(net4),
    .X(net101));
 sky130_fd_sc_hd__clkbuf_2 _331_ (.A(net5),
    .X(net102));
 sky130_fd_sc_hd__clkbuf_2 _332_ (.A(net6),
    .X(net103));
 sky130_fd_sc_hd__clkbuf_1 _333_ (.A(net7),
    .X(net104));
 sky130_fd_sc_hd__buf_1 _334_ (.A(net8),
    .X(net105));
 sky130_fd_sc_hd__clkbuf_1 _335_ (.A(net9),
    .X(net106));
 sky130_fd_sc_hd__buf_1 _336_ (.A(net10),
    .X(net107));
 sky130_fd_sc_hd__clkbuf_1 _337_ (.A(net11),
    .X(net108));
 sky130_fd_sc_hd__buf_1 _338_ (.A(net12),
    .X(net109));
 sky130_fd_sc_hd__clkbuf_1 _339_ (.A(net14),
    .X(net111));
 sky130_fd_sc_hd__buf_1 _340_ (.A(net15),
    .X(net112));
 sky130_fd_sc_hd__clkbuf_1 _341_ (.A(net16),
    .X(net113));
 sky130_fd_sc_hd__buf_1 _342_ (.A(net17),
    .X(net114));
 sky130_fd_sc_hd__clkbuf_1 _343_ (.A(net18),
    .X(net115));
 sky130_fd_sc_hd__buf_1 _344_ (.A(net19),
    .X(net116));
 sky130_fd_sc_hd__buf_1 _345_ (.A(net20),
    .X(net117));
 sky130_fd_sc_hd__buf_1 _346_ (.A(net21),
    .X(net118));
 sky130_fd_sc_hd__buf_1 _347_ (.A(net22),
    .X(net119));
 sky130_fd_sc_hd__clkbuf_1 _348_ (.A(net23),
    .X(net120));
 sky130_fd_sc_hd__buf_1 _349_ (.A(net25),
    .X(net122));
 sky130_fd_sc_hd__buf_1 _350_ (.A(net26),
    .X(net123));
 sky130_fd_sc_hd__clkbuf_1 _351_ (.A(net42),
    .X(net131));
 sky130_fd_sc_hd__clkbuf_1 _352_ (.A(net39),
    .X(net142));
 sky130_fd_sc_hd__clkbuf_1 _353_ (.A(net46),
    .X(net143));
 sky130_fd_sc_hd__buf_1 _354_ (.A(FrameStrobe[3]),
    .X(net144));
 sky130_fd_sc_hd__buf_1 _355_ (.A(FrameStrobe[4]),
    .X(net145));
 sky130_fd_sc_hd__buf_1 _356_ (.A(FrameStrobe[5]),
    .X(net146));
 sky130_fd_sc_hd__clkbuf_1 _357_ (.A(FrameStrobe[6]),
    .X(net147));
 sky130_fd_sc_hd__clkbuf_1 _358_ (.A(FrameStrobe[7]),
    .X(net148));
 sky130_fd_sc_hd__clkbuf_1 _359_ (.A(FrameStrobe[8]),
    .X(net149));
 sky130_fd_sc_hd__clkbuf_1 _360_ (.A(FrameStrobe[9]),
    .X(net150));
 sky130_fd_sc_hd__clkbuf_1 _361_ (.A(FrameStrobe[10]),
    .X(net132));
 sky130_fd_sc_hd__clkbuf_1 _362_ (.A(FrameStrobe[11]),
    .X(net133));
 sky130_fd_sc_hd__clkbuf_1 _363_ (.A(FrameStrobe[12]),
    .X(net134));
 sky130_fd_sc_hd__clkbuf_1 _364_ (.A(FrameStrobe[13]),
    .X(net135));
 sky130_fd_sc_hd__clkbuf_1 _365_ (.A(FrameStrobe[14]),
    .X(net136));
 sky130_fd_sc_hd__clkbuf_1 _366_ (.A(FrameStrobe[15]),
    .X(net137));
 sky130_fd_sc_hd__clkbuf_1 _367_ (.A(FrameStrobe[16]),
    .X(net138));
 sky130_fd_sc_hd__clkbuf_1 _368_ (.A(FrameStrobe[17]),
    .X(net139));
 sky130_fd_sc_hd__clkbuf_1 _369_ (.A(FrameStrobe[18]),
    .X(net140));
 sky130_fd_sc_hd__clkbuf_1 _370_ (.A(FrameStrobe[19]),
    .X(net141));
 sky130_fd_sc_hd__buf_1 _371_ (.A(\Inst_S_EF_ADC12_switch_matrix.N1BEG0 ),
    .X(net152));
 sky130_fd_sc_hd__clkbuf_1 _372_ (.A(\Inst_S_EF_ADC12_switch_matrix.N1BEG1 ),
    .X(net153));
 sky130_fd_sc_hd__buf_1 _373_ (.A(\Inst_S_EF_ADC12_switch_matrix.N1BEG2 ),
    .X(net154));
 sky130_fd_sc_hd__clkbuf_1 _374_ (.A(\Inst_S_EF_ADC12_switch_matrix.N1BEG3 ),
    .X(net155));
 sky130_fd_sc_hd__clkbuf_1 _375_ (.A(\Inst_S_EF_ADC12_switch_matrix.N2BEG0 ),
    .X(net156));
 sky130_fd_sc_hd__clkbuf_1 _376_ (.A(\Inst_S_EF_ADC12_switch_matrix.N2BEG1 ),
    .X(net157));
 sky130_fd_sc_hd__clkbuf_1 _377_ (.A(\Inst_S_EF_ADC12_switch_matrix.N2BEG2 ),
    .X(net158));
 sky130_fd_sc_hd__clkbuf_1 _378_ (.A(\Inst_S_EF_ADC12_switch_matrix.N2BEG3 ),
    .X(net159));
 sky130_fd_sc_hd__buf_1 _379_ (.A(\Inst_S_EF_ADC12_switch_matrix.N2BEG4 ),
    .X(net160));
 sky130_fd_sc_hd__buf_1 _380_ (.A(\Inst_S_EF_ADC12_switch_matrix.N2BEG5 ),
    .X(net161));
 sky130_fd_sc_hd__buf_1 _381_ (.A(\Inst_S_EF_ADC12_switch_matrix.N2BEG6 ),
    .X(net162));
 sky130_fd_sc_hd__clkbuf_1 _382_ (.A(\Inst_S_EF_ADC12_switch_matrix.N2BEG7 ),
    .X(net163));
 sky130_fd_sc_hd__buf_1 _383_ (.A(\Inst_S_EF_ADC12_switch_matrix.N2BEGb0 ),
    .X(net164));
 sky130_fd_sc_hd__clkbuf_1 _384_ (.A(\Inst_S_EF_ADC12_switch_matrix.N2BEGb1 ),
    .X(net165));
 sky130_fd_sc_hd__buf_1 _385_ (.A(\Inst_S_EF_ADC12_switch_matrix.N2BEGb2 ),
    .X(net166));
 sky130_fd_sc_hd__buf_1 _386_ (.A(\Inst_S_EF_ADC12_switch_matrix.N2BEGb3 ),
    .X(net167));
 sky130_fd_sc_hd__buf_1 _387_ (.A(\Inst_S_EF_ADC12_switch_matrix.N2BEGb4 ),
    .X(net168));
 sky130_fd_sc_hd__clkbuf_1 _388_ (.A(\Inst_S_EF_ADC12_switch_matrix.N2BEGb5 ),
    .X(net169));
 sky130_fd_sc_hd__buf_1 _389_ (.A(\Inst_S_EF_ADC12_switch_matrix.N2BEGb6 ),
    .X(net170));
 sky130_fd_sc_hd__clkbuf_1 _390_ (.A(\Inst_S_EF_ADC12_switch_matrix.N2BEGb7 ),
    .X(net171));
 sky130_fd_sc_hd__buf_1 _391_ (.A(\Inst_S_EF_ADC12_switch_matrix.N4BEG0 ),
    .X(net172));
 sky130_fd_sc_hd__buf_1 _392_ (.A(\Inst_S_EF_ADC12_switch_matrix.N4BEG1 ),
    .X(net179));
 sky130_fd_sc_hd__clkbuf_1 _393_ (.A(\Inst_S_EF_ADC12_switch_matrix.N4BEG2 ),
    .X(net180));
 sky130_fd_sc_hd__buf_1 _394_ (.A(\Inst_S_EF_ADC12_switch_matrix.N4BEG3 ),
    .X(net181));
 sky130_fd_sc_hd__buf_1 _395_ (.A(\Inst_S_EF_ADC12_switch_matrix.N4BEG4 ),
    .X(net182));
 sky130_fd_sc_hd__buf_1 _396_ (.A(\Inst_S_EF_ADC12_switch_matrix.N4BEG5 ),
    .X(net183));
 sky130_fd_sc_hd__buf_1 _397_ (.A(\Inst_S_EF_ADC12_switch_matrix.N4BEG6 ),
    .X(net184));
 sky130_fd_sc_hd__clkbuf_1 _398_ (.A(\Inst_S_EF_ADC12_switch_matrix.N4BEG7 ),
    .X(net185));
 sky130_fd_sc_hd__buf_1 _399_ (.A(\Inst_S_EF_ADC12_switch_matrix.N4BEG8 ),
    .X(net186));
 sky130_fd_sc_hd__buf_1 _400_ (.A(\Inst_S_EF_ADC12_switch_matrix.N4BEG9 ),
    .X(net187));
 sky130_fd_sc_hd__clkbuf_1 _401_ (.A(\Inst_S_EF_ADC12_switch_matrix.N4BEG10 ),
    .X(net173));
 sky130_fd_sc_hd__buf_1 _402_ (.A(\Inst_S_EF_ADC12_switch_matrix.N4BEG11 ),
    .X(net174));
 sky130_fd_sc_hd__buf_1 _403_ (.A(\Inst_S_EF_ADC12_switch_matrix.N4BEG12 ),
    .X(net175));
 sky130_fd_sc_hd__clkbuf_1 _404_ (.A(\Inst_S_EF_ADC12_switch_matrix.N4BEG13 ),
    .X(net176));
 sky130_fd_sc_hd__clkbuf_1 _405_ (.A(\Inst_S_EF_ADC12_switch_matrix.N4BEG14 ),
    .X(net177));
 sky130_fd_sc_hd__clkbuf_1 _406_ (.A(\Inst_S_EF_ADC12_switch_matrix.N4BEG15 ),
    .X(net178));
 sky130_fd_sc_hd__clkbuf_1 _407_ (.A(\Inst_S_EF_ADC12_switch_matrix.NN4BEG0 ),
    .X(net188));
 sky130_fd_sc_hd__clkbuf_1 _408_ (.A(\Inst_S_EF_ADC12_switch_matrix.NN4BEG1 ),
    .X(net195));
 sky130_fd_sc_hd__clkbuf_1 _409_ (.A(\Inst_S_EF_ADC12_switch_matrix.NN4BEG2 ),
    .X(net196));
 sky130_fd_sc_hd__clkbuf_1 _410_ (.A(\Inst_S_EF_ADC12_switch_matrix.NN4BEG3 ),
    .X(net197));
 sky130_fd_sc_hd__buf_1 _411_ (.A(\Inst_S_EF_ADC12_switch_matrix.NN4BEG4 ),
    .X(net198));
 sky130_fd_sc_hd__clkbuf_1 _412_ (.A(\Inst_S_EF_ADC12_switch_matrix.NN4BEG5 ),
    .X(net199));
 sky130_fd_sc_hd__buf_1 _413_ (.A(\Inst_S_EF_ADC12_switch_matrix.NN4BEG6 ),
    .X(net200));
 sky130_fd_sc_hd__clkbuf_1 _414_ (.A(\Inst_S_EF_ADC12_switch_matrix.NN4BEG7 ),
    .X(net201));
 sky130_fd_sc_hd__buf_1 _415_ (.A(\Inst_S_EF_ADC12_switch_matrix.NN4BEG8 ),
    .X(net202));
 sky130_fd_sc_hd__clkbuf_1 _416_ (.A(\Inst_S_EF_ADC12_switch_matrix.NN4BEG9 ),
    .X(net203));
 sky130_fd_sc_hd__buf_1 _417_ (.A(\Inst_S_EF_ADC12_switch_matrix.NN4BEG10 ),
    .X(net189));
 sky130_fd_sc_hd__buf_1 _418_ (.A(\Inst_S_EF_ADC12_switch_matrix.NN4BEG11 ),
    .X(net190));
 sky130_fd_sc_hd__buf_1 _419_ (.A(\Inst_S_EF_ADC12_switch_matrix.NN4BEG12 ),
    .X(net191));
 sky130_fd_sc_hd__clkbuf_1 _420_ (.A(\Inst_S_EF_ADC12_switch_matrix.NN4BEG13 ),
    .X(net192));
 sky130_fd_sc_hd__buf_1 _421_ (.A(\Inst_S_EF_ADC12_switch_matrix.NN4BEG14 ),
    .X(net193));
 sky130_fd_sc_hd__clkbuf_1 _422_ (.A(\Inst_S_EF_ADC12_switch_matrix.NN4BEG15 ),
    .X(net194));
 sky130_fd_sc_hd__buf_2 _423_ (.A(clknet_1_0__leaf_UserCLK),
    .X(net205));
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
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_73 ();
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
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_139 ();
 sky130_fd_sc_hd__buf_2 fanout33 (.A(_064_),
    .X(net33));
 sky130_fd_sc_hd__buf_2 fanout34 (.A(_066_),
    .X(net34));
 sky130_fd_sc_hd__clkbuf_2 fanout35 (.A(\Inst_EF_ADC12.curr_state[1] ),
    .X(net35));
 sky130_fd_sc_hd__buf_2 fanout36 (.A(net37),
    .X(net36));
 sky130_fd_sc_hd__dlymetal6s2s_1 fanout37 (.A(net38),
    .X(net37));
 sky130_fd_sc_hd__clkbuf_2 fanout38 (.A(net39),
    .X(net38));
 sky130_fd_sc_hd__buf_2 fanout39 (.A(net45),
    .X(net39));
 sky130_fd_sc_hd__buf_2 fanout40 (.A(net43),
    .X(net40));
 sky130_fd_sc_hd__buf_2 fanout41 (.A(net43),
    .X(net41));
 sky130_fd_sc_hd__buf_2 fanout42 (.A(net43),
    .X(net42));
 sky130_fd_sc_hd__clkbuf_2 fanout43 (.A(FrameStrobe[0]),
    .X(net43));
 sky130_fd_sc_hd__buf_1 input1 (.A(CMP_top),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input2 (.A(FrameData[0]),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(FrameData[10]),
    .X(net3));
 sky130_fd_sc_hd__buf_1 input4 (.A(FrameData[11]),
    .X(net4));
 sky130_fd_sc_hd__buf_1 input5 (.A(FrameData[12]),
    .X(net5));
 sky130_fd_sc_hd__buf_1 input6 (.A(FrameData[13]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_2 input7 (.A(FrameData[14]),
    .X(net7));
 sky130_fd_sc_hd__buf_1 input8 (.A(FrameData[15]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_2 input9 (.A(FrameData[16]),
    .X(net9));
 sky130_fd_sc_hd__buf_1 input10 (.A(FrameData[17]),
    .X(net10));
 sky130_fd_sc_hd__dlymetal6s2s_1 input11 (.A(FrameData[18]),
    .X(net11));
 sky130_fd_sc_hd__buf_1 input12 (.A(FrameData[19]),
    .X(net12));
 sky130_fd_sc_hd__buf_1 input13 (.A(FrameData[1]),
    .X(net13));
 sky130_fd_sc_hd__dlymetal6s2s_1 input14 (.A(FrameData[20]),
    .X(net14));
 sky130_fd_sc_hd__buf_1 input15 (.A(FrameData[21]),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_2 input16 (.A(FrameData[22]),
    .X(net16));
 sky130_fd_sc_hd__buf_1 input17 (.A(FrameData[23]),
    .X(net17));
 sky130_fd_sc_hd__dlymetal6s2s_1 input18 (.A(FrameData[24]),
    .X(net18));
 sky130_fd_sc_hd__buf_1 input19 (.A(FrameData[25]),
    .X(net19));
 sky130_fd_sc_hd__buf_1 input20 (.A(FrameData[26]),
    .X(net20));
 sky130_fd_sc_hd__buf_1 input21 (.A(FrameData[27]),
    .X(net21));
 sky130_fd_sc_hd__buf_1 input22 (.A(FrameData[28]),
    .X(net22));
 sky130_fd_sc_hd__dlymetal6s2s_1 input23 (.A(FrameData[29]),
    .X(net23));
 sky130_fd_sc_hd__buf_1 input24 (.A(FrameData[2]),
    .X(net24));
 sky130_fd_sc_hd__clkbuf_2 input25 (.A(FrameData[30]),
    .X(net25));
 sky130_fd_sc_hd__clkbuf_2 input26 (.A(FrameData[31]),
    .X(net26));
 sky130_fd_sc_hd__buf_1 input27 (.A(FrameData[3]),
    .X(net27));
 sky130_fd_sc_hd__clkbuf_1 input28 (.A(FrameData[4]),
    .X(net28));
 sky130_fd_sc_hd__dlymetal6s2s_1 input29 (.A(FrameData[5]),
    .X(net29));
 sky130_fd_sc_hd__dlymetal6s2s_1 input30 (.A(FrameData[6]),
    .X(net30));
 sky130_fd_sc_hd__dlymetal6s2s_1 input31 (.A(FrameData[7]),
    .X(net31));
 sky130_fd_sc_hd__buf_1 input32 (.A(FrameData[8]),
    .X(net32));
 sky130_fd_sc_hd__buf_1 input33 (.A(FrameData[9]),
    .X(net44));
 sky130_fd_sc_hd__buf_1 input34 (.A(FrameStrobe[1]),
    .X(net45));
 sky130_fd_sc_hd__buf_1 input35 (.A(FrameStrobe[2]),
    .X(net46));
 sky130_fd_sc_hd__buf_1 input36 (.A(S1END[0]),
    .X(net47));
 sky130_fd_sc_hd__buf_1 input37 (.A(S1END[1]),
    .X(net48));
 sky130_fd_sc_hd__clkbuf_1 input38 (.A(S1END[2]),
    .X(net49));
 sky130_fd_sc_hd__clkbuf_1 input39 (.A(S1END[3]),
    .X(net50));
 sky130_fd_sc_hd__clkbuf_1 input40 (.A(S2END[0]),
    .X(net51));
 sky130_fd_sc_hd__clkbuf_1 input41 (.A(S2END[1]),
    .X(net52));
 sky130_fd_sc_hd__clkbuf_1 input42 (.A(S2END[2]),
    .X(net53));
 sky130_fd_sc_hd__buf_1 input43 (.A(S2END[3]),
    .X(net54));
 sky130_fd_sc_hd__clkbuf_1 input44 (.A(S2END[4]),
    .X(net55));
 sky130_fd_sc_hd__buf_1 input45 (.A(S2END[5]),
    .X(net56));
 sky130_fd_sc_hd__buf_1 input46 (.A(S2END[6]),
    .X(net57));
 sky130_fd_sc_hd__buf_1 input47 (.A(S2END[7]),
    .X(net58));
 sky130_fd_sc_hd__clkbuf_1 input48 (.A(S2MID[0]),
    .X(net59));
 sky130_fd_sc_hd__buf_1 input49 (.A(S2MID[1]),
    .X(net60));
 sky130_fd_sc_hd__clkbuf_1 input50 (.A(S2MID[2]),
    .X(net61));
 sky130_fd_sc_hd__buf_1 input51 (.A(S2MID[3]),
    .X(net62));
 sky130_fd_sc_hd__buf_1 input52 (.A(S2MID[4]),
    .X(net63));
 sky130_fd_sc_hd__buf_1 input53 (.A(S2MID[5]),
    .X(net64));
 sky130_fd_sc_hd__buf_1 input54 (.A(S2MID[6]),
    .X(net65));
 sky130_fd_sc_hd__clkbuf_1 input55 (.A(S2MID[7]),
    .X(net66));
 sky130_fd_sc_hd__buf_1 input56 (.A(S4END[0]),
    .X(net67));
 sky130_fd_sc_hd__clkbuf_1 input57 (.A(S4END[10]),
    .X(net68));
 sky130_fd_sc_hd__clkbuf_1 input58 (.A(S4END[11]),
    .X(net69));
 sky130_fd_sc_hd__clkbuf_1 input59 (.A(S4END[12]),
    .X(net70));
 sky130_fd_sc_hd__clkbuf_1 input60 (.A(S4END[13]),
    .X(net71));
 sky130_fd_sc_hd__clkbuf_1 input61 (.A(S4END[14]),
    .X(net72));
 sky130_fd_sc_hd__clkbuf_1 input62 (.A(S4END[15]),
    .X(net73));
 sky130_fd_sc_hd__buf_1 input63 (.A(S4END[1]),
    .X(net74));
 sky130_fd_sc_hd__clkbuf_1 input64 (.A(S4END[2]),
    .X(net75));
 sky130_fd_sc_hd__clkbuf_1 input65 (.A(S4END[3]),
    .X(net76));
 sky130_fd_sc_hd__clkbuf_1 input66 (.A(S4END[4]),
    .X(net77));
 sky130_fd_sc_hd__clkbuf_1 input67 (.A(S4END[5]),
    .X(net78));
 sky130_fd_sc_hd__clkbuf_1 input68 (.A(S4END[6]),
    .X(net79));
 sky130_fd_sc_hd__clkbuf_1 input69 (.A(S4END[7]),
    .X(net80));
 sky130_fd_sc_hd__buf_1 input70 (.A(S4END[8]),
    .X(net81));
 sky130_fd_sc_hd__clkbuf_1 input71 (.A(S4END[9]),
    .X(net82));
 sky130_fd_sc_hd__buf_1 input72 (.A(SS4END[0]),
    .X(net83));
 sky130_fd_sc_hd__clkbuf_1 input73 (.A(SS4END[10]),
    .X(net84));
 sky130_fd_sc_hd__clkbuf_1 input74 (.A(SS4END[11]),
    .X(net85));
 sky130_fd_sc_hd__buf_1 input75 (.A(SS4END[12]),
    .X(net86));
 sky130_fd_sc_hd__buf_1 input76 (.A(SS4END[13]),
    .X(net87));
 sky130_fd_sc_hd__buf_1 input77 (.A(SS4END[14]),
    .X(net88));
 sky130_fd_sc_hd__buf_1 input78 (.A(SS4END[15]),
    .X(net89));
 sky130_fd_sc_hd__clkbuf_1 input79 (.A(SS4END[1]),
    .X(net90));
 sky130_fd_sc_hd__buf_1 input80 (.A(SS4END[2]),
    .X(net91));
 sky130_fd_sc_hd__clkbuf_1 input81 (.A(SS4END[3]),
    .X(net92));
 sky130_fd_sc_hd__clkbuf_1 input82 (.A(SS4END[4]),
    .X(net93));
 sky130_fd_sc_hd__clkbuf_1 input83 (.A(SS4END[5]),
    .X(net94));
 sky130_fd_sc_hd__clkbuf_1 input84 (.A(SS4END[6]),
    .X(net95));
 sky130_fd_sc_hd__clkbuf_1 input85 (.A(SS4END[7]),
    .X(net96));
 sky130_fd_sc_hd__clkbuf_1 input86 (.A(SS4END[8]),
    .X(net97));
 sky130_fd_sc_hd__clkbuf_1 input87 (.A(SS4END[9]),
    .X(net98));
 sky130_fd_sc_hd__buf_2 output88 (.A(net99),
    .X(FrameData_O[0]));
 sky130_fd_sc_hd__buf_2 output89 (.A(net100),
    .X(FrameData_O[10]));
 sky130_fd_sc_hd__buf_2 output90 (.A(net101),
    .X(FrameData_O[11]));
 sky130_fd_sc_hd__buf_2 output91 (.A(net102),
    .X(FrameData_O[12]));
 sky130_fd_sc_hd__buf_2 output92 (.A(net103),
    .X(FrameData_O[13]));
 sky130_fd_sc_hd__buf_2 output93 (.A(net104),
    .X(FrameData_O[14]));
 sky130_fd_sc_hd__buf_2 output94 (.A(net105),
    .X(FrameData_O[15]));
 sky130_fd_sc_hd__buf_2 output95 (.A(net106),
    .X(FrameData_O[16]));
 sky130_fd_sc_hd__buf_2 output96 (.A(net107),
    .X(FrameData_O[17]));
 sky130_fd_sc_hd__buf_2 output97 (.A(net108),
    .X(FrameData_O[18]));
 sky130_fd_sc_hd__buf_2 output98 (.A(net109),
    .X(FrameData_O[19]));
 sky130_fd_sc_hd__buf_2 output99 (.A(net110),
    .X(FrameData_O[1]));
 sky130_fd_sc_hd__buf_2 output100 (.A(net111),
    .X(FrameData_O[20]));
 sky130_fd_sc_hd__buf_2 output101 (.A(net112),
    .X(FrameData_O[21]));
 sky130_fd_sc_hd__buf_2 output102 (.A(net113),
    .X(FrameData_O[22]));
 sky130_fd_sc_hd__buf_2 output103 (.A(net114),
    .X(FrameData_O[23]));
 sky130_fd_sc_hd__buf_2 output104 (.A(net115),
    .X(FrameData_O[24]));
 sky130_fd_sc_hd__buf_2 output105 (.A(net116),
    .X(FrameData_O[25]));
 sky130_fd_sc_hd__buf_2 output106 (.A(net117),
    .X(FrameData_O[26]));
 sky130_fd_sc_hd__buf_2 output107 (.A(net118),
    .X(FrameData_O[27]));
 sky130_fd_sc_hd__buf_2 output108 (.A(net119),
    .X(FrameData_O[28]));
 sky130_fd_sc_hd__buf_2 output109 (.A(net120),
    .X(FrameData_O[29]));
 sky130_fd_sc_hd__buf_2 output110 (.A(net121),
    .X(FrameData_O[2]));
 sky130_fd_sc_hd__buf_2 output111 (.A(net122),
    .X(FrameData_O[30]));
 sky130_fd_sc_hd__buf_2 output112 (.A(net123),
    .X(FrameData_O[31]));
 sky130_fd_sc_hd__buf_2 output113 (.A(net124),
    .X(FrameData_O[3]));
 sky130_fd_sc_hd__buf_2 output114 (.A(net125),
    .X(FrameData_O[4]));
 sky130_fd_sc_hd__buf_2 output115 (.A(net126),
    .X(FrameData_O[5]));
 sky130_fd_sc_hd__buf_2 output116 (.A(net127),
    .X(FrameData_O[6]));
 sky130_fd_sc_hd__buf_2 output117 (.A(net128),
    .X(FrameData_O[7]));
 sky130_fd_sc_hd__buf_2 output118 (.A(net129),
    .X(FrameData_O[8]));
 sky130_fd_sc_hd__buf_2 output119 (.A(net130),
    .X(FrameData_O[9]));
 sky130_fd_sc_hd__buf_2 output120 (.A(net131),
    .X(FrameStrobe_O[0]));
 sky130_fd_sc_hd__buf_2 output121 (.A(net132),
    .X(FrameStrobe_O[10]));
 sky130_fd_sc_hd__buf_2 output122 (.A(net133),
    .X(FrameStrobe_O[11]));
 sky130_fd_sc_hd__buf_2 output123 (.A(net134),
    .X(FrameStrobe_O[12]));
 sky130_fd_sc_hd__buf_2 output124 (.A(net135),
    .X(FrameStrobe_O[13]));
 sky130_fd_sc_hd__buf_2 output125 (.A(net136),
    .X(FrameStrobe_O[14]));
 sky130_fd_sc_hd__buf_2 output126 (.A(net137),
    .X(FrameStrobe_O[15]));
 sky130_fd_sc_hd__buf_2 output127 (.A(net138),
    .X(FrameStrobe_O[16]));
 sky130_fd_sc_hd__buf_2 output128 (.A(net139),
    .X(FrameStrobe_O[17]));
 sky130_fd_sc_hd__buf_2 output129 (.A(net140),
    .X(FrameStrobe_O[18]));
 sky130_fd_sc_hd__buf_2 output130 (.A(net141),
    .X(FrameStrobe_O[19]));
 sky130_fd_sc_hd__buf_2 output131 (.A(net142),
    .X(FrameStrobe_O[1]));
 sky130_fd_sc_hd__buf_2 output132 (.A(net143),
    .X(FrameStrobe_O[2]));
 sky130_fd_sc_hd__buf_2 output133 (.A(net144),
    .X(FrameStrobe_O[3]));
 sky130_fd_sc_hd__buf_2 output134 (.A(net145),
    .X(FrameStrobe_O[4]));
 sky130_fd_sc_hd__buf_2 output135 (.A(net146),
    .X(FrameStrobe_O[5]));
 sky130_fd_sc_hd__buf_2 output136 (.A(net147),
    .X(FrameStrobe_O[6]));
 sky130_fd_sc_hd__buf_2 output137 (.A(net148),
    .X(FrameStrobe_O[7]));
 sky130_fd_sc_hd__buf_2 output138 (.A(net149),
    .X(FrameStrobe_O[8]));
 sky130_fd_sc_hd__buf_2 output139 (.A(net150),
    .X(FrameStrobe_O[9]));
 sky130_fd_sc_hd__buf_2 output140 (.A(net151),
    .X(HOLD_top));
 sky130_fd_sc_hd__buf_2 output141 (.A(net152),
    .X(N1BEG[0]));
 sky130_fd_sc_hd__buf_2 output142 (.A(net153),
    .X(N1BEG[1]));
 sky130_fd_sc_hd__buf_2 output143 (.A(net154),
    .X(N1BEG[2]));
 sky130_fd_sc_hd__buf_2 output144 (.A(net155),
    .X(N1BEG[3]));
 sky130_fd_sc_hd__buf_2 output145 (.A(net156),
    .X(N2BEG[0]));
 sky130_fd_sc_hd__buf_2 output146 (.A(net157),
    .X(N2BEG[1]));
 sky130_fd_sc_hd__buf_2 output147 (.A(net158),
    .X(N2BEG[2]));
 sky130_fd_sc_hd__buf_2 output148 (.A(net159),
    .X(N2BEG[3]));
 sky130_fd_sc_hd__buf_2 output149 (.A(net160),
    .X(N2BEG[4]));
 sky130_fd_sc_hd__buf_2 output150 (.A(net161),
    .X(N2BEG[5]));
 sky130_fd_sc_hd__buf_2 output151 (.A(net162),
    .X(N2BEG[6]));
 sky130_fd_sc_hd__buf_2 output152 (.A(net163),
    .X(N2BEG[7]));
 sky130_fd_sc_hd__buf_2 output153 (.A(net164),
    .X(N2BEGb[0]));
 sky130_fd_sc_hd__buf_2 output154 (.A(net165),
    .X(N2BEGb[1]));
 sky130_fd_sc_hd__buf_2 output155 (.A(net166),
    .X(N2BEGb[2]));
 sky130_fd_sc_hd__buf_2 output156 (.A(net167),
    .X(N2BEGb[3]));
 sky130_fd_sc_hd__buf_2 output157 (.A(net168),
    .X(N2BEGb[4]));
 sky130_fd_sc_hd__buf_2 output158 (.A(net169),
    .X(N2BEGb[5]));
 sky130_fd_sc_hd__buf_2 output159 (.A(net170),
    .X(N2BEGb[6]));
 sky130_fd_sc_hd__buf_2 output160 (.A(net171),
    .X(N2BEGb[7]));
 sky130_fd_sc_hd__buf_2 output161 (.A(net172),
    .X(N4BEG[0]));
 sky130_fd_sc_hd__buf_2 output162 (.A(net173),
    .X(N4BEG[10]));
 sky130_fd_sc_hd__buf_2 output163 (.A(net174),
    .X(N4BEG[11]));
 sky130_fd_sc_hd__buf_2 output164 (.A(net175),
    .X(N4BEG[12]));
 sky130_fd_sc_hd__buf_2 output165 (.A(net176),
    .X(N4BEG[13]));
 sky130_fd_sc_hd__buf_2 output166 (.A(net177),
    .X(N4BEG[14]));
 sky130_fd_sc_hd__buf_2 output167 (.A(net178),
    .X(N4BEG[15]));
 sky130_fd_sc_hd__buf_2 output168 (.A(net179),
    .X(N4BEG[1]));
 sky130_fd_sc_hd__buf_2 output169 (.A(net180),
    .X(N4BEG[2]));
 sky130_fd_sc_hd__buf_2 output170 (.A(net181),
    .X(N4BEG[3]));
 sky130_fd_sc_hd__buf_2 output171 (.A(net182),
    .X(N4BEG[4]));
 sky130_fd_sc_hd__buf_2 output172 (.A(net183),
    .X(N4BEG[5]));
 sky130_fd_sc_hd__buf_2 output173 (.A(net184),
    .X(N4BEG[6]));
 sky130_fd_sc_hd__buf_2 output174 (.A(net185),
    .X(N4BEG[7]));
 sky130_fd_sc_hd__buf_2 output175 (.A(net186),
    .X(N4BEG[8]));
 sky130_fd_sc_hd__buf_2 output176 (.A(net187),
    .X(N4BEG[9]));
 sky130_fd_sc_hd__buf_2 output177 (.A(net188),
    .X(NN4BEG[0]));
 sky130_fd_sc_hd__buf_2 output178 (.A(net189),
    .X(NN4BEG[10]));
 sky130_fd_sc_hd__buf_2 output179 (.A(net190),
    .X(NN4BEG[11]));
 sky130_fd_sc_hd__buf_2 output180 (.A(net191),
    .X(NN4BEG[12]));
 sky130_fd_sc_hd__buf_2 output181 (.A(net192),
    .X(NN4BEG[13]));
 sky130_fd_sc_hd__buf_2 output182 (.A(net193),
    .X(NN4BEG[14]));
 sky130_fd_sc_hd__buf_2 output183 (.A(net194),
    .X(NN4BEG[15]));
 sky130_fd_sc_hd__buf_2 output184 (.A(net195),
    .X(NN4BEG[1]));
 sky130_fd_sc_hd__buf_2 output185 (.A(net196),
    .X(NN4BEG[2]));
 sky130_fd_sc_hd__buf_2 output186 (.A(net197),
    .X(NN4BEG[3]));
 sky130_fd_sc_hd__buf_2 output187 (.A(net198),
    .X(NN4BEG[4]));
 sky130_fd_sc_hd__buf_2 output188 (.A(net199),
    .X(NN4BEG[5]));
 sky130_fd_sc_hd__buf_2 output189 (.A(net200),
    .X(NN4BEG[6]));
 sky130_fd_sc_hd__buf_2 output190 (.A(net201),
    .X(NN4BEG[7]));
 sky130_fd_sc_hd__buf_2 output191 (.A(net202),
    .X(NN4BEG[8]));
 sky130_fd_sc_hd__buf_2 output192 (.A(net203),
    .X(NN4BEG[9]));
 sky130_fd_sc_hd__buf_2 output193 (.A(net204),
    .X(RESET_top));
 sky130_fd_sc_hd__buf_1 output194 (.A(net205),
    .X(UserCLKo));
 sky130_fd_sc_hd__buf_2 output195 (.A(net206),
    .X(VALUE_top0));
 sky130_fd_sc_hd__buf_2 output196 (.A(net207),
    .X(VALUE_top1));
 sky130_fd_sc_hd__buf_2 output197 (.A(net208),
    .X(VALUE_top10));
 sky130_fd_sc_hd__buf_2 output198 (.A(net209),
    .X(VALUE_top11));
 sky130_fd_sc_hd__buf_2 output199 (.A(net210),
    .X(VALUE_top2));
 sky130_fd_sc_hd__buf_2 output200 (.A(net211),
    .X(VALUE_top3));
 sky130_fd_sc_hd__buf_2 output201 (.A(net212),
    .X(VALUE_top4));
 sky130_fd_sc_hd__buf_2 output202 (.A(net213),
    .X(VALUE_top5));
 sky130_fd_sc_hd__buf_2 output203 (.A(net214),
    .X(VALUE_top6));
 sky130_fd_sc_hd__buf_2 output204 (.A(net215),
    .X(VALUE_top7));
 sky130_fd_sc_hd__buf_2 output205 (.A(net216),
    .X(VALUE_top8));
 sky130_fd_sc_hd__buf_2 output206 (.A(net217),
    .X(VALUE_top9));
 sky130_fd_sc_hd__conb_1 S_EF_ADC12_207 (.LO(net218));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_UserCLK (.A(UserCLK),
    .X(clknet_0_UserCLK));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_UserCLK (.A(clknet_0_UserCLK),
    .X(clknet_1_0__leaf_UserCLK));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_UserCLK_regs (.A(UserCLK_regs),
    .X(clknet_0_UserCLK_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_0__f_UserCLK_regs (.A(clknet_0_UserCLK_regs),
    .X(clknet_2_0__leaf_UserCLK_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_1__f_UserCLK_regs (.A(clknet_0_UserCLK_regs),
    .X(clknet_2_1__leaf_UserCLK_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_2__f_UserCLK_regs (.A(clknet_0_UserCLK_regs),
    .X(clknet_2_2__leaf_UserCLK_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_3__f_UserCLK_regs (.A(clknet_0_UserCLK_regs),
    .X(clknet_2_3__leaf_UserCLK_regs));
 sky130_fd_sc_hd__clkbuf_8 clkload0 (.A(clknet_2_0__leaf_UserCLK_regs));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(\Inst_EF_ADC12.curr_state[1] ),
    .X(net219));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(\Inst_EF_ADC12.curr_state[5] ),
    .X(net220));
 sky130_fd_sc_hd__dlygate4sd3_1 hold3 (.A(\Inst_EF_ADC12.curr_state[3] ),
    .X(net221));
 sky130_fd_sc_hd__dlygate4sd3_1 hold4 (.A(\Inst_EF_ADC12.next_bit[10] ),
    .X(net222));
 sky130_fd_sc_hd__dlygate4sd3_1 hold5 (.A(\Inst_EF_ADC12.shift_value[0] ),
    .X(net223));
 sky130_fd_sc_hd__dlygate4sd3_1 hold6 (.A(\Inst_EF_ADC12.curr_state[0] ),
    .X(net224));
 sky130_fd_sc_hd__dlygate4sd3_1 hold7 (.A(\Inst_EF_ADC12.next_bit[7] ),
    .X(net225));
 sky130_fd_sc_hd__dlygate4sd3_1 hold8 (.A(\Inst_EF_ADC12.next_bit[8] ),
    .X(net226));
 sky130_fd_sc_hd__dlygate4sd3_1 hold9 (.A(\Inst_EF_ADC12.next_bit[0] ),
    .X(net227));
 sky130_fd_sc_hd__dlygate4sd3_1 hold10 (.A(\Inst_EF_ADC12.next_bit[4] ),
    .X(net228));
 sky130_fd_sc_hd__dlygate4sd3_1 hold11 (.A(\Inst_EF_ADC12.next_bit[9] ),
    .X(net229));
 sky130_fd_sc_hd__dlygate4sd3_1 hold12 (.A(\Inst_EF_ADC12.curr_state[0] ),
    .X(net230));
 sky130_fd_sc_hd__dlygate4sd3_1 hold13 (.A(\Inst_EF_ADC12.next_bit[5] ),
    .X(net231));
 sky130_fd_sc_hd__dlygate4sd3_1 hold14 (.A(\Inst_EF_ADC12.next_bit[6] ),
    .X(net232));
 sky130_fd_sc_hd__dlygate4sd3_1 hold15 (.A(\Inst_EF_ADC12.next_bit[3] ),
    .X(net233));
 sky130_fd_sc_hd__dlygate4sd3_1 hold16 (.A(\Inst_EF_ADC12.next_bit[1] ),
    .X(net234));
 sky130_fd_sc_hd__dlygate4sd3_1 hold17 (.A(\Inst_EF_ADC12.next_bit[2] ),
    .X(net235));
 sky130_fd_sc_hd__dlygate4sd3_1 hold18 (.A(\Inst_EF_ADC12.VALID ),
    .X(net236));
 sky130_fd_sc_hd__dlygate4sd3_1 hold19 (.A(\Inst_EF_ADC12.sample_counter[1] ),
    .X(net237));
 sky130_fd_sc_hd__diode_2 ANTENNA_1 (.DIODE(net100));
 sky130_fd_sc_hd__diode_2 ANTENNA_2 (.DIODE(net109));
 sky130_fd_sc_hd__diode_2 ANTENNA_3 (.DIODE(net114));
 sky130_fd_sc_hd__diode_2 ANTENNA_4 (.DIODE(net125));
 sky130_fd_sc_hd__diode_2 ANTENNA_5 (.DIODE(net129));
 sky130_fd_sc_hd__diode_2 ANTENNA_6 (.DIODE(net62));
 sky130_fd_sc_hd__diode_2 ANTENNA_7 (.DIODE(net62));
 sky130_fd_sc_hd__fill_1 FILLER_0_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_34 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_37 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_44 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_151 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_195 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_200 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_203 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_206 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_209 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_212 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_215 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_218 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_221 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_234 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_237 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_240 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_243 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_246 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_249 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_253 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_256 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_259 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_262 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_265 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_268 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_271 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_274 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_277 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_281 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_284 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_287 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_290 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_296 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_299 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_302 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_305 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_309 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_312 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_315 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_318 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_321 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_324 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_327 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_330 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_334 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_19 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_22 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_25 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_46 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_113 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_122 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_127 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_166 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_196 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_199 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_204 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_207 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_210 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_213 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_216 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_225 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_239 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_252 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_266 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_269 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_272 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_275 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_278 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_281 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_309 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_312 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_315 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_319 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_322 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_334 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_337 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_68 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_83 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_85 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_129 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_183 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_215 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_218 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_221 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_224 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_250 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_259 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_262 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_265 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_268 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_271 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_274 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_277 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_280 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_283 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_286 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_289 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_292 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_295 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_298 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_301 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_304 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_307 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_309 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_312 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_315 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_318 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_321 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_324 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_327 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_336 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_13 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_45 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_54 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_73 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_103 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_126 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_151 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_176 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_179 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_182 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_185 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_189 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_192 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_195 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_208 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_211 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_214 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_217 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_220 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_223 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_225 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_228 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_231 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_234 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_239 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_254 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_257 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_260 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_263 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_266 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_269 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_272 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_275 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_278 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_290 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_303 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_306 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_309 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_312 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_315 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_318 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_321 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_324 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_327 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_330 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_333 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_337 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_6 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_117 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_124 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_139 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_157 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_173 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_176 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_179 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_182 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_185 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_188 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_191 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_197 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_210 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_213 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_216 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_219 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_223 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_226 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_229 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_232 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_235 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_238 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_253 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_256 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_259 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_262 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_265 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_268 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_297 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_300 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_303 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_306 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_309 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_312 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_315 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_318 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_331 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_336 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_127 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_182 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_185 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_188 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_191 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_202 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_225 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_238 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_241 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_244 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_247 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_250 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_253 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_256 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_267 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_287 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_290 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_296 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_299 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_302 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_305 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_308 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_311 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_327 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_330 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_333 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_83 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_105 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_115 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_150 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_167 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_170 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_173 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_176 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_179 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_182 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_185 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_209 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_223 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_226 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_229 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_232 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_235 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_238 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_241 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_244 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_247 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_253 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_285 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_288 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_291 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_321 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_325 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_328 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_331 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_10 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_20 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_50 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_124 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_166 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_179 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_182 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_185 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_188 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_191 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_194 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_210 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_213 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_216 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_219 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_222 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_225 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_230 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_233 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_236 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_239 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_279 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_281 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_284 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_287 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_299 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_302 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_305 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_308 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_334 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_346 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_13 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_16 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_46 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_72 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_75 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_78 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_118 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_123 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_138 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_173 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_176 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_179 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_182 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_185 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_188 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_191 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_194 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_209 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_215 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_218 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_221 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_270 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_273 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_276 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_279 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_282 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_285 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_288 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_299 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_302 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_305 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_309 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_312 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_315 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_318 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_331 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_334 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_337 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_13 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_30 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_44 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_63 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_66 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_71 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_84 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_87 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_103 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_106 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_109 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_116 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_120 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_123 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_126 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_129 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_172 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_175 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_178 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_181 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_184 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_187 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_190 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_240 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_243 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_273 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_276 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_279 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_281 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_284 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_300 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_303 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_306 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_309 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_321 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_324 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_327 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_330 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_333 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_337 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_13 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_56 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_59 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_82 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_124 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_127 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_130 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_133 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_173 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_176 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_179 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_182 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_185 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_188 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_191 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_194 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_197 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_201 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_204 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_217 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_232 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_235 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_238 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_241 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_244 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_247 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_268 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_271 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_285 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_288 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_291 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_309 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_312 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_316 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_319 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_322 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_325 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_328 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_331 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_334 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_13 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_44 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_76 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_79 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_82 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_100 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_103 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_128 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_131 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_134 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_137 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_184 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_187 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_190 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_193 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_196 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_211 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_229 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_232 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_235 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_238 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_241 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_244 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_247 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_250 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_253 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_256 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_259 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_262 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_265 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_268 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_271 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_274 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_277 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_284 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_287 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_290 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_296 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_299 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_302 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_305 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_308 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_311 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_315 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_318 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_321 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_324 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_327 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_330 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_333 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_13 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_16 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_19 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_22 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_25 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_36 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_44 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_79 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_100 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_117 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_130 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_189 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_192 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_195 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_197 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_200 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_203 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_206 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_209 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_212 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_224 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_227 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_237 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_240 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_243 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_246 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_249 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_263 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_266 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_269 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_272 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_296 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_299 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_302 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_305 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_309 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_312 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_315 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_318 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_321 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_324 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_327 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_330 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_333 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_336 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_18 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_42 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_81 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_94 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_136 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_149 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_166 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_181 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_206 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_219 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_270 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_273 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_277 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_284 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_287 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_290 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_296 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_299 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_302 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_305 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_308 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_311 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_314 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_317 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_320 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_323 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_326 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_329 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_332 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_335 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_17 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_20 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_50 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_134 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_157 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_168 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_212 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_251 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_268 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_306 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_309 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_312 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_315 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_318 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_321 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_324 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_327 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_330 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_333 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_336 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_13 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_16 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_19 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_94 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_164 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_278 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_305 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_313 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_316 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_319 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_322 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_325 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_328 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_331 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_337 ();
 assign Co = net218;
endmodule
