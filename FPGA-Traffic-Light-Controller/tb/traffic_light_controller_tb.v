`timescale 1ns / 1ps

module traffic_light_controller_tb;

    reg clk;
    reg rst;

    wire NS_R;
    wire NS_Y;
    wire NS_G;

    wire EW_R;
    wire EW_Y;
    wire EW_G;

    traffic_light_controller uut (
        .clk(clk),
        .rst(rst),

        .NS_R(NS_R),
        .NS_Y(NS_Y),
        .NS_G(NS_G),

        .EW_R(EW_R),
        .EW_Y(EW_Y),
        .EW_G(EW_G)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Reset and simulation control
    initial begin
        rst = 1;

        #20;
        rst = 0;

        #500;

        $finish;
    end

endmodule
