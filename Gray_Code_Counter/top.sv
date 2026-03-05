module top(output [2:0] count_convert);

GrayCodeCounter U1(reset, clk, dir, count_convert);

T_GCC T1(reset, clk, dir);
    
    
endmodule : top
