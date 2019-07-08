`include "../../src/verilog/f8.v"
module tester_v_f8;
    // inputs
    reg clk;
    reg [1023:0] state_in;
    // output
    wire [1023:0] state_out;

    F8 uut(
        .clk(clk),
        .state_in(state_in),
        .state_out(state_out)
    );

    initial begin
        clk = 0;
        state_in = 1024'h0;
        state_in[1023:1016] = 8'h02;
        // $display("%h", state_in);
    end

    always begin
        #1 clk = ~clk;
        $display("%h", state_out);
    end

endmodule 