module uart_tx_tb;

reg clk;
reg rst;
reg tx_start;
reg [7:0] data_in;
wire tx;

uart_tx uut (
    .clk(clk),
    .rst(rst),
    .tx_start(tx_start),
    .data_in(data_in),
    .tx(tx)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    tx_start = 0;
    data_in = 8'h00;

    #10 rst = 0;

    data_in = 8'hA5;
    tx_start = 1;
    #10;

    tx_start = 0;
    #20;

    $finish;
end

endmodule
