module Transcoder_Segments_Right_Group_1(
    input logic [5:0] addr,
    output logic [7:0] data
    );
    
    always_comb
    begin
        case(addr)
            
            20, 25, 30, 35: data = 8'b1111_1110;//seg0
            21, 26, 31, 36: data = 8'b1111_1101; //seg1
            22, 27, 32, 37: data = 8'b1111_1011; //seg2
            18, 23, 28, 33, 46: data = 8'b1110_1111; //seg4
            19, 24, 29, 34, 47: data = 8'b1101_1111; //seg5
            38, 39, 40, 41: data = 8'b1111_0111; //seg3
            
            0, 1, 2, 3, 4, 5, 6, 7, 8,
            9, 10, 11, 12, 13, 14, 15,
            16, 17, 18, 19, 42, 43, 44, 
            45, 46, 47, 50:         data = 8'b1111_1111;
            default: data = 8'b1111_1111;
        endcase
    end
    
endmodule
