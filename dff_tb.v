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
forever #5clk =~clk;
end
    initial begin 
 reset=1;
 d <= 0;
 #10;
 reset=0;
 d <= 1;
 #10;
 d <= 0;
 #10;
 d <= 1;
end 
endmodule

