module Top();
  //I want my "baud" rate to still match our counter so the delay between bits
  //will be 868*2=1736 with clock switching every #1 unit.
   
  logic clock, reset, UART_DONE;
  logic [7:0] UART_DATA;
  logic [191:0] dataToA;
  logic enA;
  logic weA; 
  logic startSystem,OutOfData;
  logic  [BSMODS-1:0] BS_READY;
  logic  [BSMODS-1:0] BS_DONE;
  logic  [BSMODS-1:0] BS_IDLE;
  logic  [BSMODS-1:0] hasUnusedData;
  logic  [BSMODS-1:0] REG_READY;
  logic  [BSMODS-1:0] BS_START;
  logic  [31:0] opt_id,sptprice,strike,rate, volatility,time_r,otype;
  logic  [10:0] d0,d1,d2,d3;
  logic  [1:0] sel;
  logic  [10:0] Q;
  logic  DONE_WRITING;
  logic  [BSMODS-1:0] SERVE_REG;
  logic  [191:0] dataA;
  logic  [BSMODS-1:0] regEn;
  logic  [DATASIZE-1:0] FullPackOut;
  logic  [1:0] addrSelect;
  logic  RX;
  logic  [7:0] LED;
  logic testSpot;
/////////////////////////////////////////////
  int i,j,k;
  assign BS_READY = BS_START;
  always_ff @(posedge clock, posedge reset) begin
    if (reset) begin
      BS_IDLE={BSMODS{1'b1}};
    end
    else begin
      for (k=0; k<BSMODS; k++) begin
        if (BS_START[k])
          BS_IDLE[k]<=1'b0;
      end
    end
  end
  logic[100][191:0] fakeMem; 
  logic [191:0] delayreg;
  assign dataA=delayreg;
  always_ff @(posedge clock) begin
    if (weA!=1'd0) begin
        fakeMem[Q]<=dataToA;
    end
    delayreg<=fakeMem[Q];
  end
  logic[5][191:0] fakePackets;
  initial begin
    clock=0;
    forever #1 clock=~clock;
  end
  task sendPack();
    for (i=0; i<5; i++) begin
      for (j=7;j<=191;j=j+8) begin
        #1736;
        #1736 RX=0;
        #1736 RX=fakePackets[i][j-7];
        #1736 RX=fakePackets[i][j-6];
        #1736 RX=fakePackets[i][j-5];
        #1736 RX=fakePackets[i][j-4];
        #1736 RX=fakePackets[i][j-3];
        #1736 RX=fakePackets[i][j-2];
        #1736 RX=fakePackets[i][j-1];
        #1736 RX=fakePackets[i][j-0];
        #1736 RX=1;
      end
    end
  endtask
  initial begin
    reset=0;
    testSpot=0;
    RX=1;
    fakePackets[0]=192'h4f0cc60a_4297cccd_428c0000_3cdb37ca_3fbbedfa_3a607038;
//12345679_3F800000_3F8CCCCD_40000000_40400000_40000000;
    fakePackets[1]=192'h4e2e334e4297cccd428c00003cdb37ca3f771de73a607038;
    //21323123_3F800000_3F8CCCCD_40000000_40400000_40000000;
    fakePackets[2]=192'h4f4007034297cccd428f00003cdb37ca3f55119d3a607038;
    //44444444_3F800000_3F8CCCCD_40000000_40400000_40000000;
    fakePackets[3]=192'h4efb25164297cccd428f00003cdb37ca3f55119d3a607038;
    //55555555_3F800000_3F8CCCCD_40000000_40400000_40000000;
    fakePackets[4]=192'h4f721b044297cccd429000003cdb37ca3f5b98c83a607038;
    //66666666_3F800000_3F8CCCCD_40000000_40400000_40000000;
    #1 reset=1;
    #1 reset=0;
    #1 startSystem=1;
    #5;
    #5 sendPack();
    testSpot=1;
    #100;
    //#5 sendPack();
    //#1 reset=1;
   // #1 reset=0;
    //#5 sendPack();
    //#5 sendPack();
    #100000 $finish;

  end
///////////////////////////////////////
  UARTTOMEM UM(
  clock, reset, UART_DONE,
  UART_DATA,
  DONE_WRITING,
  dataToA,
  d1,
  weA
  );
/////////////////////////////////////
  ControlModule CM(
    clock, reset, RX,
    UART_DONE,
    UART_DATA);

/////////////////////////////////////
   DataManager DM(
  clock, reset, DONE_WRITING,
  SERVE_REG,
  dataA,
   OutOfData,
   regEn,
   FullPackOut,
   d0,
   addrSelect
  );
/////////////////////////////////////
  Mux2to1 #(11) MUX (
  d0,d1,d2,d3,
  addrSelect,
   Q);
/////////////////////////////////////
  PacketRegister PR (
  clock,
  reset,
  regEn,BS_READY,
  FullPackOut,
   hasUnusedData, REG_READY,
   opt_id,sptprice,
  strike    ,
  rate      ,
  volatility,
  time_r    ,
  otype);
/////////////////////////////////////
  BLSController BLS(
  clock, reset, DONE_WRITING,OutOfData,
   BS_READY,
   BS_DONE,
   BS_IDLE,
   hasUnusedData,
   REG_READY,
   BS_START,
   SERVE_REG,
   LED);
endmodule: Top

