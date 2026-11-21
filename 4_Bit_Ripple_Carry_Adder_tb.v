// testbench : 4-bit adder, all faults of full adder 0 (faults 1 to 32)
// inputs are given in the order A0 B0, A1 B1, A2 B2, A3 B3, then Ci

module adder_tb;
  reg A0, B0, A1, B1, A2, B2, A3, B3;
  reg Ci;
  wire S0, S1, S2, S3, C3;
  wire d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31, d32;
  wire found;

  fault_check uut(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3,
                  d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31, d32, found);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, adder_tb);

    $display("d = 1 means fault detected by this test vector");
    $display("");
    $display("vector  A0B0 A1B1 A2B2 A3B3 Ci | S0 S1 S2 S3 C3 | d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 d18 d19 d20 d21 d22 d23 d24 d25 d26 d27 d28 d29 d30 d31 d32 | found");

    A0 = 0; B0 = 0;  A1 = 0; B1 = 0;  A2 = 0; B2 = 0;  A3 = 0; B3 = 0;  Ci = 0; #10;
    $display("T0      %b %b  %b %b  %b %b  %b %b  %b  | %b  %b  %b  %b  %b  | %b  %b  %b  %b  %b  %b  %b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b  | %b", A0, B0, A1, B1, A2, B2, A3, B3, Ci, S0, S1, S2, S3, C3, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31, d32, found);

    A0 = 1; B0 = 1;  A1 = 1; B1 = 1;  A2 = 1; B2 = 1;  A3 = 1; B3 = 1;  Ci = 1; #10;
    $display("T1      %b %b  %b %b  %b %b  %b %b  %b  | %b  %b  %b  %b  %b  | %b  %b  %b  %b  %b  %b  %b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b  | %b", A0, B0, A1, B1, A2, B2, A3, B3, Ci, S0, S1, S2, S3, C3, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31, d32, found);

    A0 = 1; B0 = 0;  A1 = 1; B1 = 0;  A2 = 1; B2 = 0;  A3 = 1; B3 = 0;  Ci = 1; #10;
    $display("T2      %b %b  %b %b  %b %b  %b %b  %b  | %b  %b  %b  %b  %b  | %b  %b  %b  %b  %b  %b  %b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b  | %b", A0, B0, A1, B1, A2, B2, A3, B3, Ci, S0, S1, S2, S3, C3, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31, d32, found);

    A0 = 0; B0 = 1;  A1 = 0; B1 = 1;  A2 = 0; B2 = 1;  A3 = 0; B3 = 1;  Ci = 0; #10;
    $display("T3      %b %b  %b %b  %b %b  %b %b  %b  | %b  %b  %b  %b  %b  | %b  %b  %b  %b  %b  %b  %b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b  | %b", A0, B0, A1, B1, A2, B2, A3, B3, Ci, S0, S1, S2, S3, C3, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31, d32, found);

    A0 = 0; B0 = 1;  A1 = 1; B1 = 0;  A2 = 0; B2 = 1;  A3 = 1; B3 = 0;  Ci = 0; #10;
    $display("T4      %b %b  %b %b  %b %b  %b %b  %b  | %b  %b  %b  %b  %b  | %b  %b  %b  %b  %b  %b  %b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b  | %b", A0, B0, A1, B1, A2, B2, A3, B3, Ci, S0, S1, S2, S3, C3, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31, d32, found);

    A0 = 1; B0 = 0;  A1 = 0; B1 = 1;  A2 = 1; B2 = 0;  A3 = 0; B3 = 1;  Ci = 1; #10;
    $display("T5      %b %b  %b %b  %b %b  %b %b  %b  | %b  %b  %b  %b  %b  | %b  %b  %b  %b  %b  %b  %b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b  | %b", A0, B0, A1, B1, A2, B2, A3, B3, Ci, S0, S1, S2, S3, C3, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31, d32, found);

    A0 = 1; B0 = 1;  A1 = 0; B1 = 0;  A2 = 0; B2 = 0;  A3 = 0; B3 = 0;  Ci = 0; #10;
    $display("T6      %b %b  %b %b  %b %b  %b %b  %b  | %b  %b  %b  %b  %b  | %b  %b  %b  %b  %b  %b  %b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b  | %b", A0, B0, A1, B1, A2, B2, A3, B3, Ci, S0, S1, S2, S3, C3, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31, d32, found);

    A0 = 0; B0 = 0;  A1 = 0; B1 = 0;  A2 = 0; B2 = 0;  A3 = 1; B3 = 1;  Ci = 0; #10;
    $display("T7      %b %b  %b %b  %b %b  %b %b  %b  | %b  %b  %b  %b  %b  | %b  %b  %b  %b  %b  %b  %b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b  | %b", A0, B0, A1, B1, A2, B2, A3, B3, Ci, S0, S1, S2, S3, C3, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31, d32, found);

    A0 = 1; B0 = 0;  A1 = 0; B1 = 0;  A2 = 0; B2 = 0;  A3 = 0; B3 = 0;  Ci = 0; #10;
    $display("T8      %b %b  %b %b  %b %b  %b %b  %b  | %b  %b  %b  %b  %b  | %b  %b  %b  %b  %b  %b  %b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b  | %b", A0, B0, A1, B1, A2, B2, A3, B3, Ci, S0, S1, S2, S3, C3, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31, d32, found);

    A0 = 0; B0 = 0;  A1 = 0; B1 = 0;  A2 = 0; B2 = 0;  A3 = 0; B3 = 0;  Ci = 1; #10;
    $display("T9      %b %b  %b %b  %b %b  %b %b  %b  | %b  %b  %b  %b  %b  | %b  %b  %b  %b  %b  %b  %b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b  | %b", A0, B0, A1, B1, A2, B2, A3, B3, Ci, S0, S1, S2, S3, C3, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31, d32, found);

    $finish;
  end
endmodule