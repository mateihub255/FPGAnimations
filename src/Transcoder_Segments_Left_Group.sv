module Transcoder_Segments_Left_Group(
    input logic [5:0] addr,
    output logic [7:0] data
    );
    
    always_comb
    begin
        case(addr)
            0, 1, 2, 3: data = 8'b1111_1110; //seg0
            13, 14, 15, 16: data = 8'b1011_1111; //seg6
            17: data = 8'b1110_1111; //seg4
            18, 19, 20, 21: data = 8'b1111_0111; //seg3
            31, 32, 33, 34: data = 8'b1011_1111; // seg6
            35: data = 8'b1101_1111; //seg5
            
            4, 5, 6, 7, 8, 9, 10, 11, 12, 22, 
            23, 24, 25, 26, 27, 28, 29, 30, 36: data = 8'b1111_1111; //off state
            default: data = 8'b1111_1111; 
        endcase
    end
    
endmodule
