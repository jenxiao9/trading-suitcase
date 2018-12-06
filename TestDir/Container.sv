parameter BSMODS=2;
parameter DATASIZE=192;
module BSContainer(
  input logic clock, reset,
  input logic [BSMODS-1:0] regEn, BS_START,
  input logic [DATASIZE-1:0] FullPacket,
  output logic [BSMODS-1:0] hasUnusedData, REG_READY,BS_DONE, BS_READY, BS_IDLE,
  output logic [BSMODS-1:0][31:0] ap_return 
);
  logic [BSMODS-1:0][31:0] opt_id, sptprice, strike, rate, volatility, time_r, otype;
  genvar i;
  generate
    for(i=0; i<BSMODS; i++) begin: GBS
      design_3_wrapper PR
       (BS_READY[i],
        FullPacket,
        REG_READY[i],
        clock,
        regEn[i],
        hasUnusedData[i],
        opt_id[i],
        otype[i],
        rate[i],
        reset,
        sptprice[i],
        strike[i],
        time_r[i],
        volatility[i]);
     design_2_wrapper BS
          (clock,
           BS_DONE[i],
           BS_IDLE[i],
           BS_READY[i],
           ap_return[i],
           reset,
           BS_START[i],
           otype[i],
           rate[i],
           sptprice[i],
           strike[i],
           time_r[i],
           volatility[i]);;
    end
  endgenerate
  
endmodule: BSContainer
