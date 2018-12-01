`default_nettype none

module parseUart(
    input logic clk, rst,
    input logic [7:0] data_in,
    input logic data_rdy,
    output logic [31:0] option_id,
    output logic [31:0] sptprice,
    output logic [31:0] strike,
    output logic [31:0] rate,
    output logic [31:0] volatility,
    output logic [31:0] otime,
    output logic [7:0] otype,
    output logic data_out_rdy);

    enum logic [4:0] {IDLE, RECEIVING,DONE} state, ns;

    logic [199:0] packet;

    //total number of receives should equal 21

    logic [4:0] received;

    assign otype = packet[7:0];
    assign otime = packet[39:8];
    assign volatility = packet[71:40];
    assign rate = packet[103:72];
    assign strike = packet[135:104];
    assign sptprice = packet[167:136];
    assign option_id = packet[199:168];

    // ns logic
    always_comb begin
        case(state)
            IDLE: begin
                if (data_rdy) begin
                    ns = RECEIVING;
                end
            end // IDLE:
            RECEIVING: begin
                if (data_rdy && received == 5'd24) begin
                    ns = DONE;
                end
            end // RECEIVING:
            DONE: begin
                ns = IDLE;
            end
        endcase
    end // ns_logic

    // output logic
    always_comb begin
        data_out_rdy = 1'b0;
        case(state)
            IDLE: begin
            end // IDLE:
            RECEIVING: begin
            end // RECEIVING:
            DONE: begin
                data_out_rdy = 1'b1;
            end
        endcase
    end // output logic

    // counter for UART data received
    always_ff @(posedge clk, posedge rst) begin
        if (rst) begin
            received <= 5'b0;
            packet <= 200'b0;
        end // if (rst)
        else if (data_rdy) begin
            received <= received + 5'b1;
            // data comes in LSB first
            packet <= {data_in, packet[199:7]};
        end // else if data_rdy
    end


    always_ff @(posedge clk, posedge rst) begin
        if (rst) begin
            state <= IDLE;
        end
        else begin
            state <= ns;
        end

    end 

endmodule: parseUart
