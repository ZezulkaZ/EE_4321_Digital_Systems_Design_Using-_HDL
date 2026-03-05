module GrayCodeCounter(reset, clk, dir, GC_count);

output logic [2:0]GC_count;
input logic reset, clk, dir;
    
logic [2:0] counter;
    
always @ (posedge clk or negedge reset) begin
    if (!reset) begin 
        counter <= 3'b000;
    end
    else begin
        if (!dir) begin
            counter <= counter + 1;
        end
        else begin
            counter <= counter - 1;
        end
    end  
end 
    
//converts counter into gray code and ouputs it on GC_count
assign GC_count[2] = counter[2];
assign GC_count[1] = counter[2] ^ counter[1];
assign GC_count[0] = counter[1] ^ counter[0];
    
endmodule : GrayCodeCounter
