module round_key_generator(round_key_output, round_key_input);

input [63:0] round_key_input;
output wire [767:0] round_key_output;

wire [55:0] perm_choice_one_output;

wire [55:0] transform_one_output;
wire [55:0] transform_two_output;
wire [55:0] transform_three_output;
wire [55:0] transform_four_output;
wire [55:0] transform_five_output;
wire [55:0] transform_six_output;
wire [55:0] transform_seven_output;
wire [55:0] transform_eight_output;
wire [55:0] transform_nine_output;
wire [55:0] transform_ten_output;
wire [55:0] transform_eleven_output;
wire [55:0] transform_twelve_output;
wire [55:0] transform_thirteen_output;
wire [55:0] transform_fourteen_output;
wire [55:0] transform_fifteen_output;
wire [55:0] transform_sixteen_output;


permutation_choice_one perm_choice_one (perm_choice_one_output, round_key_input);

transform_one_bit t1 (transform_one_output, round_key_output[47:0], perm_choice_one_output);
transform_one_bit t2 (transform_two_output, round_key_output[95:48], transform_one_output);
transform_two_bits t3 (transform_three_output, round_key_output[143:96], transform_two_output);
transform_two_bits t4 (transform_four_output, round_key_output[191:144], transform_three_output);
transform_two_bits t5 (transform_five_output, round_key_output[239:192], transform_four_output);
transform_two_bits t6 (transform_six_output, round_key_output[287:240], transform_five_output);
transform_two_bits t7 (transform_seven_output, round_key_output[335:288], transform_six_output);
transform_two_bits t8 (transform_eight_output, round_key_output[383:336], transform_seven_output);
transform_one_bit t9 (transform_nine_output, round_key_output[431:384], transform_eight_output);
transform_two_bits t10 (transform_ten_output, round_key_output[479:432], transform_nine_output);
transform_two_bits t11 (transform_eleven_output, round_key_output[527:480], transform_ten_output);
transform_two_bits t12 (transform_twelve_output, round_key_output[575:528], transform_eleven_output);
transform_two_bits t13 (transform_thirteen_output, round_key_output[623:576], transform_twelve_output);
transform_two_bits t14 (transform_fourteen_output, round_key_output[671:624], transform_thirteen_output);
transform_two_bits t15 (transform_fifteen_output, round_key_output[719:672], transform_fourteen_output);
transform_one_bit t16 (transform_sixteen_output, round_key_output[767:720], transform_fifteen_output);

endmodule