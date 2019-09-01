module transform_two_bits (transform_output, subkey, transform_input);

input [55:0] transform_input;
output wire [47:0] subkey;
output wire [55:0] transform_output;

assign transform_output[27:2] = transform_input[25:0];
assign transform_output[1:0] = transform_input[27:26];
assign transform_output[55:29] = transform_input[53:28];
assign transform_output[29:28] = transform_input[55:54];


permutation_choice_two perm_choice_two (subkey, transform_output);

endmodule