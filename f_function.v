module f_function (f_output, f_input, round_key);

input [31:0] f_input;
input [47:0] round_key;
output wire [31:0] f_output;

wire [47:0] expan_output;
wire [47:0] xor_output;
wire [31:0] s_input;
wire [31:0] s_output;

expansion_p_box expan_box (expan_output, f_input);

assign xor_output = expan_output ^ round_key;

s_box_1 s1 (s_output[3:0], s_input[5:0]);
s_box_2 s2 (s_output[7:4], s_input[11:6]);
s_box_3 s3 (s_output[10:7], s_input[18:12]);
s_box_4 s4 (s_output[15:11], s_input[24:19]);
s_box_5 s5 (s_output[19:16], s_input[30:25]);
s_box_6 s6 (s_output[23:20], s_input[36:31]);
s_box_7 s7 (s_output[27:24], s_input[41:37]);
s_box_8 s8 (s_output[31:28], s_input[47:42]);

straight_p_box p_box (f_output, s_output);

endmodule