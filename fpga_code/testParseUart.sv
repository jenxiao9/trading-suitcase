module top(
);

    logic clk, rst;
    logic [7:0] data_in;
    logic data_rdy;
    logic [31:0] option_id, sptprice, strike, rate, volatility, otime, otype;
    logic data_out_rdy;

    parseUart pu(.*);

    initial begin
        clk = 1'0;
        forever #5 clk = ~clk;
    end

    initial begin

        $monitor("id: %x spt: %x strike: %x r: %x v: %x otime: %x otype: %x", option_id, sptprice, strike, rate, volatility,
            otime, otype);

        // result should look like 
        rst = 1'b0;
        @posedge clk;
        rst = 1'b1;
        for (i = 1; i < 22; i++) begin
            @posedge clk;
            data_rdy = 1'b1;
            data_in = i;
        end
    end

endmodule: top