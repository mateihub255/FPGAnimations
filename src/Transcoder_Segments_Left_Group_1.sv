module Transcoder_Segments_Left_Group_1(
    input logic [5:0] addr,
    output logic [7:0] data
    );
    
    always_comb
    begin
        case(addr)
            
            0, 5, 10, 15: data = 8'b1111_1110;//seg0
            1, 6, 11, 16: data = 8'b1111_1101; //seg1
            2, 7, 12, 17: data = 8'b1111_1011; //seg2
            3, 8, 13, 46: data = 8'b1110_1111; //seg4
            4, 9, 14, 47: data = 8'b1101_1111; //seg5
            42, 43, 44, 45: data = 8'b1111_0111; //seg3
            
            18, 19, 20, 21, 22, 23, 24, 25,
            26, 27, 28, 29, 30, 31, 32, 33,
            34, 35, 36, 37, 38, 39, 40, 41, 50: data = 8'b1111_1111;
            default: data = 8'b1111_1111;
        endcase
    end
    
endmodule
