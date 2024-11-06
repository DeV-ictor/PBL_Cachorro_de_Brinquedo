module JK_ff (
  input clk, rst_n,
  input j,k,
  output reg q, q_bar
);
  
  always@(posedge clk or posedge rst_n) begin
    if(rst_n) q <= 0;

    else begin 
      case({j,k})
        2'b00: q <= q;
        2'b01: q <= 1'b0;
        2'b10: q <= 1'b1;
        2'b11: q <= ~q;
      endcase
    end
	 
q_bar = ~q;

  end
 
endmodule
