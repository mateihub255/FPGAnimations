module MUX2(
    input logic [7:0] in0, //transcoder seg_left
    input logic [7:0] in1, 
    input logic [7:0] in2, 
    input logic [7:0] in3, 
    input logic [7:0] in4,
    input logic [7:0] in5,
    input logic sel, 
    output logic [7:0] out0, //seg_left_group
    output logic [7:0] out1,
    output logic [7:0] out2
    );
    
    always_comb 
    begin
        if(sel == 0)
            begin
                out0 = in0;
                out1 = in1;
                out2 = in2;
            end 
        else
            begin
                out0 = in3;
                out1 = in4;
                out2 = in5;
            end
    end
      
endmodule
