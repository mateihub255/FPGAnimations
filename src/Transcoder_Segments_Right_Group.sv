module Transcoder_Segments_Right_Group(
    input logic [5:0] addr,
    output logic [7:0] data
    );
    
    always_comb
    begin
        case(addr)
            4, 5, 6, 7: data = 8'b1111_1110; //seg0
            8: data = 8'b1111_1101; //seg1
            9, 10, 11, 12: data = 8'b1011_1111; //seg6
            22, 23, 24, 25: data = 8'b1111_0111; //seg3
            26: data = 8'b1111_1011; //seg2
            27, 28, 29, 30: data = 8'b1011_1111; // seg6
            
            0, 1, 2, 3, 13, 14, 15, 
            16, 17, 18, 19, 20, 21,
            31, 32, 33, 34, 35, 36: data = 8'b1111_1111;
            default: data = 8'b1111_1111;
        endcase
    end
    
endmodule
