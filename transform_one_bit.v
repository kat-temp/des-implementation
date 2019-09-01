module transform_one_bit (transform_output, subkey, transform_input);

input [55:0] transform_input;
output wire [47:0] subkey;
output wire [55:0] transform_output;

assign transform_output[27:1] = transform_input[26:0];
assign transform_output[0] = transform_input[27];
assign transform_output[55:29] = transform_input[54:28];
assign transform_output[28] = transform_input[55];


permutation_choice_two perm_choice_two (subkey, transform_output);

endmodule