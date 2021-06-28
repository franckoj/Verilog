module dff();
//input 
reg d,reset,clk;
//output
 wire q;

dut dff(.q(q),
.d(d),
.reset(reset),
.clk(clk)
);
initial begin
#5clk =~clk;
end
    initial begin 
 reset=1;
 d <= 0;
 #100;
 reset=0;
 d <= 1;
 #100;
 d <= 0;
 #100;
 d <= 1;
end 
endmodule

