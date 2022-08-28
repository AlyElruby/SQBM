module ROM5_32(Pcount,Tcount,out);
input [2:0] Pcount;
input [1:0] Tcount;
output [4:0] out;
reg [4:0] out;
reg [4:0] index;
always@(Pcount,Tcount)
begin
index={Pcount,Tcount};
case(index)
5'b00000 : out = 5'bxxxxx;
5'b00001 : out = 5'b00000;
5'b00010 : out = 5'b00001;
5'b00011 : out = 5'b00011;
5'b00100 : out = 5'bxxxxx;
5'b00101 : out = 5'b00011;
5'b00110 : out = 5'b00011;
5'b00111 : out = 5'b00011;
5'b01000 : out = 5'bxxxxx;
5'b01001 : out = 5'b00110;
5'b01010 : out = 5'b00100;
5'b01011 : out = 5'b00100;
5'b01100 : out = 5'bxxxxx;
5'b01101 : out = 5'b01001;
5'b01110 : out = 5'b00110;
5'b01111 : out = 5'b00101;
5'b10000 : out = 5'bxxxxx;
5'b10001 : out = 5'b01100;
5'b10010 : out = 5'b00111;
5'b10011 : out = 5'b00110;
5'b10100 : out = 5'bxxxxx;
5'b10101 : out = 5'b01111;
5'b10110 : out = 5'b01001;
5'b10111 : out = 5'b00111;
5'b11000 : out = 5'bxxxxx;
5'b11001 : out = 5'b10010;
5'b11010 : out = 5'b01010;
5'b11011 : out = 5'b01000;
5'b11100 : out = 5'bxxxxx;
5'b11101 : out = 5'b10101;
5'b11110 : out = 5'b01100;
5'b11111 : out = 5'b01001;
endcase
end
endmodule