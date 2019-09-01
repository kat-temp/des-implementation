module round(round_output, round_input, round_key)

input [63:0] round_input;
input [47:0] round_key;
output [63:0] round_output;

wire [31:0] xor_output;
wire [31:0] f_output;

assign round_output[63:32] = round_input[31:0];

f_function f (f_output, round_input[31:0], round_key);

assign xor_output = round_input[63:32] ^ f_output;

assign round_output[31:0] = xor_output;

endmodule