`timescale 1ns / 1ps

module test_alu_top;

    reg [3:0]          alu_ctr;
    reg [31:0]         regA_i,regB_i;
    
    wire [31:0]        res_o;
    wire               zero;
    
    alu_top alu_top0(.regA_i(regA_i), .regB_i(regB_i), .alu_ctr(alu_ctr), .res_o(res_o), .zero(zero));
    
    initial begin
        
        alu_ctr = 4'b0000;  
        regA_i = 32'b0000_0000_0000_0000_0000_0000_1111_0000;
        regB_i = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
 
        #100
        alu_ctr = 4'b1000;  
        regA_i = 32'b0000_0000_1111_1111_1111_1111_1111_1111; 
        regB_i = 32'b0000_0000_1111_1111_1111_1111_1111_1111; 
        
        #100
        alu_ctr = 4'b0110;  
        regA_i = 32'b0000_0000_1111_0000_1111_0000_1111_1111; 
        regB_i = 32'b0000_0000_0000_1111_0000_1111_1111_0000; 
        
        #100
        alu_ctr = 4'b1111;  
        regA_i = 32'b0000_0000_1111_1111_1111_1111_1111_1111; 
        regB_i = 32'b0000_0000_1111_1111_1111_1111_1111_1111; 
        
        #100
        alu_ctr = 4'b0010;  
        regA_i = 32'b0000_0000_1111_1111_1111_1111_1111_1111; 
        regB_i = 32'b1000_0000_0000_1111_1111_1111_1111_1111; 
        
        #100
        alu_ctr = 4'b0010;  
        regA_i = 32'b0000_0000_0000_1111_1111_1111_1111_1111; 
        regB_i = 32'b0000_0000_0001_1111_1111_1111_1111_1111; 
        
        #100
        alu_ctr = 4'b0011;  
        regA_i = 32'b0000_0000_1111_1111_1111_1111_1111_1111; 
        regB_i = 32'b0000_0000_0000_1111_1111_1111_1111_1111; 

        #100
        alu_ctr = 4'b0011;  
        regA_i = 32'b0000_0000_0000_0000_1111_1111_1111_1111; 
        regB_i = 32'b0000_0000_0000_1111_1111_1111_1111_1111; 
        
    end

endmodule
