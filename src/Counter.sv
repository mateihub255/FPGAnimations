module Counter(
    input logic clock,
    input logic reset,
    input logic enable,
    input logic sel,
    input logic clock_divided,
    output logic [5:0] out
    );

    
    always_ff @(posedge clock or posedge reset) 
    begin
        if(reset == 1)
            begin
                out <= 0;
            end
        else 
            begin 
                if(enable && clock_divided)
                begin
                    if(sel == 0)
                    begin
                        if(out == 35)
                            begin
                                out <= 0;
                            end
                        else
                            begin
                                out <= out + 1;
                            end
                    end   
                    else 
                    begin
                        if(out == 47)
                            begin
                                out <= 0;
                            end
                        else
                            begin
                                out <= out + 1;
                            end
                    end                       
                end
                else
                    begin
                        out <= out;
                    end
            end   
    end
    
endmodule
