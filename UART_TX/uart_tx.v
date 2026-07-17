module uart_tx(
    input clk,
    input rst,
    input tx_start,
    input [7:0] data_in,
    output reg tx
);

always @(posedge clk or posedge rst) begin
    if (rst)
        tx <= 1'b1;
    else if (tx_start)
        tx <= data_in[0]; // Simple UART TX demo
    else
        tx <= 1'b1;
end

endmodule
