module sbqm
#(parameter n=3)
(
input rst,up,down,
output reg [0:n-1] out);
integer max=(2**n)-1;
always @(negedge up,posedge down ,posedge rst)
begin
if(rst)
	out<=0;
else
begin
	case(out)
		0:begin 
			if(up==0&&down==1) out<=1;
			else out<=0;
			end
		max:begin
			if(up==0&&down==0)	out<=out;
			else if(down==1) out<=out-1;
			else out<=out;
			end
		default: begin
			if(up==0&&down==0)	out<=out+1;
			else if(up==1&&down==1)	out<=out-1;
			else	out<=out;
			end
			endcase
end
end
endmodule