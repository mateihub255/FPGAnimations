module Clock_Divider#
    (
    parameter limit_div0 = 19_999_999,
    parameter limit_div1 = 9_999_999,
    parameter limit_div2 = 6_666_666,
    parameter limit_div3 = 3_333_333
    )
    (
    input logic clock,
    input logic reset,
    input logic [1:0] speed_sel,
    output logic clock_divided
    );
    
    logic [24:0] count_divided = 0;
    logic [24:0] current_limit;
    
     //Multiplexer
    always_comb 
    begin
        case(speed_sel)
        
        0:  current_limit = limit_div0;
        1:  current_limit = limit_div1;  
        2:  current_limit = limit_div2; 
        3:  current_limit = limit_div3;
     
        default: current_limit = limit_div0;   
        endcase
    end
    
    assign clock_divided = (count_divided >= current_limit);
    
    //Counter
    always_ff @(posedge clock or posedge reset) 
    begin
        if(reset == 1)
            begin
                count_divided <= 0;
            end
        else
            begin
                if(clock_divided == 1)
                    begin
                        count_divided <= 0;
                    end
                else
                    begin
                        count_divided <= count_divided + 1;
                    end  
            end
    end
    
endmodule

