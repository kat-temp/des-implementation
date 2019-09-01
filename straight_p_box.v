module straight_p_box(p_box_output, p_box_input);

output wire [32:1] p_box_output;
input [32:1] p_box_input;

assign p_box_output[1]= p_box_input[16];
assign p_box_output[2]= p_box_input[7];
assign p_box_output[3]= p_box_input[20];
assign p_box_output[4]= p_box_input[21];
assign p_box_output[5]= p_box_input[29];
assign p_box_output[6]= p_box_input[12];
assign p_box_output[7]= p_box_input[28];
assign p_box_output[8]= p_box_input[17];
assign p_box_output[9]= p_box_input[1];
assign p_box_output[10]= p_box_input[15];
assign p_box_output[11]= p_box_input[23];
assign p_box_output[12]= p_box_input[26];
assign p_box_output[13]= p_box_input[5];
assign p_box_output[14]= p_box_input[18];
assign p_box_output[15]= p_box_input[31];
assign p_box_output[16]= p_box_input[10];
assign p_box_output[17]= p_box_input[2];
assign p_box_output[18]= p_box_input[8];
assign p_box_output[19]= p_box_input[24];
assign p_box_output[20]= p_box_input[14];
assign p_box_output[21]= p_box_input[32];
assign p_box_output[22]= p_box_input[27];
assign p_box_output[23]= p_box_input[3];
assign p_box_output[24]= p_box_input[9];
assign p_box_output[25]= p_box_input[19];
assign p_box_output[26]= p_box_input[13];
assign p_box_output[27]= p_box_input[30];
assign p_box_output[28]= p_box_input[6];
assign p_box_output[29]= p_box_input[22];
assign p_box_output[30]= p_box_input[11]; 
assign p_box_output[31]= p_box_input[4];
assign p_box_output[32]= p_box_input[25];

endmodule