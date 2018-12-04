`default_nettype none


//outputs LSB first
module outputResultsByUart(
    input logic clk, rst,
    input logic [95:0] bs_results,
    input logic results_valid,
    input logic rdy_out,
    output logic rdy_for_new,
    output logic output_valid,
    output logic [7:0] data_out);

    enum logic [2:0] {IDLE, VALID_PKT, SENDING, DONE} state, ns;
    
    always_ff @(posedge clk, posedge rst) begin
        if (rst) begin
            state <= IDLE;
        end // if (rst)
        else begin
            state <= ns;
        end
    end

endmodule: outputResultsByUart