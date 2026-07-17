module fifo_tb;

reg clk, rst;
reg wr_en, rd_en;
reg [7:0] data_in;
wire [7:0] data_out;
wire full, empty;

fifo uut (
    .clk(clk),
    .rst(rst),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .data_in(data_in),
    .data_out(data_out),
    .full(full),
    .empty(empty)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    wr_en = 0;
    rd_en = 0;
    data_in = 0;

    #10 rst = 0;

    // Write data
    wr_en = 1;
    data_in = 8'hAA; #10;
    data_in = 8'h55; #10;
    data_in = 8'hF0; #10;
    wr_en = 0;

    // Read data
    rd_en = 1; #30;
    rd_en = 0;

    $finish;
end

endmodule
