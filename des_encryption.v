module des_encryption(ciphertext, plaintext, cipher_key);

input [63:0] plaintext;
input [55:0] cipher_key;
output wire [63:0] ciphertext;

wire [63:0] init_perm_output;
wire [767:0] round_key_gen_output;

wire [63:0] round_one_output;
wire [63:0] round_two_output;
wire [63:0] round_three_output;
wire [63:0] round_four_output;
wire [63:0] round_five_output;
wire [63:0] round_six_output;
wire [63:0] round_seven_output;
wire [63:0] round_eight_output;
wire [63:0] round_nine_output;
wire [63:0] round_ten_output;
wire [63:0] round_eleven_output;
wire [63:0] round_twelve_output;
wire [63:0] round_thirteen_output;
wire [63:0] round_fourteen_output;
wire [63:0] round_fifteen_output;
wire [63:0] round_sixteen_output;


initial_permutation init_perm (init_perm_output, plaintext);

round_key_generator rkg (round_key_gen_output, cipher_key);

round r1 (round_one_output, init_perm_output, cipher_key[47:0]);
round r2 (round_two_output, round_one_output, cipher_key[95:48]);
round r3 (round_three_output, round_two_output, cipher_key[143:96]);
round r4 (round_four_output, round_three_output, cipher_key[191:144]);
round r5 (round_five_output, round_four_output, cipher_key[239:192]);
round r6 (round_six_output, round_five_output, cipher_key[287:240]);
round r7 (round_seven_output, round_six_output, cipher_key[335:288]);
round r8 (round_eight_output, round_seven_output, cipher_key[383:336]);
round r9 (round_nine_output, round_eight_output, cipher_key[431:384]);
round r10 (round_ten_output, round_nine_output, cipher_key[479:432]);
round r11 (round_eleven_output, round_ten_output, cipher_key[527:480]);
round r12 (round_twelve_output, round_eleven_output, cipher_key[575:528]);
round r13 (round_thirteen_output, round_twelve_output, cipher_key[623:576]);
round r14 (round_fourteen_output, round_thirteen_output, cipher_key[671:624]);
round r15 (round_fifteen_output, round_fourteen_output, cipher_key[719:672]);
round r16 (round_sixteen_output, round_fifteen_output, cipher_key[767:720]);

final_permutation fin_perm (ciphertext, round_sixteen_output);

endmodule