//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/16/2026 04:16:25 PM
// Design Name: 
// Module Name: tb_ALS166
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_ALS166(clr, sh_ld, clk_inh, clk, ser, input_bus, q);

output logic clr, sh_ld, clk_inh, clk, ser;
output logic [7:0] input_bus;

input logic q;
    
initial // Clock generator
    begin
        clk = 0;
        forever #1 clk = !clk;
    end

initial
    begin
        clk_inh = 1;
        #1 clk_inh = 0;
        #11 clk_inh = 1;
        #2 clk_inh = 0;
    end
    
initial
    begin
        clr = 1;
        #1 clr = 0;
        #1 clr = 1;
    end
    
initial
    begin
        ser = 0;
        #2 ser = 1;
        #2 ser = 0;
    end
    
initial
    begin
        sh_ld = 1;
        #11 sh_ld = 0;
        #2 sh_ld = 1;
    end
    
initial
    begin
        input_bus = 8'h00;
        #11 input_bus = 8'hc5;
        #1 input_bus = 8'h00;
    end
    
endmodule : tb_ALS166;
