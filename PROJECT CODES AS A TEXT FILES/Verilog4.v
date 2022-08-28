module inst (
reset_all,x_tcount,up_pcount,down_pcount,T_tcount,P_pcount,out_rom,empty,full
);
    parameter n=3;
    input reset_all,x_tcount,up_pcount,down_pcount;

    output  [n+1:0] out_rom;
    inout   [1:0] T_tcount;
    inout   [n-1:0] P_pcount;
	 output  empty,full;

tcounter U1 (.x(x_tcount),.rst(reset_all),.tcount(T_tcount));

sbqm F1 (.rst(reset_all),.up(up_pcount),.down(down_pcount),.out(P_pcount));


ROM5_32 G1 (.Pcount(P_pcount),.Tcount(T_tcount),.out(out_rom));

assign empty=(P_pcount==3'b000)?1:0;
assign full=(P_pcount==3'b111)?1:0;

endmodule