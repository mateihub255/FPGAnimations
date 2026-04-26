module Transcoder_Digits_1(
    input logic [5:0] addr,
    output logic [7:0] data
    );
    
    always_comb
    begin
        case(addr)
            0, 1, 2, 45, 46, 47: data = 8'b11111110; //digit0
            3, 4, 5, 6, 7, 44: data = 8'b11111101; //digit1        
            8, 9, 10, 11 ,12, 43: data = 8'b11111011; //digit2        
            13, 14, 15, 16, 17, 42: data = 8'b11110111; //digit3        
            18, 19, 20, 21, 22, 41: data = 8'b11101111; //digit4        
            23, 24, 25, 26, 27, 40: data = 8'b11011111; //digit5        
            28, 29, 30, 31, 32, 39: data = 8'b10111111; //digit6        
            33, 34, 35, 36, 37, 38: data = 8'b01111111;  //digit7 
           
           50: data = 8'b11111111;
           default: data = 8'b11111111;
        endcase
    end
    
endmodule
