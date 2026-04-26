module top(
    input logic clock,
    input logic reset,
    input logic enable,
    input logic sel,
    input logic [1:0] speed_sel,
    output logic [7:0] data_segments_left_group,
    output logic [7:0] data_segments_right_group,
    output logic [7:0] data_digits
    );
    
    logic clock_divided;
    logic [5:0] counter_out;
    logic [5:0] anim0_en, anim1_en;
    logic [7:0] data_segments_left_0, data_segments_right_0, data_segments_left_1, data_segments_right_1;
    logic [7:0] data_digits_0, data_digits_1;
    
    Clock_Divider Clock_Divider_0
    (
    .clock(clock), 
    .reset(reset),
    .speed_sel(speed_sel),
    .clock_divided(clock_divided)
    );
    
    Counter Counter_0(
    .clock(clock),
    .reset(reset),
    .enable(enable),
    .sel(sel),
    .clock_divided(clock_divided),
    .out(counter_out)
    );
    
    Decoder Demux_0(
    .in(counter_out),
    .sel(sel),
    .out0(anim0_en),
    .out1(anim1_en)
    );
    
    Transcoder_Segments_Left_Group Transcoder_Segments_Left_Group_0(
    .addr(anim0_en),
    .data(data_segments_left_0)
    );
    
    Transcoder_Segments_Right_Group Transcoder_Segments_Right_Group_0(
    .addr(anim0_en),
    .data(data_segments_right_0)
    );
    
    Transcoder_Digits Transcoder_Digits_0(
    .addr(anim0_en),
    .data(data_digits_0)
    );
    
    Transcoder_Segments_Left_Group_1 Transcoder_Segments_Left_Group_1(
    .addr(anim1_en),
    .data(data_segments_left_1)
    );
    
    Transcoder_Segments_Right_Group_1 Transcoder_Segments_Right_Group_1(
    .addr(anim1_en),
    .data(data_segments_right_1)
    );
    
    Transcoder_Digits_1 Transcoder_Digits_1(
    .addr(anim1_en),
    .data(data_digits_1)
    );
    
    MUX2 MUX2_0(
    .in0(data_segments_left_0),
    .in1(data_segments_right_0),
    .in2(data_digits_0), 
    .in3(data_segments_left_1),
    .in4(data_segments_right_1),
    .in5(data_digits_1),
    .sel(sel),
    .out0(data_segments_left_group),
    .out1(data_segments_right_group),
    .out2(data_digits)
    );
    
endmodule
