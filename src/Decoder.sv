module Decoder(
    input logic [5:0] in,
    input logic sel,
    output logic [5:0] out0,
    output logic [5:0] out1
    );
    
    always_comb 
    begin
        if(sel == 0)
            begin
                out0 = in;
                out1 = 36; // EXPERIMENT - POSIBIL SA NU MEARGA
            end 
        else
            begin
                out0 = 50;
                out1 = in;
            end
    end
      
endmodule
