module alu_4bit_tb;

reg [3:0] a, b;
reg [1:0] sel;
wire [3:0] result;

alu_4bit uut (
    .a(a),
    .b(b),
    .sel(sel),
    .result(result)
);

initial begin
    // Addition
    a = 4'b0101; b = 4'b0011; sel = 2'b00; #10;

    // Subtraction
    a = 4'b1000; b = 4'b0010; sel = 2'b01; #10;

    // AND
    a = 4'b1100; b = 4'b1010; sel = 2'b10; #10;

    // OR
    a = 4'b1100; b = 4'b1010; sel = 2'b11; #10;

    $finish;
end

endmodule
