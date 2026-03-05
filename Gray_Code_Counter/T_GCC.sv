module T_GCC(reset, clk, dir);

output logic reset, clk, dir;

initial
    begin
        clk = 0;
        forever #1 clk = !clk;
    end 
    
initial 
    begin
        reset = 1;
        #1 reset = 0;
        #1 reset = 1;
        #35 reset = 0;
    end
    
initial
    begin
        dir = 0;
        #17 dir = 1;
        #13 dir = 0;
    end 

endmodule : T_GCC
