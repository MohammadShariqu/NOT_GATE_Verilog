`timescale 1ns/1ps

module not_gate_tb;

reg A;
wire Y;

// Instantiate the NOT gate
not_gate uut (
    .A(A),
    .Y(Y)
);

initial begin
    // Generate VCD file for EPWave
    $dumpfile("dump.vcd");
    $dumpvars(0, not_gate_tb);

    // Apply test vectors
    A = 0;
    #10;

    A = 1;
    #10;

    $finish;
end

// Display values in console
initial begin
    $monitor("Time=%0t A=%b Y=%b", $time, A, Y);
end

endmodule