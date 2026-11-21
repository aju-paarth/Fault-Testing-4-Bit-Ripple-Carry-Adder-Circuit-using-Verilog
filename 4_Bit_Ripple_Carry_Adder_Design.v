// fault free adder
module adder_good(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 1 : A0/0
module adder_f1(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, 1'b0);
  buf buffF0(F0, 1'b0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 2 : A0/1
module adder_f2(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, 1'b1);
  buf buffF0(F0, 1'b1);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 3 : B0/0
module adder_f3(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, 1'b0);
  buf buffG0(G0, 1'b0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 4 : B0/1
module adder_f4(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, 1'b1);
  buf buffG0(G0, 1'b1);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 5 : Ci/0
module adder_f5(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, 1'b0);
  buf buffM0(M0, 1'b0);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 6 : Ci/1
module adder_f6(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, 1'b1);
  buf buffM0(M0, 1'b1);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 7 : D0/0
module adder_f7(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, 1'b0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 8 : D0/1
module adder_f8(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, 1'b1);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 9 : E0/0
module adder_f9(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, 1'b0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 10 : E0/1
module adder_f10(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, 1'b1);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 11 : F0/0
module adder_f11(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, 1'b0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 12 : F0/1
module adder_f12(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, 1'b1);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 13 : G0/0
module adder_f13(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, 1'b0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 14 : G0/1
module adder_f14(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, 1'b1);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 15 : H0/0
module adder_f15(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, 1'b0);
  buf buffL0(L0, 1'b0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 16 : H0/1
module adder_f16(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, 1'b1);
  buf buffL0(L0, 1'b1);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 17 : I0/0
module adder_f17(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, 1'b0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 18 : I0/1
module adder_f18(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, 1'b1, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 19 : J0/0
module adder_f19(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, 1'b0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 20 : J0/1
module adder_f20(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, 1'b1);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 21 : K0/0
module adder_f21(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, 1'b0);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 22 : K0/1
module adder_f22(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, 1'b1);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 23 : L0/0
module adder_f23(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, 1'b0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 24 : L0/1
module adder_f24(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, 1'b1);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 25 : M0/0
module adder_f25(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, 1'b0);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 26 : M0/1
module adder_f26(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, 1'b1);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 27 : N0/0
module adder_f27(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, 1'b0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 28 : N0/1
module adder_f28(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, 1'b1);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 29 : S0/0
module adder_f29(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;
  wire SS0;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(SS0, J0, K0);
  buf buffS0(S0, 1'b0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 30 : S0/1
module adder_f30(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;
  wire SS0;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(SS0, J0, K0);
  buf buffS0(S0, 1'b1);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, C0);
  buf buffM1(M1, C0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 31 : C0/0
module adder_f31(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, 1'b0);
  buf buffM1(M1, 1'b0);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// fault 32 : C0/1
module adder_f32(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3;
  output C3;
  wire D0, E0, F0, G0, H0, I0, J0, K0, L0, M0, N0, C0;
  wire D1, E1, F1, G1, H1, I1, J1, K1, L1, M1, N1, C1;
  wire D2, E2, F2, G2, H2, I2, J2, K2, L2, M2, N2, C2;
  wire D3, E3, F3, G3, H3, I3, J3, K3, L3, M3, N3;

  // full adder 0
  buf buffD0(D0, A0);
  buf buffF0(F0, A0);
  buf buffE0(E0, B0);
  buf buffG0(G0, B0);
  xor xor1_0(H0, D0, E0);
  and and1_0(I0, F0, G0);
  buf buffJ0(J0, H0);
  buf buffL0(L0, H0);
  buf buffK0(K0, Ci);
  buf buffM0(M0, Ci);
  xor xor2_0(S0, J0, K0);
  and and2_0(N0, L0, M0);
  or  or_0(C0, I0, N0);

  // full adder 1
  buf buffD1(D1, A1);
  buf buffF1(F1, A1);
  buf buffE1(E1, B1);
  buf buffG1(G1, B1);
  xor xor1_1(H1, D1, E1);
  and and1_1(I1, F1, G1);
  buf buffJ1(J1, H1);
  buf buffL1(L1, H1);
  buf buffK1(K1, 1'b1);
  buf buffM1(M1, 1'b1);
  xor xor2_1(S1, J1, K1);
  and and2_1(N1, L1, M1);
  or  or_1(C1, I1, N1);

  // full adder 2
  buf buffD2(D2, A2);
  buf buffF2(F2, A2);
  buf buffE2(E2, B2);
  buf buffG2(G2, B2);
  xor xor1_2(H2, D2, E2);
  and and1_2(I2, F2, G2);
  buf buffJ2(J2, H2);
  buf buffL2(L2, H2);
  buf buffK2(K2, C1);
  buf buffM2(M2, C1);
  xor xor2_2(S2, J2, K2);
  and and2_2(N2, L2, M2);
  or  or_2(C2, I2, N2);

  // full adder 3
  buf buffD3(D3, A3);
  buf buffF3(F3, A3);
  buf buffE3(E3, B3);
  buf buffG3(G3, B3);
  xor xor1_3(H3, D3, E3);
  and and1_3(I3, F3, G3);
  buf buffJ3(J3, H3);
  buf buffL3(L3, H3);
  buf buffK3(K3, C2);
  buf buffM3(M3, C2);
  xor xor2_3(S3, J3, K3);
  and and2_3(N3, L3, M3);
  or  or_3(C3, I3, N3);
endmodule


// compare circuits
module compare(S0g, S1g, S2g, S3g, C3g, S0f, S1f, S2f, S3f, C3f, d);
  input S0g, S1g, S2g, S3g, C3g;
  input S0f, S1f, S2f, S3f, C3f;
  output d;
  wire e0, e1, e2, e3, e4;

  xor x0(e0, S0g, S0f);
  xor x1(e1, S1g, S1f);
  xor x2(e2, S2g, S2f);
  xor x3(e3, S3g, S3f);
  xor x4(e4, C3g, C3f);
  or  o1(d, e0, e1, e2, e3, e4);
endmodule


// checking circuit for the 32 faults of full adder 0
module fault_check(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31, d32, found);
  input A0, A1, A2, A3;
  input B0, B1, B2, B3;
  input Ci;
  output S0, S1, S2, S3, C3;
  output d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31, d32;
  output found;

  wire S0_1, S1_1, S2_1, S3_1, C3_1;
  wire S0_2, S1_2, S2_2, S3_2, C3_2;
  wire S0_3, S1_3, S2_3, S3_3, C3_3;
  wire S0_4, S1_4, S2_4, S3_4, C3_4;
  wire S0_5, S1_5, S2_5, S3_5, C3_5;
  wire S0_6, S1_6, S2_6, S3_6, C3_6;
  wire S0_7, S1_7, S2_7, S3_7, C3_7;
  wire S0_8, S1_8, S2_8, S3_8, C3_8;
  wire S0_9, S1_9, S2_9, S3_9, C3_9;
  wire S0_10, S1_10, S2_10, S3_10, C3_10;
  wire S0_11, S1_11, S2_11, S3_11, C3_11;
  wire S0_12, S1_12, S2_12, S3_12, C3_12;
  wire S0_13, S1_13, S2_13, S3_13, C3_13;
  wire S0_14, S1_14, S2_14, S3_14, C3_14;
  wire S0_15, S1_15, S2_15, S3_15, C3_15;
  wire S0_16, S1_16, S2_16, S3_16, C3_16;
  wire S0_17, S1_17, S2_17, S3_17, C3_17;
  wire S0_18, S1_18, S2_18, S3_18, C3_18;
  wire S0_19, S1_19, S2_19, S3_19, C3_19;
  wire S0_20, S1_20, S2_20, S3_20, C3_20;
  wire S0_21, S1_21, S2_21, S3_21, C3_21;
  wire S0_22, S1_22, S2_22, S3_22, C3_22;
  wire S0_23, S1_23, S2_23, S3_23, C3_23;
  wire S0_24, S1_24, S2_24, S3_24, C3_24;
  wire S0_25, S1_25, S2_25, S3_25, C3_25;
  wire S0_26, S1_26, S2_26, S3_26, C3_26;
  wire S0_27, S1_27, S2_27, S3_27, C3_27;
  wire S0_28, S1_28, S2_28, S3_28, C3_28;
  wire S0_29, S1_29, S2_29, S3_29, C3_29;
  wire S0_30, S1_30, S2_30, S3_30, C3_30;
  wire S0_31, S1_31, S2_31, S3_31, C3_31;
  wire S0_32, S1_32, S2_32, S3_32, C3_32;

  adder_good m0(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0, S1, S2, S3, C3);

  adder_f1  m1(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_1, S1_1, S2_1, S3_1, C3_1);
  adder_f2  m2(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_2, S1_2, S2_2, S3_2, C3_2);
  adder_f3  m3(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_3, S1_3, S2_3, S3_3, C3_3);
  adder_f4  m4(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_4, S1_4, S2_4, S3_4, C3_4);
  adder_f5  m5(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_5, S1_5, S2_5, S3_5, C3_5);
  adder_f6  m6(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_6, S1_6, S2_6, S3_6, C3_6);
  adder_f7  m7(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_7, S1_7, S2_7, S3_7, C3_7);
  adder_f8  m8(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_8, S1_8, S2_8, S3_8, C3_8);
  adder_f9  m9(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_9, S1_9, S2_9, S3_9, C3_9);
  adder_f10 m10(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_10, S1_10, S2_10, S3_10, C3_10);
  adder_f11 m11(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_11, S1_11, S2_11, S3_11, C3_11);
  adder_f12 m12(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_12, S1_12, S2_12, S3_12, C3_12);
  adder_f13 m13(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_13, S1_13, S2_13, S3_13, C3_13);
  adder_f14 m14(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_14, S1_14, S2_14, S3_14, C3_14);
  adder_f15 m15(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_15, S1_15, S2_15, S3_15, C3_15);
  adder_f16 m16(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_16, S1_16, S2_16, S3_16, C3_16);
  adder_f17 m17(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_17, S1_17, S2_17, S3_17, C3_17);
  adder_f18 m18(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_18, S1_18, S2_18, S3_18, C3_18);
  adder_f19 m19(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_19, S1_19, S2_19, S3_19, C3_19);
  adder_f20 m20(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_20, S1_20, S2_20, S3_20, C3_20);
  adder_f21 m21(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_21, S1_21, S2_21, S3_21, C3_21);
  adder_f22 m22(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_22, S1_22, S2_22, S3_22, C3_22);
  adder_f23 m23(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_23, S1_23, S2_23, S3_23, C3_23);
  adder_f24 m24(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_24, S1_24, S2_24, S3_24, C3_24);
  adder_f25 m25(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_25, S1_25, S2_25, S3_25, C3_25);
  adder_f26 m26(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_26, S1_26, S2_26, S3_26, C3_26);
  adder_f27 m27(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_27, S1_27, S2_27, S3_27, C3_27);
  adder_f28 m28(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_28, S1_28, S2_28, S3_28, C3_28);
  adder_f29 m29(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_29, S1_29, S2_29, S3_29, C3_29);
  adder_f30 m30(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_30, S1_30, S2_30, S3_30, C3_30);
  adder_f31 m31(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_31, S1_31, S2_31, S3_31, C3_31);
  adder_f32 m32(A0, A1, A2, A3, B0, B1, B2, B3, Ci, S0_32, S1_32, S2_32, S3_32, C3_32);

  compare c1(S0, S1, S2, S3, C3, S0_1, S1_1, S2_1, S3_1, C3_1, d1);
  compare c2(S0, S1, S2, S3, C3, S0_2, S1_2, S2_2, S3_2, C3_2, d2);
  compare c3(S0, S1, S2, S3, C3, S0_3, S1_3, S2_3, S3_3, C3_3, d3);
  compare c4(S0, S1, S2, S3, C3, S0_4, S1_4, S2_4, S3_4, C3_4, d4);
  compare c5(S0, S1, S2, S3, C3, S0_5, S1_5, S2_5, S3_5, C3_5, d5);
  compare c6(S0, S1, S2, S3, C3, S0_6, S1_6, S2_6, S3_6, C3_6, d6);
  compare c7(S0, S1, S2, S3, C3, S0_7, S1_7, S2_7, S3_7, C3_7, d7);
  compare c8(S0, S1, S2, S3, C3, S0_8, S1_8, S2_8, S3_8, C3_8, d8);
  compare c9(S0, S1, S2, S3, C3, S0_9, S1_9, S2_9, S3_9, C3_9, d9);
  compare c10(S0, S1, S2, S3, C3, S0_10, S1_10, S2_10, S3_10, C3_10, d10);
  compare c11(S0, S1, S2, S3, C3, S0_11, S1_11, S2_11, S3_11, C3_11, d11);
  compare c12(S0, S1, S2, S3, C3, S0_12, S1_12, S2_12, S3_12, C3_12, d12);
  compare c13(S0, S1, S2, S3, C3, S0_13, S1_13, S2_13, S3_13, C3_13, d13);
  compare c14(S0, S1, S2, S3, C3, S0_14, S1_14, S2_14, S3_14, C3_14, d14);
  compare c15(S0, S1, S2, S3, C3, S0_15, S1_15, S2_15, S3_15, C3_15, d15);
  compare c16(S0, S1, S2, S3, C3, S0_16, S1_16, S2_16, S3_16, C3_16, d16);
  compare c17(S0, S1, S2, S3, C3, S0_17, S1_17, S2_17, S3_17, C3_17, d17);
  compare c18(S0, S1, S2, S3, C3, S0_18, S1_18, S2_18, S3_18, C3_18, d18);
  compare c19(S0, S1, S2, S3, C3, S0_19, S1_19, S2_19, S3_19, C3_19, d19);
  compare c20(S0, S1, S2, S3, C3, S0_20, S1_20, S2_20, S3_20, C3_20, d20);
  compare c21(S0, S1, S2, S3, C3, S0_21, S1_21, S2_21, S3_21, C3_21, d21);
  compare c22(S0, S1, S2, S3, C3, S0_22, S1_22, S2_22, S3_22, C3_22, d22);
  compare c23(S0, S1, S2, S3, C3, S0_23, S1_23, S2_23, S3_23, C3_23, d23);
  compare c24(S0, S1, S2, S3, C3, S0_24, S1_24, S2_24, S3_24, C3_24, d24);
  compare c25(S0, S1, S2, S3, C3, S0_25, S1_25, S2_25, S3_25, C3_25, d25);
  compare c26(S0, S1, S2, S3, C3, S0_26, S1_26, S2_26, S3_26, C3_26, d26);
  compare c27(S0, S1, S2, S3, C3, S0_27, S1_27, S2_27, S3_27, C3_27, d27);
  compare c28(S0, S1, S2, S3, C3, S0_28, S1_28, S2_28, S3_28, C3_28, d28);
  compare c29(S0, S1, S2, S3, C3, S0_29, S1_29, S2_29, S3_29, C3_29, d29);
  compare c30(S0, S1, S2, S3, C3, S0_30, S1_30, S2_30, S3_30, C3_30, d30);
  compare c31(S0, S1, S2, S3, C3, S0_31, S1_31, S2_31, S3_31, C3_31, d31);
  compare c32(S0, S1, S2, S3, C3, S0_32, S1_32, S2_32, S3_32, C3_32, d32);

  or o1(found, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31, d32);
endmodule