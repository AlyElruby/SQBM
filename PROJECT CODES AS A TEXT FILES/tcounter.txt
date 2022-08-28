module tcounter(
input x,rst,
output reg[1:0] tcount);
always @(posedge x,posedge rst)
begin
if(rst)
	tcount<=1;
else
begin
case(tcount)
1:begin
	if(x)	tcount<=2;
	end
2:begin
	if(x)	tcount<=3;
	end
3:begin
	if(x)	tcount<=1;
	end
endcase
end
end
endmodule
