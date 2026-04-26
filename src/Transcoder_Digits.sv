module Transcoder_Digits(
    input logic [5:0] addr,
    output logic [7:0] data
    );
    
    always_comb
    begin
        case(addr)
            0, 16, 17, 18, 34, 35: data = 8'b11111110; //digit0
            1, 15, 19, 33: data = 8'b11111101; //digit1
            2, 14, 20, 32: data = 8'b11111011; //digit2
            3, 13, 21, 31: data = 8'b11110111; //digit3
            4, 12, 22, 30: data = 8'b11101111; //digit4
            5, 11, 23, 29: data = 8'b11011111; //digit5
            6, 10, 24, 28: data = 8'b10111111; //digit6
            7, 8, 9, 25, 26, 27: data = 8'b01111111;  //digit7
            
            36: data = 8'b11111111;
            default: data = 8'b11111111; 
        endcase 
    end
    
endmodule
