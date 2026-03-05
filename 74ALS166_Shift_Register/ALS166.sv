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

module ALS_166(clr, sh_ld, clk_inh, clk, ser, input_bus, q);

input logic clr, sh_ld, clk_inh, clk, ser;
input logic [7:0] input_bus;

output logic q;

logic [7:0] shift_reg;

assign q = shift_reg[7];

always_ff @(posedge clk or negedge clr) begin 
    if (!clr) begin 
        shift_reg <= 8'h00;
    end else if (!clk_inh) begin
        if (!sh_ld) begin
            shift_reg <= input_bus;
        end else begin
            shift_reg <= {shift_reg[6:0], ser};
        end
    end
end

endmodule : ALS_166;