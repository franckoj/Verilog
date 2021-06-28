module dff(q,d,reset,clk);
output reg q;
input d,reset,clk;


always@(posedge clk)
if (~reset) begin
q<=1'b0;
end else begin
    q<=d;
    end
endmodule