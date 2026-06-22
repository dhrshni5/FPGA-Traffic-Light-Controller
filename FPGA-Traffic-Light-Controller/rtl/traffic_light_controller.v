module traffic_light_controller(
    input clk,
    input rst,

    output reg NS_R,
    output reg NS_Y,
    output reg NS_G,

    output reg EW_R,
    output reg EW_Y,
    output reg EW_G
);

    // State encoding
    parameter S0 = 2'b00; // NS Green
    parameter S1 = 2'b01; // NS Yellow
    parameter S2 = 2'b10; // EW Green
    parameter S3 = 2'b11; // EW Yellow

    reg [1:0] state;
    reg [3:0] timer;

    // State transitions
    always @(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            state <= S0;
            timer <= 0;
        end
        else
        begin
            timer <= timer + 1;

            case(state)

                S0:
                    if(timer == 9)
                    begin
                        state <= S1;
                        timer <= 0;
                    end

                S1:
                    if(timer == 2)
                    begin
                        state <= S2;
                        timer <= 0;
                    end

                S2:
                    if(timer == 9)
                    begin
                        state <= S3;
                        timer <= 0;
                    end

                S3:
                    if(timer == 2)
                    begin
                        state <= S0;
                        timer <= 0;
                    end

            endcase
        end
    end

    // Output Logic
    always @(*)
    begin
        case(state)

            S0:
            begin
                NS_G = 1;
                NS_Y = 0;
                NS_R = 0;

                EW_G = 0;
                EW_Y = 0;
                EW_R = 1;
            end

            S1:
            begin
                NS_G = 0;
                NS_Y = 1;
                NS_R = 0;

                EW_G = 0;
                EW_Y = 0;
                EW_R = 1;
            end

            S2:
            begin
                NS_G = 0;
                NS_Y = 0;
                NS_R = 1;

                EW_G = 1;
                EW_Y = 0;
                EW_R = 0;
            end

            S3:
            begin
                NS_G = 0;
                NS_Y = 0;
                NS_R = 1;

                EW_G = 0;
                EW_Y = 1;
                EW_R = 0;
            end

            default:
            begin
                NS_G = 0;
                NS_Y = 0;
                NS_R = 1;

                EW_G = 0;
                EW_Y = 0;
                EW_R = 1;
            end

        endcase
    end

endmodule