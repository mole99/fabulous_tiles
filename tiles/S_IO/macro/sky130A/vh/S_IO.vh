// Auto-generated by OpenLane
module S_IO(
`ifdef USE_POWER_PINS
  inout VPWR,
  inout VGND,
`endif
  output[3:0] N1BEG,
  output[7:0] N2BEG,
  output[7:0] N2BEGb,
  output[15:0] N4BEG,
  output[15:0] NN4BEG,
  output Co,
  input[3:0] S1END,
  input[7:0] S2MID,
  input[7:0] S2END,
  input[15:0] S4END,
  input[15:0] SS4END,
  input A_O_top,
  output A_I_top,
  output A_T_top,
  input B_O_top,
  output B_I_top,
  output B_T_top,
  output A_config_C_bit0,
  output A_config_C_bit1,
  output A_config_C_bit2,
  output A_config_C_bit3,
  output B_config_C_bit0,
  output B_config_C_bit1,
  output B_config_C_bit2,
  output B_config_C_bit3,
  input UserCLK,
  output UserCLKo,
  input[31:0] FrameData,
  output[31:0] FrameData_O,
  input[19:0] FrameStrobe,
  output[19:0] FrameStrobe_O
);
endmodule
