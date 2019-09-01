module s_box_eight(s_box_output, s_box_input);

input [5:0] s_box_input;
output wire [3:0] s_box_output;

wire [1:0] row_check;
wire [3:0] column_check;
wire [15:0] possible_outputs; 

assign row_check[1] = s_box_input[5];
assign row_check[0] = s_box_input[0];
assign column_check = s_box_input[4:1];

always@(column_check) begin
case (column_check)
4'b0000 : possible_outputs = 1101 0001 0111 0010;
4'b0001 : possible_outputs = 0010 1111 1011 0001;
4'b0010 : possible_outputs = 1000 1101 0100 1110;
4'b0011 : possible_outputs = 0100 1000 0001 0111;
4'b0100 : possible_outputs = 0110 1010 1001 0100;
4'b0101 : possible_outputs = 1111 0011 1100 1010;
4'b0110 : possible_outputs = 1011 0111 1110 1000;
4'b0111 : possible_outputs = 0001 0100 0010 1101;
4'b1000 : possible_outputs = 1010 1100 0000 1111;
4'b1001 : possible_outputs = 1001 0101 0110 1100;
4'b1010 : possible_outputs = 0011 0110 1010 1001;
4'b1011 : possible_outputs = 1110 1011 1101 0000;
4'b1100 : possible_outputs = 0101 0000 1111 0011;
4'b1101 : possible_outputs = 0000 1110 0011 0101;
4'b1110 : possible_outputs = 1100 1001 0101 0110;
4'b1111 : possible_outputs = 0111 0010 1000 1011;
default : $display ("Error in s_box8 column_selection") ;
endcase
end

always@(possible_outputs) begin
case(row_check)
2'b00 : s_box_output = possible_outputs[15:12];
2'b01 : s_box_output = possible_outputs[11:8];
2'b10 : s_box_output = possible_outputs[7:4];
2'b11 : s_box_output = possible_outputs[3:0];
default : $display ("Error in s_box8 row_selection");
endcase
end

endmodule