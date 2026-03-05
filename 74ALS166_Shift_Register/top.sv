module top;
logic [7:0] input_bus;

ALS_166 U1(clr, sh_ld, clk_inh, clk, ser, input_bus, q);
tb_ALS166 T1(clr, sh_ld, clk_inh, clk, ser, input_bus, q);

    
endmodule
