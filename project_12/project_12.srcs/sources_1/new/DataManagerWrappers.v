module DataManager(
    input  clock, reset, DONE_WRITING,
    input   SERVE_REG,
    input   dataA,
    output  OutOfData,
    output   regEn,
    output   FullPackOut,
    output   addrA,
    output   addrSelect
    );

    wire  clock, reset, DONE_WRITING;
    wire  [BSMODS-1:0] SERVE_REG;
    wire  [31:0] dataA;
    wire  OutOfData;
    wire  [BSMODS-1:0] regEn;
    wire  [DATASIZE-1:0] FullPackOut;
    wire  [31:0] addrA;
    wire  [1:0] addrSelect;
    );
