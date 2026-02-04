/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Wed Dec  3 15:54:44 2025
/////////////////////////////////////////////////////////////


module control_DW01_inc_0 ( A, SUM );
  input [12:0] A;
  output [12:0] SUM;

  wire   [12:2] carry;

  SAEDSLVT14_ADDH_1 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  SAEDSLVT14_ADDH_1 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  SAEDSLVT14_ADDH_1 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  SAEDSLVT14_ADDH_1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  SAEDSLVT14_ADDH_1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  SAEDSLVT14_ADDH_1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  SAEDSLVT14_ADDH_1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  SAEDSLVT14_ADDH_1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  SAEDSLVT14_ADDH_1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  SAEDSLVT14_ADDH_1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  SAEDSLVT14_ADDH_1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  SAEDHVT14_EO2_V1_0P75 U1 ( .A1(carry[12]), .A2(A[12]), .X(SUM[12]) );
  SAEDHVT14_INV_0P5 U2 ( .A(A[0]), .X(SUM[0]) );
endmodule


module control ( clock, start, S1S2mux, newDist, CompStart, PEready, VectorX, 
        VectorY, AddressR, AddressS1, AddressS2, completed );
  output [15:0] S1S2mux;
  output [15:0] newDist;
  output [15:0] PEready;
  output [3:0] VectorX;
  output [3:0] VectorY;
  output [7:0] AddressR;
  output [9:0] AddressS1;
  output [9:0] AddressS2;
  input clock, start;
  output CompStart, completed;
  wire   \S1S2mux[8] , \VectorX[2] , \VectorX[1] , \VectorX[0] , N49, N57, N65,
         N73, N81, N89, N97, N105, N113, N121, N129, N137, N145, N153, N161,
         N169, N184, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, \sub_125/carry[6] ,
         \sub_125/carry[7] , \sub_125/carry[8] , \sub_125/carry[9] ,
         \sub_125/carry[10] , \sub_125/carry[11] , \add_123/carry[3] ,
         \add_123/carry[2] , \add_123/carry[1] , \add_126/carry[3] ,
         \add_126/carry[2] , \add_126/carry[1] , \S1S2mux[0] , n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15;
  wire   [12:8] count;
  wire   [12:0] count_temp;
  wire   [11:0] temp;
  assign AddressS2[3] = \S1S2mux[8] ;
  assign AddressS1[3] = \S1S2mux[8] ;
  assign AddressR[3] = \S1S2mux[8] ;
  assign S1S2mux[8] = \S1S2mux[8] ;
  assign AddressS2[2] = \VectorX[2] ;
  assign AddressS1[2] = \VectorX[2] ;
  assign AddressR[2] = \VectorX[2] ;
  assign VectorX[2] = \VectorX[2] ;
  assign AddressS2[1] = \VectorX[1] ;
  assign AddressS1[1] = \VectorX[1] ;
  assign AddressR[1] = \VectorX[1] ;
  assign VectorX[1] = \VectorX[1] ;
  assign AddressS2[0] = \VectorX[0] ;
  assign AddressS1[0] = \VectorX[0] ;
  assign AddressR[0] = \VectorX[0] ;
  assign VectorX[0] = \VectorX[0] ;
  assign newDist[15] = N49;
  assign newDist[14] = N57;
  assign newDist[13] = N65;
  assign newDist[12] = N73;
  assign newDist[11] = N81;
  assign newDist[10] = N89;
  assign newDist[9] = N97;
  assign newDist[8] = N105;
  assign newDist[7] = N113;
  assign newDist[6] = N121;
  assign newDist[5] = N129;
  assign newDist[4] = N137;
  assign newDist[3] = N145;
  assign newDist[2] = N153;
  assign newDist[1] = N161;
  assign newDist[0] = N169;
  assign completed = N184;
  assign AddressS2[4] = \S1S2mux[0] ;
  assign S1S2mux[0] = \S1S2mux[0] ;

  SAEDSLVT14_FDPMQ_1 \count_reg[0]  ( .D0(count_temp[0]), .D1(start), .S(n118), 
        .CK(clock), .Q(\VectorX[0] ) );
  SAEDSLVT14_FDPMQ_1 \count_reg[1]  ( .D0(count_temp[1]), .D1(start), .S(n118), 
        .CK(clock), .Q(\VectorX[1] ) );
  SAEDSLVT14_FDPMQ_1 \count_reg[2]  ( .D0(count_temp[2]), .D1(start), .S(n118), 
        .CK(clock), .Q(\VectorX[2] ) );
  SAEDSLVT14_FDPMQ_1 \count_reg[3]  ( .D0(count_temp[3]), .D1(start), .S(n118), 
        .CK(clock), .Q(\S1S2mux[8] ) );
  SAEDHVT14_INV_0P5 U4 ( .A(n118), .X(n117) );
  SAEDHVT14_ND2_CDC_0P5 U5 ( .A1(start), .A2(n119), .X(n118) );
  SAEDHVT14_EO2_V1_0P75 U6 ( .A1(n120), .A2(count[11]), .X(VectorY[3]) );
  SAEDHVT14_OAI21_0P5 U8 ( .A1(n121), .A2(n122), .B(n120), .X(VectorY[2]) );
  SAEDHVT14_AO21_1 U9 ( .A1(count[8]), .A2(count[9]), .B(n121), .X(VectorY[1])
         );
  SAEDHVT14_INV_0P5 U10 ( .A(count[8]), .X(VectorY[0]) );
  SAEDHVT14_AO21_1 U11 ( .A1(\S1S2mux[8] ), .A2(\VectorX[0] ), .B(S1S2mux[10]), 
        .X(S1S2mux[9]) );
  SAEDHVT14_OAI21_0P5 U12 ( .A1(n123), .A2(n124), .B(VectorX[3]), .X(
        S1S2mux[7]) );
  SAEDHVT14_AO21_1 U13 ( .A1(\VectorX[2] ), .A2(\VectorX[0] ), .B(S1S2mux[6]), 
        .X(S1S2mux[5]) );
  SAEDHVT14_OAI21_0P5 U14 ( .A1(n123), .A2(n125), .B(VectorX[3]), .X(
        S1S2mux[6]) );
  SAEDHVT14_ND2_CDC_0P5 U15 ( .A1(n124), .A2(n126), .X(S1S2mux[3]) );
  SAEDHVT14_OAI21_0P5 U16 ( .A1(n127), .A2(n128), .B(n129), .X(S1S2mux[13]) );
  SAEDHVT14_OAI21_0P5 U17 ( .A1(VectorX[3]), .A2(n124), .B(n127), .X(
        S1S2mux[11]) );
  SAEDHVT14_AN2_1 U19 ( .A1(CompStart), .A2(N97), .X(PEready[9]) );
  SAEDHVT14_AN2_1 U20 ( .A1(CompStart), .A2(N105), .X(PEready[8]) );
  SAEDHVT14_AN2_1 U21 ( .A1(CompStart), .A2(N113), .X(PEready[7]) );
  SAEDHVT14_AN2_1 U23 ( .A1(CompStart), .A2(N129), .X(PEready[5]) );
  SAEDHVT14_AN2_1 U24 ( .A1(CompStart), .A2(N137), .X(PEready[4]) );
  SAEDHVT14_NR2_1 U26 ( .A1(n130), .A2(n132), .X(PEready[2]) );
  SAEDHVT14_NR2_1 U28 ( .A1(n130), .A2(n133), .X(PEready[15]) );
  SAEDHVT14_INV_0P5 U29 ( .A(CompStart), .X(n130) );
  SAEDHVT14_AN2_1 U30 ( .A1(CompStart), .A2(N57), .X(PEready[14]) );
  SAEDHVT14_AN2_1 U31 ( .A1(CompStart), .A2(N65), .X(PEready[13]) );
  SAEDHVT14_AN2_1 U32 ( .A1(CompStart), .A2(N73), .X(PEready[12]) );
  SAEDHVT14_AN2_1 U33 ( .A1(CompStart), .A2(N81), .X(PEready[11]) );
  SAEDHVT14_AN2_1 U34 ( .A1(CompStart), .A2(N89), .X(PEready[10]) );
  SAEDHVT14_AN2_1 U35 ( .A1(CompStart), .A2(N169), .X(PEready[0]) );
  SAEDHVT14_NR2_1 U36 ( .A1(n134), .A2(n135), .X(N97) );
  SAEDHVT14_NR3_0P5 U37 ( .A1(\VectorX[0] ), .A2(n125), .A3(n134), .X(N89) );
  SAEDHVT14_NR2_1 U38 ( .A1(n134), .A2(n124), .X(N81) );
  SAEDHVT14_NR3_0P5 U39 ( .A1(n127), .A2(n136), .A3(n137), .X(N73) );
  SAEDHVT14_NR3_0P5 U40 ( .A1(n127), .A2(n136), .A3(n135), .X(N65) );
  SAEDHVT14_AN3_0P5 U41 ( .A1(n128), .A2(S1S2mux[14]), .A3(n138), .X(N57) );
  SAEDHVT14_INV_0P5 U42 ( .A(n129), .X(S1S2mux[14]) );
  SAEDHVT14_INV_0P5 U43 ( .A(n133), .X(N49) );
  SAEDHVT14_INV_0P5 U44 ( .A(n119), .X(N184) );
  SAEDHVT14_OR4_1 U45 ( .A1(n133), .A2(n139), .A3(count[11]), .A4(n120), .X(
        n119) );
  SAEDHVT14_ND2_CDC_0P5 U47 ( .A1(S1S2mux[15]), .A2(n138), .X(n133) );
  SAEDHVT14_NR2_1 U48 ( .A1(n128), .A2(n129), .X(S1S2mux[15]) );
  SAEDHVT14_ND2_CDC_0P5 U49 ( .A1(\VectorX[1] ), .A2(S1S2mux[12]), .X(n129) );
  SAEDHVT14_ND2_CDC_0P5 U51 ( .A1(\VectorX[2] ), .A2(\S1S2mux[8] ), .X(n127)
         );
  SAEDHVT14_NR2_1 U52 ( .A1(n136), .A2(S1S2mux[1]), .X(N169) );
  SAEDHVT14_ND2_CDC_0P5 U53 ( .A1(n140), .A2(n128), .X(S1S2mux[1]) );
  SAEDHVT14_AN3_0P5 U54 ( .A1(n140), .A2(\VectorX[0] ), .A3(n138), .X(N161) );
  SAEDHVT14_INV_0P5 U55 ( .A(S1S2mux[2]), .X(n140) );
  SAEDHVT14_ND2_CDC_0P5 U56 ( .A1(n126), .A2(n125), .X(S1S2mux[2]) );
  SAEDHVT14_INV_0P5 U57 ( .A(n132), .X(N153) );
  SAEDHVT14_ND2_CDC_0P5 U58 ( .A1(n141), .A2(n128), .X(n132) );
  SAEDHVT14_INV_0P5 U59 ( .A(n131), .X(N145) );
  SAEDHVT14_ND2_CDC_0P5 U60 ( .A1(n141), .A2(\VectorX[0] ), .X(n131) );
  SAEDHVT14_AN3_0P5 U61 ( .A1(n126), .A2(\VectorX[1] ), .A3(n138), .X(n141) );
  SAEDHVT14_INV_0P5 U62 ( .A(n136), .X(n138) );
  SAEDHVT14_INV_0P5 U63 ( .A(S1S2mux[4]), .X(n126) );
  SAEDHVT14_ND2_CDC_0P5 U64 ( .A1(n123), .A2(VectorX[3]), .X(S1S2mux[4]) );
  SAEDHVT14_NR2_1 U65 ( .A1(n142), .A2(n137), .X(N137) );
  SAEDHVT14_NR2_1 U69 ( .A1(n142), .A2(n124), .X(N113) );
  SAEDHVT14_ND2_CDC_0P5 U70 ( .A1(\VectorX[0] ), .A2(\VectorX[1] ), .X(n124)
         );
  SAEDHVT14_INV_0P5 U72 ( .A(\VectorX[2] ), .X(n123) );
  SAEDHVT14_NR2_1 U73 ( .A1(n137), .A2(n134), .X(N105) );
  SAEDHVT14_OR3_0P5 U74 ( .A1(\VectorX[2] ), .A2(VectorX[3]), .A3(n136), .X(
        n134) );
  SAEDHVT14_INV_0P5 U76 ( .A(\S1S2mux[8] ), .X(VectorX[3]) );
  SAEDHVT14_ND2_CDC_0P5 U77 ( .A1(n125), .A2(n128), .X(n137) );
  SAEDHVT14_INV_0P5 U78 ( .A(\VectorX[0] ), .X(n128) );
  SAEDHVT14_ND2_CDC_0P5 U81 ( .A1(n121), .A2(n122), .X(n120) );
  SAEDSLVT14_ADDF_V2_1 \add_123/U1_1  ( .A(count[9]), .B(AddressR[5]), .CI(
        \add_123/carry[1] ), .CO(\add_123/carry[2] ), .S(AddressS1[6]) );
  SAEDSLVT14_ADDF_V2_1 \add_123/U1_2  ( .A(count[10]), .B(AddressR[6]), .CI(
        \add_123/carry[2] ), .CO(\add_123/carry[3] ), .S(AddressS1[7]) );
  SAEDSLVT14_ADDF_V2_1 \add_123/U1_3  ( .A(count[11]), .B(AddressR[7]), .CI(
        \add_123/carry[3] ), .CO(AddressS1[9]), .S(AddressS1[8]) );
  SAEDSLVT14_ADDF_V2_1 \add_126/U1_1  ( .A(temp[9]), .B(temp[5]), .CI(
        \add_126/carry[1] ), .CO(\add_126/carry[2] ), .S(AddressS2[6]) );
  SAEDSLVT14_ADDF_V2_1 \add_126/U1_2  ( .A(temp[10]), .B(temp[6]), .CI(
        \add_126/carry[2] ), .CO(\add_126/carry[3] ), .S(AddressS2[7]) );
  SAEDSLVT14_ADDF_V2_1 \add_126/U1_3  ( .A(temp[11]), .B(temp[7]), .CI(
        \add_126/carry[3] ), .CO(AddressS2[9]), .S(AddressS2[8]) );
  SAEDSLVT14_FDPCBQ_V2LP_1 \count_reg[4]  ( .D(n117), .RS(count_temp[4]), .CK(
        clock), .Q(AddressR[4]) );
  SAEDSLVT14_FDPCBQ_V2LP_1 \count_reg[7]  ( .D(n117), .RS(count_temp[7]), .CK(
        clock), .Q(AddressR[7]) );
  SAEDSLVT14_FDPCBQ_V2LP_1 \count_reg[8]  ( .D(n117), .RS(count_temp[8]), .CK(
        clock), .Q(count[8]) );
  SAEDSLVT14_FDPCBQ_V2LP_1 \count_reg[6]  ( .D(n117), .RS(count_temp[6]), .CK(
        clock), .Q(AddressR[6]) );
  SAEDSLVT14_FDPCBQ_V2LP_1 \count_reg[9]  ( .D(n117), .RS(count_temp[9]), .CK(
        clock), .Q(count[9]) );
  SAEDSLVT14_FDPCBQ_V2LP_1 \count_reg[5]  ( .D(n117), .RS(count_temp[5]), .CK(
        clock), .Q(AddressR[5]) );
  SAEDSLVT14_FDPCBQ_V2LP_1 \count_reg[11]  ( .D(n117), .RS(count_temp[11]), 
        .CK(clock), .Q(count[11]) );
  SAEDHVT14_AN2_1 \*cell*1429  ( .A1(count_temp[10]), .A2(n117), .X(n3) );
  SAEDHVT14_FDP_V2_0P5 \count_reg[10]  ( .D(n3), .CK(clock), .Q(count[10]), 
        .QN(n122) );
  SAEDSLVT14_INV_S_0P5 U18 ( .A(\VectorX[1] ), .X(n125) );
  SAEDSLVT14_OAI21_0P5 U22 ( .A1(VectorX[3]), .A2(n125), .B(n127), .X(
        S1S2mux[10]) );
  SAEDSLVT14_INV_S_0P5 U25 ( .A(n127), .X(S1S2mux[12]) );
  SAEDSLVT14_AN2_0P5 U27 ( .A1(CompStart), .A2(N121), .X(PEready[6]) );
  SAEDSLVT14_AN2_0P5 U50 ( .A1(CompStart), .A2(N161), .X(PEready[1]) );
  SAEDHVT14_OR3_1 U66 ( .A1(\S1S2mux[8] ), .A2(n123), .A3(n136), .X(n142) );
  SAEDHVT14_ND2_MM_0P5 U67 ( .A1(\VectorX[0] ), .A2(n125), .X(n135) );
  SAEDSLVT14_NR2_3 U68 ( .A1(count[9]), .A2(count[8]), .X(n121) );
  SAEDSLVT14_NR2_MM_0P5 U71 ( .A1(n130), .A2(n131), .X(PEready[3]) );
  SAEDSLVT14_NR2_MM_0P5 U75 ( .A1(n142), .A2(n135), .X(N129) );
  SAEDSLVT14_OR4_2 U79 ( .A1(AddressR[5]), .A2(AddressR[4]), .A3(AddressR[7]), 
        .A4(AddressR[6]), .X(n136) );
  SAEDSLVT14_OR3_2 U80 ( .A1(count[12]), .A2(count[11]), .A3(n120), .X(
        CompStart) );
  SAEDRVT14_NR3_8 U82 ( .A1(\VectorX[0] ), .A2(n125), .A3(n142), .X(N121) );
  SAEDSLVT14_EO2_V1_0P75 U83 ( .A1(temp[4]), .A2(temp[8]), .X(AddressS2[5]) );
  SAEDSLVT14_INV_PECO_1 U84 ( .A(temp[4]), .X(n4) );
  SAEDSLVT14_INV_PECO_1 U85 ( .A(temp[8]), .X(n5) );
  SAEDSLVT14_NR2_1P5 U86 ( .A1(n5), .A2(n4), .X(\add_126/carry[1] ) );
  SAEDSLVT14_EO2_V1_0P75 U87 ( .A1(AddressR[4]), .A2(count[8]), .X(
        AddressS1[5]) );
  SAEDSLVT14_INV_PECO_1 U88 ( .A(AddressR[4]), .X(n6) );
  SAEDSLVT14_INV_PECO_1 U89 ( .A(count[8]), .X(n7) );
  SAEDSLVT14_NR2_1P5 U90 ( .A1(n7), .A2(n6), .X(\add_123/carry[1] ) );
  SAEDSLVT14_INV_PECO_1 U91 ( .A(AddressR[4]), .X(temp[4]) );
  SAEDSLVT14_EN2_2 U92 ( .A1(count[9]), .A2(\sub_125/carry[9] ), .X(temp[9])
         );
  SAEDSLVT14_NR2_1P5 U93 ( .A1(\sub_125/carry[9] ), .A2(count[9]), .X(n8) );
  SAEDSLVT14_INV_PECO_1 U94 ( .A(n8), .X(\sub_125/carry[10] ) );
  SAEDSLVT14_EN2_2 U95 ( .A1(count[8]), .A2(\sub_125/carry[8] ), .X(temp[8])
         );
  SAEDSLVT14_NR2_1P5 U96 ( .A1(\sub_125/carry[8] ), .A2(count[8]), .X(n9) );
  SAEDSLVT14_INV_PECO_1 U97 ( .A(n9), .X(\sub_125/carry[9] ) );
  SAEDSLVT14_EN2_2 U98 ( .A1(AddressR[7]), .A2(\sub_125/carry[7] ), .X(temp[7]) );
  SAEDSLVT14_NR2_1P5 U99 ( .A1(\sub_125/carry[7] ), .A2(AddressR[7]), .X(n10)
         );
  SAEDSLVT14_INV_PECO_1 U100 ( .A(n10), .X(\sub_125/carry[8] ) );
  SAEDSLVT14_EN2_2 U101 ( .A1(AddressR[6]), .A2(\sub_125/carry[6] ), .X(
        temp[6]) );
  SAEDSLVT14_NR2_1P5 U102 ( .A1(\sub_125/carry[6] ), .A2(AddressR[6]), .X(n11)
         );
  SAEDSLVT14_INV_PECO_1 U103 ( .A(n11), .X(\sub_125/carry[7] ) );
  SAEDSLVT14_EN2_2 U104 ( .A1(AddressR[5]), .A2(AddressR[4]), .X(temp[5]) );
  SAEDSLVT14_NR2_1P5 U105 ( .A1(AddressR[4]), .A2(AddressR[5]), .X(n12) );
  SAEDSLVT14_INV_PECO_1 U106 ( .A(n12), .X(\sub_125/carry[6] ) );
  SAEDSLVT14_INV_PECO_1 U107 ( .A(\sub_125/carry[11] ), .X(n13) );
  SAEDSLVT14_EO2_V1_0P75 U108 ( .A1(n13), .A2(count[11]), .X(temp[11]) );
  SAEDSLVT14_EN2_2 U109 ( .A1(count[10]), .A2(\sub_125/carry[10] ), .X(
        temp[10]) );
  SAEDSLVT14_NR2_1P5 U110 ( .A1(\sub_125/carry[10] ), .A2(count[10]), .X(n14)
         );
  SAEDSLVT14_INV_PECO_1 U111 ( .A(n14), .X(\sub_125/carry[11] ) );
  control_DW01_inc_0 add_113 ( .A({count, AddressR[7:4], \S1S2mux[8] , 
        \VectorX[2] , \VectorX[1] , \VectorX[0] }), .SUM(count_temp) );
  SAEDHVT14_MUX2_MM_0P5 \count_reg[12]/U3  ( .D0(start), .D1(count_temp[12]), 
        .S(n117), .X(n15) );
  SAEDHVT14_FDP_V2_0P5 \count_reg[12]  ( .D(n15), .CK(clock), .Q(count[12]), 
        .QN(n139) );
  SAEDSLVT14_TIE1_4 U3 ( .X(\S1S2mux[0] ) );
  SAEDSLVT14_TIE0_V1_2 U7 ( .X(AddressS1[4]) );
endmodule


module PE_0_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [8:1] carry;

  SAEDSLVT14_ADDF_V2_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V2_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V2_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V2_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V2_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V2_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V2_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
  SAEDSLVT14_NR2_1P5 U1 ( .A1(n1), .A2(n2), .X(carry[1]) );
  SAEDSLVT14_INV_PECO_1 U2 ( .A(A[0]), .X(n1) );
  SAEDSLVT14_INV_PECO_1 U3 ( .A(B[0]), .X(n2) );
  SAEDSLVT14_EO2_V1_0P75 U4 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
endmodule


module PE_0_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1;
  wire   [8:0] carry;
  wire   [7:0] B_not;

  SAEDSLVT14_ADDF_V2_1 U2_7 ( .A(A[7]), .B(B_not[7]), .CI(carry[7]), .S(
        DIFF[7]) );
  SAEDSLVT14_ADDF_V2_1 U2_6 ( .A(A[6]), .B(B_not[6]), .CI(carry[6]), .CO(
        carry[7]), .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V2_1 U2_5 ( .A(A[5]), .B(B_not[5]), .CI(carry[5]), .CO(
        carry[6]), .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V2_1 U2_4 ( .A(A[4]), .B(B_not[4]), .CI(carry[4]), .CO(
        carry[5]), .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V2_1 U2_3 ( .A(A[3]), .B(B_not[3]), .CI(carry[3]), .CO(
        carry[4]), .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V2_1 U2_2 ( .A(A[2]), .B(B_not[2]), .CI(carry[2]), .CO(
        carry[3]), .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V2_1 U2_1 ( .A(A[1]), .B(B_not[1]), .CI(carry[1]), .CO(
        carry[2]), .S(DIFF[1]) );
  SAEDSLVT14_INV_PECO_1 U1 ( .A(n1), .X(carry[1]) );
  SAEDSLVT14_NR2_1P5 U2 ( .A1(A[0]), .A2(B_not[0]), .X(n1) );
  SAEDSLVT14_EN2_2 U3 ( .A1(B_not[0]), .A2(A[0]), .X(DIFF[0]) );
  SAEDHVT14_INV_0P5 U4 ( .A(B[7]), .X(B_not[7]) );
  SAEDHVT14_INV_0P5 U5 ( .A(B[6]), .X(B_not[6]) );
  SAEDHVT14_INV_0P5 U6 ( .A(B[5]), .X(B_not[5]) );
  SAEDHVT14_INV_0P5 U7 ( .A(B[4]), .X(B_not[4]) );
  SAEDHVT14_INV_0P5 U8 ( .A(B[3]), .X(B_not[3]) );
  SAEDHVT14_INV_0P5 U9 ( .A(B[2]), .X(B_not[2]) );
  SAEDHVT14_INV_0P5 U10 ( .A(B[1]), .X(B_not[1]) );
  SAEDHVT14_INV_0P5 U11 ( .A(B[0]), .X(B_not[0]) );
endmodule


module PE_0 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n4, n9, n10, n11, n12, n13, n14, n15, n16, n17;
  wire   [7:0] difference;

  SAEDRVT14_FDP_V2_2 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n16), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n15), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n14), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n13), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n12), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n11), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n10), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n9), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_INV_S_1 U3 ( .A(N27), .X(n9) );
  SAEDSLVT14_INV_S_1 U4 ( .A(N28), .X(n10) );
  SAEDSLVT14_INV_S_1 U5 ( .A(N29), .X(n11) );
  SAEDSLVT14_INV_S_1 U10 ( .A(N30), .X(n12) );
  SAEDSLVT14_INV_S_1 U11 ( .A(N31), .X(n13) );
  SAEDSLVT14_INV_S_1 U12 ( .A(N32), .X(n14) );
  SAEDSLVT14_INV_S_1 U13 ( .A(N33), .X(n15) );
  SAEDSLVT14_INV_S_1 U14 ( .A(N26), .X(n16) );
  SAEDHVT14_AO22_0P5 U15 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n17), .X(
        N9) );
  SAEDHVT14_AO22_0P5 U16 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n17), .X(
        N8) );
  SAEDHVT14_AO22_0P5 U17 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n17), .X(
        N15) );
  SAEDHVT14_AO22_0P5 U18 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n17), .X(
        N14) );
  SAEDHVT14_AO22_0P5 U19 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n17), .X(
        N13) );
  SAEDHVT14_AO22_0P5 U20 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n17), .X(
        N12) );
  SAEDHVT14_AO22_0P5 U21 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n17), .X(
        N11) );
  SAEDHVT14_AO22_0P5 U22 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n17), .X(
        N10) );
  SAEDHVT14_INV_0P5 U23 ( .A(S1S2mux), .X(n17) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDSLVT14_FDP_V2LP_0P5 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2])
         );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  PE_0_DW01_add_0 add_52 ( .A({n4, Accumulate}), .B({n4, difference}), .CI(n4), 
        .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_0_DW01_sub_1 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n4), .DIFF(difference) );
  SAEDSLVT14_TIE0_V1_2 U6 ( .X(n4) );
endmodule


module PE_14_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49;

  SAEDSLVT14_ND2_CDC_0P5 U3 ( .A1(A[1]), .A2(n44), .X(n38) );
  SAEDSLVT14_EO2_1 U4 ( .A1(n39), .A2(n40), .X(DIFF[1]) );
  SAEDSLVT14_NR2_MM_1 U5 ( .A1(n41), .A2(n36), .X(n40) );
  SAEDSLVT14_INV_0P5 U6 ( .A(n38), .X(n41) );
  SAEDSLVT14_INV_20 U7 ( .A(A[7]), .X(n3) );
  SAEDSLVT14_EO2_1 U8 ( .A1(n3), .A2(B[7]), .X(n2) );
  SAEDSLVT14_EO2_1 U9 ( .A1(n1), .A2(n2), .X(DIFF[7]) );
  SAEDSLVT14_NR2_MM_1 U10 ( .A1(n32), .A2(n27), .X(n31) );
  SAEDSLVT14_INV_1 U11 ( .A(A[0]), .X(n49) );
  SAEDSLVT14_ND2_CDC_0P5 U12 ( .A1(A[0]), .A2(n48), .X(n46) );
  SAEDSLVT14_OAI21_0P5 U13 ( .A1(A[5]), .A2(n11), .B(n12), .X(n10) );
  SAEDSLVT14_OAI21_0P5 U14 ( .A1(n13), .A2(n14), .B(n15), .X(n12) );
  SAEDSLVT14_INV_1 U15 ( .A(n17), .X(n13) );
  SAEDSLVT14_OAI21_0P5 U16 ( .A1(n36), .A2(n37), .B(n38), .X(n30) );
  SAEDRVT14_INV_PS_2 U17 ( .A(n39), .X(n37) );
  SAEDSLVT14_NR2_MM_1 U18 ( .A1(A[6]), .A2(n7), .X(n5) );
  SAEDSLVT14_EN3_1 U19 ( .A1(B[6]), .A2(A[6]), .A3(n8), .X(DIFF[6]) );
  SAEDSLVT14_NR2_MM_1 U20 ( .A1(A[4]), .A2(n16), .X(n14) );
  SAEDSLVT14_ND2_MM_8 U21 ( .A1(A[4]), .A2(n16), .X(n15) );
  SAEDSLVT14_ND2_CDC_0P5 U22 ( .A1(n9), .A2(n10), .X(n8) );
  SAEDSLVT14_ND2_1 U23 ( .A1(n45), .A2(n46), .X(n39) );
  SAEDSLVT14_OAI21_1P5 U24 ( .A1(n4), .A2(n5), .B(n6), .X(n1) );
  SAEDSLVT14_ND2_CDC_1 U25 ( .A1(A[6]), .A2(n7), .X(n6) );
  SAEDSLVT14_INV_S_1P5 U26 ( .A(B[6]), .X(n7) );
  SAEDSLVT14_INV_PECO_1 U27 ( .A(n8), .X(n4) );
  SAEDSLVT14_ND2_1 U28 ( .A1(A[5]), .A2(n11), .X(n9) );
  SAEDSLVT14_INV_S_1P5 U29 ( .A(B[5]), .X(n11) );
  SAEDSLVT14_EN3_1 U30 ( .A1(B[5]), .A2(A[5]), .A3(n12), .X(DIFF[5]) );
  SAEDSLVT14_INV_S_1P5 U31 ( .A(B[4]), .X(n16) );
  SAEDSLVT14_EN3_1 U32 ( .A1(B[4]), .A2(A[4]), .A3(n17), .X(DIFF[4]) );
  SAEDSLVT14_OAI21_1P5 U33 ( .A1(n18), .A2(n19), .B(n20), .X(n17) );
  SAEDSLVT14_INV_PECO_1 U34 ( .A(n21), .X(n19) );
  SAEDSLVT14_EO2_V1_0P75 U35 ( .A1(n21), .A2(n22), .X(DIFF[3]) );
  SAEDSLVT14_NR2_1P5 U36 ( .A1(n23), .A2(n18), .X(n22) );
  SAEDSLVT14_INV_PECO_1 U37 ( .A(n24), .X(n18) );
  SAEDSLVT14_ND2_1 U38 ( .A1(B[3]), .A2(n25), .X(n24) );
  SAEDSLVT14_INV_S_1P5 U39 ( .A(A[3]), .X(n25) );
  SAEDSLVT14_INV_PECO_1 U40 ( .A(n20), .X(n23) );
  SAEDSLVT14_ND2_1 U41 ( .A1(A[3]), .A2(n26), .X(n20) );
  SAEDSLVT14_INV_S_1P5 U42 ( .A(B[3]), .X(n26) );
  SAEDSLVT14_OAI21_1P5 U43 ( .A1(n27), .A2(n28), .B(n29), .X(n21) );
  SAEDSLVT14_INV_PECO_1 U44 ( .A(n30), .X(n28) );
  SAEDSLVT14_EO2_V1_0P75 U45 ( .A1(n30), .A2(n31), .X(DIFF[2]) );
  SAEDSLVT14_INV_PECO_1 U46 ( .A(n33), .X(n27) );
  SAEDSLVT14_ND2_1 U47 ( .A1(B[2]), .A2(n34), .X(n33) );
  SAEDSLVT14_INV_S_1P5 U48 ( .A(A[2]), .X(n34) );
  SAEDSLVT14_INV_PECO_1 U49 ( .A(n29), .X(n32) );
  SAEDSLVT14_ND2_1 U50 ( .A1(A[2]), .A2(n35), .X(n29) );
  SAEDSLVT14_INV_S_1P5 U51 ( .A(B[2]), .X(n35) );
  SAEDSLVT14_INV_PECO_1 U52 ( .A(n42), .X(n36) );
  SAEDSLVT14_ND2_1 U53 ( .A1(B[1]), .A2(n43), .X(n42) );
  SAEDSLVT14_INV_S_1P5 U54 ( .A(A[1]), .X(n43) );
  SAEDSLVT14_INV_S_1P5 U55 ( .A(B[1]), .X(n44) );
  SAEDSLVT14_INV_PECO_1 U56 ( .A(n47), .X(n45) );
  SAEDSLVT14_ND2_1 U57 ( .A1(n47), .A2(n46), .X(DIFF[0]) );
  SAEDSLVT14_INV_S_1P5 U58 ( .A(B[0]), .X(n48) );
  SAEDSLVT14_ND2_1 U59 ( .A1(B[0]), .A2(n49), .X(n47) );
endmodule


module PE_14_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [8:1] carry;

  SAEDSLVT14_ADDF_V2_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V2_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V2_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V2_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V2_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V2_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V2_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
  SAEDSLVT14_NR2_1P5 U1 ( .A1(n1), .A2(n2), .X(carry[1]) );
  SAEDSLVT14_INV_PECO_1 U2 ( .A(A[0]), .X(n1) );
  SAEDSLVT14_INV_PECO_1 U3 ( .A(B[0]), .X(n2) );
  SAEDSLVT14_EO2_V1_0P75 U4 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
endmodule


module PE_14 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n2, n3, n5, n6, n7, n8, n13, n14, n15, n16, n17;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n5), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n6), .D(Carry), 
        .SI(n2), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n7), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n8), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n13), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n14), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n15), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n16), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_INV_S_1 U3 ( .A(N27), .X(n16) );
  SAEDSLVT14_INV_S_1 U4 ( .A(N28), .X(n15) );
  SAEDSLVT14_INV_S_1 U5 ( .A(N29), .X(n14) );
  SAEDSLVT14_INV_S_1 U10 ( .A(N30), .X(n13) );
  SAEDSLVT14_INV_S_1 U11 ( .A(N31), .X(n8) );
  SAEDSLVT14_INV_S_1 U12 ( .A(N32), .X(n7) );
  SAEDSLVT14_INV_S_1 U14 ( .A(N26), .X(n5) );
  SAEDHVT14_AO22_0P5 U16 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n3), .X(
        N8) );
  SAEDHVT14_AO22_0P5 U17 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n3), .X(
        N15) );
  SAEDHVT14_AO22_0P5 U18 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n3), .X(
        N14) );
  SAEDHVT14_AO22_0P5 U19 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n3), .X(
        N13) );
  SAEDHVT14_AO22_0P5 U20 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n3), .X(
        N12) );
  SAEDHVT14_AO22_0P5 U21 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n3), .X(
        N11) );
  SAEDHVT14_AO22_0P5 U22 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n3), .X(
        N10) );
  SAEDHVT14_INV_0P5 U23 ( .A(S1S2mux), .X(n3) );
  SAEDHVT14_FDP_V2LP_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDHVT14_FDP_V2LP_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDHVT14_FDP_V2LP_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDHVT14_FDP_V2LP_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDSLVT14_FDP_V2_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDLVT14_AO22_1 U7 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n3), .X(N9)
         );
  SAEDRVT14_INV_S_0P5 U8 ( .A(difference[7]), .X(n1) );
  SAEDSLVT14_INV_0P5 U9 ( .A(n1), .X(n2) );
  SAEDSLVT14_INV_S_0P5 U13 ( .A(N33), .X(n6) );
  PE_14_DW01_sub_3 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n17), .DIFF(difference) );
  PE_14_DW01_add_0 add_52 ( .A({n17, Accumulate}), .B({n17, difference}), .CI(
        n17), .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  SAEDSLVT14_TIE0_V1_2 U6 ( .X(n17) );
endmodule


module PE_13_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [8:1] carry;

  SAEDSLVT14_ADDF_V2_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V2_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V2_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V2_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V2_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V2_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V2_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
  SAEDSLVT14_NR2_1P5 U1 ( .A1(n1), .A2(n2), .X(carry[1]) );
  SAEDSLVT14_INV_PECO_1 U2 ( .A(A[0]), .X(n1) );
  SAEDSLVT14_INV_PECO_1 U3 ( .A(B[0]), .X(n2) );
  SAEDSLVT14_EO2_V1_0P75 U4 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
endmodule


module PE_13_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1;
  wire   [8:0] carry;
  wire   [7:0] B_not;

  SAEDSLVT14_ADDF_V2_1 U2_7 ( .A(A[7]), .B(B_not[7]), .CI(carry[7]), .S(
        DIFF[7]) );
  SAEDSLVT14_ADDF_V2_1 U2_6 ( .A(A[6]), .B(B_not[6]), .CI(carry[6]), .CO(
        carry[7]), .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V2_1 U2_5 ( .A(A[5]), .B(B_not[5]), .CI(carry[5]), .CO(
        carry[6]), .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V2_1 U2_4 ( .A(A[4]), .B(B_not[4]), .CI(carry[4]), .CO(
        carry[5]), .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V2_1 U2_3 ( .A(A[3]), .B(B_not[3]), .CI(carry[3]), .CO(
        carry[4]), .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V2_1 U2_2 ( .A(A[2]), .B(B_not[2]), .CI(carry[2]), .CO(
        carry[3]), .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V2_1 U2_1 ( .A(A[1]), .B(B_not[1]), .CI(carry[1]), .CO(
        carry[2]), .S(DIFF[1]) );
  SAEDSLVT14_INV_PECO_1 U1 ( .A(n1), .X(carry[1]) );
  SAEDSLVT14_NR2_1P5 U2 ( .A1(A[0]), .A2(B_not[0]), .X(n1) );
  SAEDSLVT14_EN2_2 U3 ( .A1(B_not[0]), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_S_1P5 U4 ( .A(B[7]), .X(B_not[7]) );
  SAEDSLVT14_INV_S_1P5 U5 ( .A(B[6]), .X(B_not[6]) );
  SAEDSLVT14_INV_S_1P5 U6 ( .A(B[5]), .X(B_not[5]) );
  SAEDSLVT14_INV_S_1P5 U7 ( .A(B[4]), .X(B_not[4]) );
  SAEDSLVT14_INV_S_1P5 U8 ( .A(B[3]), .X(B_not[3]) );
  SAEDSLVT14_INV_S_1P5 U9 ( .A(B[2]), .X(B_not[2]) );
  SAEDSLVT14_INV_S_1P5 U10 ( .A(B[1]), .X(B_not[1]) );
  SAEDSLVT14_INV_S_1P5 U11 ( .A(B[0]), .X(B_not[0]) );
endmodule


module PE_13 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n2, n3, n5, n6, n7, n8, n11, n12, n13;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n2), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n3), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n5), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n6), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n7), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n8), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n11), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n12), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_INV_S_1 U3 ( .A(N27), .X(n12) );
  SAEDSLVT14_INV_S_1 U4 ( .A(N28), .X(n11) );
  SAEDSLVT14_INV_S_1 U5 ( .A(N29), .X(n8) );
  SAEDSLVT14_INV_S_1 U10 ( .A(N30), .X(n7) );
  SAEDSLVT14_INV_S_1 U11 ( .A(N31), .X(n6) );
  SAEDSLVT14_INV_S_1 U12 ( .A(N32), .X(n5) );
  SAEDSLVT14_INV_S_1 U14 ( .A(N26), .X(n2) );
  SAEDHVT14_INV_0P5 U23 ( .A(S1S2mux), .X(n1) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDHVT14_FDP_V2LP_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDSLVT14_INV_S_0P75 U7 ( .A(N33), .X(n3) );
  SAEDLVT14_AO22_0P5 U8 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n1), .X(
        N15) );
  SAEDLVT14_AO22_0P5 U9 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n1), .X(
        N14) );
  SAEDLVT14_AO22_0P5 U13 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n1), .X(
        N13) );
  SAEDLVT14_AO22_0P5 U15 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n1), .X(
        N12) );
  SAEDLVT14_AO22_0P5 U16 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n1), .X(
        N11) );
  SAEDLVT14_AO22_0P5 U17 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n1), .X(
        N10) );
  SAEDLVT14_AO22_0P5 U18 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n1), .X(
        N8) );
  SAEDLVT14_AO22_0P5 U19 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n1), .X(
        N9) );
  PE_13_DW01_add_0 add_52 ( .A({n13, Accumulate}), .B({n13, difference}), .CI(
        n13), .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_13_DW01_sub_0 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n13), .DIFF(difference) );
  SAEDSLVT14_TIE0_V1_2 U6 ( .X(n13) );
endmodule


module PE_12_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [8:1] carry;

  SAEDSLVT14_ADDF_V2_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V2_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V2_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V2_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V2_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V2_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V2_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
  SAEDSLVT14_NR2_1P5 U1 ( .A1(n1), .A2(n2), .X(carry[1]) );
  SAEDSLVT14_INV_PECO_1 U2 ( .A(A[0]), .X(n1) );
  SAEDSLVT14_INV_PECO_1 U3 ( .A(B[0]), .X(n2) );
  SAEDSLVT14_EO2_V1_0P75 U4 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
endmodule


module PE_12_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1;
  wire   [8:0] carry;
  wire   [7:0] B_not;

  SAEDSLVT14_ADDF_V2_1 U2_7 ( .A(A[7]), .B(B_not[7]), .CI(carry[7]), .S(
        DIFF[7]) );
  SAEDSLVT14_ADDF_V2_1 U2_6 ( .A(A[6]), .B(B_not[6]), .CI(carry[6]), .CO(
        carry[7]), .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V2_1 U2_5 ( .A(A[5]), .B(B_not[5]), .CI(carry[5]), .CO(
        carry[6]), .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V2_1 U2_4 ( .A(A[4]), .B(B_not[4]), .CI(carry[4]), .CO(
        carry[5]), .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V2_1 U2_3 ( .A(A[3]), .B(B_not[3]), .CI(carry[3]), .CO(
        carry[4]), .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V2_1 U2_2 ( .A(A[2]), .B(B_not[2]), .CI(carry[2]), .CO(
        carry[3]), .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V2_1 U2_1 ( .A(A[1]), .B(B_not[1]), .CI(carry[1]), .CO(
        carry[2]), .S(DIFF[1]) );
  SAEDSLVT14_INV_PECO_1 U1 ( .A(n1), .X(carry[1]) );
  SAEDSLVT14_NR2_1P5 U2 ( .A1(A[0]), .A2(B_not[0]), .X(n1) );
  SAEDSLVT14_EN2_2 U3 ( .A1(B_not[0]), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_S_1P5 U4 ( .A(B[7]), .X(B_not[7]) );
  SAEDSLVT14_INV_S_1P5 U5 ( .A(B[6]), .X(B_not[6]) );
  SAEDSLVT14_INV_S_1P5 U6 ( .A(B[5]), .X(B_not[5]) );
  SAEDSLVT14_INV_S_1P5 U7 ( .A(B[4]), .X(B_not[4]) );
  SAEDSLVT14_INV_S_1P5 U8 ( .A(B[3]), .X(B_not[3]) );
  SAEDSLVT14_INV_S_1P5 U9 ( .A(B[2]), .X(B_not[2]) );
  SAEDSLVT14_INV_S_1P5 U10 ( .A(B[1]), .X(B_not[1]) );
  SAEDSLVT14_INV_S_1P5 U11 ( .A(B[0]), .X(B_not[0]) );
endmodule


module PE_12 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n2, n3, n5, n6, n7, n8, n11, n12, n13;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n2), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n3), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n5), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n6), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n7), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n8), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n11), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n12), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_INV_S_1 U3 ( .A(N27), .X(n12) );
  SAEDSLVT14_INV_S_1 U4 ( .A(N28), .X(n11) );
  SAEDSLVT14_INV_S_1 U5 ( .A(N29), .X(n8) );
  SAEDSLVT14_INV_S_1 U10 ( .A(N30), .X(n7) );
  SAEDSLVT14_INV_S_1 U11 ( .A(N31), .X(n6) );
  SAEDSLVT14_INV_S_1 U12 ( .A(N32), .X(n5) );
  SAEDSLVT14_INV_S_1 U13 ( .A(N33), .X(n3) );
  SAEDSLVT14_INV_S_1 U14 ( .A(N26), .X(n2) );
  SAEDHVT14_AO22_0P5 U15 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n1), .X(
        N9) );
  SAEDHVT14_AO22_0P5 U16 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n1), .X(
        N8) );
  SAEDHVT14_AO22_0P5 U17 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n1), .X(
        N15) );
  SAEDHVT14_AO22_0P5 U18 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n1), .X(
        N14) );
  SAEDHVT14_AO22_0P5 U19 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n1), .X(
        N13) );
  SAEDHVT14_AO22_0P5 U20 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n1), .X(
        N12) );
  SAEDHVT14_AO22_0P5 U21 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n1), .X(
        N11) );
  SAEDHVT14_AO22_0P5 U22 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n1), .X(
        N10) );
  SAEDHVT14_INV_0P5 U23 ( .A(S1S2mux), .X(n1) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDHVT14_FDP_V2LP_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDHVT14_FDP_V2LP_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  PE_12_DW01_add_0 add_52 ( .A({n13, Accumulate}), .B({n13, difference}), .CI(
        n13), .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_12_DW01_sub_0 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n13), .DIFF(difference) );
  SAEDSLVT14_TIE0_V1_2 U6 ( .X(n13) );
endmodule


module PE_11_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [8:1] carry;

  SAEDSLVT14_ADDF_V2_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V2_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V2_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V2_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V2_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V2_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V2_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
  SAEDSLVT14_NR2_1P5 U1 ( .A1(n1), .A2(n2), .X(carry[1]) );
  SAEDSLVT14_INV_PECO_1 U2 ( .A(A[0]), .X(n1) );
  SAEDSLVT14_INV_PECO_1 U3 ( .A(B[0]), .X(n2) );
  SAEDSLVT14_EO2_V1_0P75 U4 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
endmodule


module PE_11_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1;
  wire   [8:0] carry;
  wire   [7:0] B_not;

  SAEDSLVT14_ADDF_V2_1 U2_7 ( .A(A[7]), .B(B_not[7]), .CI(carry[7]), .S(
        DIFF[7]) );
  SAEDSLVT14_ADDF_V2_1 U2_6 ( .A(A[6]), .B(B_not[6]), .CI(carry[6]), .CO(
        carry[7]), .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V2_1 U2_5 ( .A(A[5]), .B(B_not[5]), .CI(carry[5]), .CO(
        carry[6]), .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V2_1 U2_4 ( .A(A[4]), .B(B_not[4]), .CI(carry[4]), .CO(
        carry[5]), .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V2_1 U2_3 ( .A(A[3]), .B(B_not[3]), .CI(carry[3]), .CO(
        carry[4]), .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V2_1 U2_2 ( .A(A[2]), .B(B_not[2]), .CI(carry[2]), .CO(
        carry[3]), .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V2_1 U2_1 ( .A(A[1]), .B(B_not[1]), .CI(carry[1]), .CO(
        carry[2]), .S(DIFF[1]) );
  SAEDSLVT14_INV_PECO_1 U1 ( .A(n1), .X(carry[1]) );
  SAEDSLVT14_NR2_1P5 U2 ( .A1(A[0]), .A2(B_not[0]), .X(n1) );
  SAEDSLVT14_EN2_2 U3 ( .A1(B_not[0]), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_S_1P5 U4 ( .A(B[7]), .X(B_not[7]) );
  SAEDSLVT14_INV_S_1P5 U5 ( .A(B[6]), .X(B_not[6]) );
  SAEDSLVT14_INV_S_1P5 U6 ( .A(B[5]), .X(B_not[5]) );
  SAEDSLVT14_INV_S_1P5 U7 ( .A(B[4]), .X(B_not[4]) );
  SAEDSLVT14_INV_S_1P5 U8 ( .A(B[3]), .X(B_not[3]) );
  SAEDSLVT14_INV_S_1P5 U9 ( .A(B[2]), .X(B_not[2]) );
  SAEDSLVT14_INV_S_1P5 U10 ( .A(B[1]), .X(B_not[1]) );
  SAEDSLVT14_INV_S_1P5 U11 ( .A(B[0]), .X(B_not[0]) );
endmodule


module PE_11 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n2, n3, n5, n6, n7, n8, n11, n12, n13;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n2), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n3), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n5), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n6), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n7), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n8), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n11), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n12), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_INV_S_1 U3 ( .A(N27), .X(n12) );
  SAEDSLVT14_INV_S_1 U4 ( .A(N28), .X(n11) );
  SAEDSLVT14_INV_S_1 U5 ( .A(N29), .X(n8) );
  SAEDSLVT14_INV_S_1 U10 ( .A(N30), .X(n7) );
  SAEDSLVT14_INV_S_1 U11 ( .A(N31), .X(n6) );
  SAEDSLVT14_INV_S_1 U12 ( .A(N32), .X(n5) );
  SAEDSLVT14_INV_S_1 U13 ( .A(N33), .X(n3) );
  SAEDSLVT14_INV_S_1 U14 ( .A(N26), .X(n2) );
  SAEDHVT14_AO22_0P5 U15 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n1), .X(
        N9) );
  SAEDHVT14_AO22_0P5 U16 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n1), .X(
        N8) );
  SAEDHVT14_AO22_0P5 U17 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n1), .X(
        N15) );
  SAEDHVT14_AO22_0P5 U18 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n1), .X(
        N14) );
  SAEDHVT14_AO22_0P5 U19 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n1), .X(
        N13) );
  SAEDHVT14_AO22_0P5 U20 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n1), .X(
        N12) );
  SAEDHVT14_AO22_0P5 U21 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n1), .X(
        N11) );
  SAEDHVT14_AO22_0P5 U22 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n1), .X(
        N10) );
  SAEDHVT14_INV_0P5 U23 ( .A(S1S2mux), .X(n1) );
  SAEDLVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDHVT14_FDP_V2LP_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  PE_11_DW01_add_0 add_52 ( .A({n13, Accumulate}), .B({n13, difference}), .CI(
        n13), .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_11_DW01_sub_0 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n13), .DIFF(difference) );
  SAEDSLVT14_TIE0_V1_2 U6 ( .X(n13) );
endmodule


module PE_10_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [8:1] carry;

  SAEDSLVT14_ADDF_V2_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V2_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V2_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V2_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V2_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V2_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V2_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
  SAEDSLVT14_NR2_1P5 U1 ( .A1(n1), .A2(n2), .X(carry[1]) );
  SAEDSLVT14_INV_PECO_1 U2 ( .A(A[0]), .X(n1) );
  SAEDSLVT14_INV_PECO_1 U3 ( .A(B[0]), .X(n2) );
  SAEDSLVT14_EO2_V1_0P75 U4 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
endmodule


module PE_10_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1;
  wire   [8:0] carry;
  wire   [7:0] B_not;

  SAEDSLVT14_ADDF_V2_1 U2_7 ( .A(A[7]), .B(B_not[7]), .CI(carry[7]), .S(
        DIFF[7]) );
  SAEDSLVT14_ADDF_V2_1 U2_6 ( .A(A[6]), .B(B_not[6]), .CI(carry[6]), .CO(
        carry[7]), .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V2_1 U2_5 ( .A(A[5]), .B(B_not[5]), .CI(carry[5]), .CO(
        carry[6]), .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V2_1 U2_4 ( .A(A[4]), .B(B_not[4]), .CI(carry[4]), .CO(
        carry[5]), .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V2_1 U2_3 ( .A(A[3]), .B(B_not[3]), .CI(carry[3]), .CO(
        carry[4]), .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V2_1 U2_2 ( .A(A[2]), .B(B_not[2]), .CI(carry[2]), .CO(
        carry[3]), .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V2_1 U2_1 ( .A(A[1]), .B(B_not[1]), .CI(carry[1]), .CO(
        carry[2]), .S(DIFF[1]) );
  SAEDSLVT14_INV_PECO_1 U1 ( .A(n1), .X(carry[1]) );
  SAEDSLVT14_NR2_1P5 U2 ( .A1(A[0]), .A2(B_not[0]), .X(n1) );
  SAEDSLVT14_EN2_2 U3 ( .A1(B_not[0]), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_S_1P5 U4 ( .A(B[7]), .X(B_not[7]) );
  SAEDSLVT14_INV_S_1P5 U5 ( .A(B[6]), .X(B_not[6]) );
  SAEDSLVT14_INV_S_1P5 U6 ( .A(B[5]), .X(B_not[5]) );
  SAEDSLVT14_INV_S_1P5 U7 ( .A(B[4]), .X(B_not[4]) );
  SAEDSLVT14_INV_S_1P5 U8 ( .A(B[3]), .X(B_not[3]) );
  SAEDSLVT14_INV_S_1P5 U9 ( .A(B[2]), .X(B_not[2]) );
  SAEDSLVT14_INV_S_1P5 U10 ( .A(B[1]), .X(B_not[1]) );
  SAEDSLVT14_INV_S_1P5 U11 ( .A(B[0]), .X(B_not[0]) );
endmodule


module PE_10 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n2, n3, n5, n6, n7, n8, n11, n12, n13;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n2), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n3), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n5), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n6), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n7), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n8), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n11), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n12), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_INV_S_1 U3 ( .A(N27), .X(n12) );
  SAEDSLVT14_INV_S_1 U4 ( .A(N28), .X(n11) );
  SAEDSLVT14_INV_S_1 U5 ( .A(N29), .X(n8) );
  SAEDSLVT14_INV_S_1 U10 ( .A(N30), .X(n7) );
  SAEDSLVT14_INV_S_1 U11 ( .A(N31), .X(n6) );
  SAEDSLVT14_INV_S_1 U12 ( .A(N32), .X(n5) );
  SAEDSLVT14_INV_S_1 U13 ( .A(N33), .X(n3) );
  SAEDSLVT14_INV_S_1 U14 ( .A(N26), .X(n2) );
  SAEDHVT14_AO22_0P5 U15 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n1), .X(
        N9) );
  SAEDHVT14_AO22_0P5 U16 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n1), .X(
        N8) );
  SAEDHVT14_AO22_0P5 U17 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n1), .X(
        N15) );
  SAEDHVT14_AO22_0P5 U18 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n1), .X(
        N14) );
  SAEDHVT14_AO22_0P5 U19 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n1), .X(
        N13) );
  SAEDHVT14_AO22_0P5 U20 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n1), .X(
        N12) );
  SAEDHVT14_AO22_0P5 U21 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n1), .X(
        N11) );
  SAEDHVT14_AO22_0P5 U22 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n1), .X(
        N10) );
  SAEDHVT14_INV_0P5 U23 ( .A(S1S2mux), .X(n1) );
  SAEDHVT14_FDP_V2LP_0P5 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0])
         );
  SAEDHVT14_FDP_V2LP_0P5 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2])
         );
  SAEDHVT14_FDP_V2LP_0P5 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3])
         );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDSLVT14_FDP_V2_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  PE_10_DW01_add_0 add_52 ( .A({n13, Accumulate}), .B({n13, difference}), .CI(
        n13), .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_10_DW01_sub_0 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n13), .DIFF(difference) );
  SAEDSLVT14_TIE0_V1_2 U6 ( .X(n13) );
endmodule


module PE_9_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [8:1] carry;

  SAEDSLVT14_ADDF_V2_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V2_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V2_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V2_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V2_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V2_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V2_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
  SAEDSLVT14_NR2_1P5 U1 ( .A1(n1), .A2(n2), .X(carry[1]) );
  SAEDSLVT14_INV_PECO_1 U2 ( .A(A[0]), .X(n1) );
  SAEDSLVT14_INV_PECO_1 U3 ( .A(B[0]), .X(n2) );
  SAEDSLVT14_EO2_V1_0P75 U4 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
endmodule


module PE_9_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1;
  wire   [8:0] carry;
  wire   [7:0] B_not;

  SAEDSLVT14_ADDF_V2_1 U2_7 ( .A(A[7]), .B(B_not[7]), .CI(carry[7]), .S(
        DIFF[7]) );
  SAEDSLVT14_ADDF_V2_1 U2_6 ( .A(A[6]), .B(B_not[6]), .CI(carry[6]), .CO(
        carry[7]), .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V2_1 U2_5 ( .A(A[5]), .B(B_not[5]), .CI(carry[5]), .CO(
        carry[6]), .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V2_1 U2_4 ( .A(A[4]), .B(B_not[4]), .CI(carry[4]), .CO(
        carry[5]), .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V2_1 U2_3 ( .A(A[3]), .B(B_not[3]), .CI(carry[3]), .CO(
        carry[4]), .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V2_1 U2_2 ( .A(A[2]), .B(B_not[2]), .CI(carry[2]), .CO(
        carry[3]), .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V2_1 U2_1 ( .A(A[1]), .B(B_not[1]), .CI(carry[1]), .CO(
        carry[2]), .S(DIFF[1]) );
  SAEDSLVT14_INV_PECO_1 U1 ( .A(n1), .X(carry[1]) );
  SAEDSLVT14_NR2_1P5 U2 ( .A1(A[0]), .A2(B_not[0]), .X(n1) );
  SAEDSLVT14_EN2_2 U3 ( .A1(B_not[0]), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_S_1P5 U4 ( .A(B[7]), .X(B_not[7]) );
  SAEDSLVT14_INV_S_1P5 U5 ( .A(B[6]), .X(B_not[6]) );
  SAEDSLVT14_INV_S_1P5 U6 ( .A(B[5]), .X(B_not[5]) );
  SAEDSLVT14_INV_S_1P5 U7 ( .A(B[4]), .X(B_not[4]) );
  SAEDSLVT14_INV_S_1P5 U8 ( .A(B[3]), .X(B_not[3]) );
  SAEDSLVT14_INV_S_1P5 U9 ( .A(B[2]), .X(B_not[2]) );
  SAEDSLVT14_INV_S_1P5 U10 ( .A(B[1]), .X(B_not[1]) );
  SAEDSLVT14_INV_S_1P5 U11 ( .A(B[0]), .X(B_not[0]) );
endmodule


module PE_9 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n2, n3, n5, n6, n7, n8, n11, n12, n13;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n2), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n3), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n5), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n6), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n7), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n8), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n11), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n12), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_INV_S_1 U3 ( .A(N27), .X(n12) );
  SAEDSLVT14_INV_S_1 U4 ( .A(N28), .X(n11) );
  SAEDSLVT14_INV_S_1 U5 ( .A(N29), .X(n8) );
  SAEDSLVT14_INV_S_1 U10 ( .A(N30), .X(n7) );
  SAEDSLVT14_INV_S_1 U11 ( .A(N31), .X(n6) );
  SAEDSLVT14_INV_S_1 U12 ( .A(N32), .X(n5) );
  SAEDSLVT14_INV_S_1 U14 ( .A(N26), .X(n2) );
  SAEDHVT14_AO22_0P5 U15 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n1), .X(
        N9) );
  SAEDHVT14_AO22_0P5 U16 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n1), .X(
        N8) );
  SAEDHVT14_AO22_0P5 U17 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n1), .X(
        N15) );
  SAEDHVT14_AO22_0P5 U18 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n1), .X(
        N14) );
  SAEDHVT14_AO22_0P5 U19 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n1), .X(
        N13) );
  SAEDHVT14_AO22_0P5 U20 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n1), .X(
        N12) );
  SAEDHVT14_AO22_0P5 U21 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n1), .X(
        N11) );
  SAEDHVT14_AO22_0P5 U22 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n1), .X(
        N10) );
  SAEDHVT14_INV_0P5 U23 ( .A(S1S2mux), .X(n1) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDHVT14_FDP_V2LP_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDHVT14_FDP_V2LP_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDHVT14_FDP_V2LP_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDSLVT14_INV_S_0P5 U7 ( .A(N33), .X(n3) );
  PE_9_DW01_add_0 add_52 ( .A({n13, Accumulate}), .B({n13, difference}), .CI(
        n13), .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_9_DW01_sub_0 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n13), .DIFF(difference) );
  SAEDSLVT14_TIE0_V1_2 U6 ( .X(n13) );
endmodule


module PE_8_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [8:1] carry;

  SAEDSLVT14_ADDF_V2_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V2_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V2_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V2_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V2_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V2_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V2_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
  SAEDSLVT14_NR2_1P5 U1 ( .A1(n1), .A2(n2), .X(carry[1]) );
  SAEDSLVT14_INV_PECO_1 U2 ( .A(A[0]), .X(n1) );
  SAEDSLVT14_INV_PECO_1 U3 ( .A(B[0]), .X(n2) );
  SAEDSLVT14_EO2_V1_0P75 U4 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
endmodule


module PE_8_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1;
  wire   [8:0] carry;
  wire   [7:0] B_not;

  SAEDSLVT14_ADDF_V2_1 U2_7 ( .A(A[7]), .B(B_not[7]), .CI(carry[7]), .S(
        DIFF[7]) );
  SAEDSLVT14_ADDF_V2_1 U2_6 ( .A(A[6]), .B(B_not[6]), .CI(carry[6]), .CO(
        carry[7]), .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V2_1 U2_5 ( .A(A[5]), .B(B_not[5]), .CI(carry[5]), .CO(
        carry[6]), .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V2_1 U2_4 ( .A(A[4]), .B(B_not[4]), .CI(carry[4]), .CO(
        carry[5]), .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V2_1 U2_3 ( .A(A[3]), .B(B_not[3]), .CI(carry[3]), .CO(
        carry[4]), .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V2_1 U2_2 ( .A(A[2]), .B(B_not[2]), .CI(carry[2]), .CO(
        carry[3]), .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V2_1 U2_1 ( .A(A[1]), .B(B_not[1]), .CI(carry[1]), .CO(
        carry[2]), .S(DIFF[1]) );
  SAEDSLVT14_INV_PECO_1 U1 ( .A(n1), .X(carry[1]) );
  SAEDSLVT14_NR2_1P5 U2 ( .A1(A[0]), .A2(B_not[0]), .X(n1) );
  SAEDSLVT14_EN2_2 U3 ( .A1(B_not[0]), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_S_1P5 U4 ( .A(B[7]), .X(B_not[7]) );
  SAEDSLVT14_INV_S_1P5 U5 ( .A(B[6]), .X(B_not[6]) );
  SAEDSLVT14_INV_S_1P5 U6 ( .A(B[5]), .X(B_not[5]) );
  SAEDSLVT14_INV_S_1P5 U7 ( .A(B[4]), .X(B_not[4]) );
  SAEDSLVT14_INV_S_1P5 U8 ( .A(B[3]), .X(B_not[3]) );
  SAEDSLVT14_INV_S_1P5 U9 ( .A(B[2]), .X(B_not[2]) );
  SAEDSLVT14_INV_S_1P5 U10 ( .A(B[1]), .X(B_not[1]) );
  SAEDSLVT14_INV_S_1P5 U11 ( .A(B[0]), .X(B_not[0]) );
endmodule


module PE_8 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n2, n3, n5, n6, n7, n8, n11, n12, n13;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n2), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n3), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n5), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n6), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n7), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n8), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n11), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n12), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_INV_S_1 U3 ( .A(N27), .X(n12) );
  SAEDSLVT14_INV_S_1 U4 ( .A(N28), .X(n11) );
  SAEDSLVT14_INV_S_1 U5 ( .A(N29), .X(n8) );
  SAEDSLVT14_INV_S_1 U10 ( .A(N30), .X(n7) );
  SAEDSLVT14_INV_S_1 U11 ( .A(N31), .X(n6) );
  SAEDSLVT14_INV_S_1 U12 ( .A(N32), .X(n5) );
  SAEDSLVT14_INV_S_1 U14 ( .A(N26), .X(n2) );
  SAEDHVT14_AO22_0P5 U15 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n1), .X(
        N9) );
  SAEDHVT14_AO22_0P5 U16 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n1), .X(
        N8) );
  SAEDHVT14_AO22_0P5 U17 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n1), .X(
        N15) );
  SAEDHVT14_AO22_0P5 U18 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n1), .X(
        N14) );
  SAEDHVT14_AO22_0P5 U19 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n1), .X(
        N13) );
  SAEDHVT14_AO22_0P5 U20 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n1), .X(
        N12) );
  SAEDHVT14_AO22_0P5 U21 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n1), .X(
        N11) );
  SAEDHVT14_AO22_0P5 U22 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n1), .X(
        N10) );
  SAEDHVT14_INV_0P5 U23 ( .A(S1S2mux), .X(n1) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDHVT14_FDP_V2LP_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDSLVT14_INV_0P5 U7 ( .A(N33), .X(n3) );
  PE_8_DW01_add_0 add_52 ( .A({n13, Accumulate}), .B({n13, difference}), .CI(
        n13), .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_8_DW01_sub_0 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n13), .DIFF(difference) );
  SAEDSLVT14_TIE0_V1_2 U6 ( .X(n13) );
endmodule


module PE_7_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [8:1] carry;

  SAEDSLVT14_ADDF_V2_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V2_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V2_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V2_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V2_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V2_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V2_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
  SAEDSLVT14_NR2_1P5 U1 ( .A1(n1), .A2(n2), .X(carry[1]) );
  SAEDSLVT14_INV_PECO_1 U2 ( .A(A[0]), .X(n1) );
  SAEDSLVT14_INV_PECO_1 U3 ( .A(B[0]), .X(n2) );
  SAEDSLVT14_EO2_V1_0P75 U4 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
endmodule


module PE_7_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1;
  wire   [8:0] carry;
  wire   [7:0] B_not;

  SAEDSLVT14_ADDF_V2_1 U2_7 ( .A(A[7]), .B(B_not[7]), .CI(carry[7]), .S(
        DIFF[7]) );
  SAEDSLVT14_ADDF_V2_1 U2_6 ( .A(A[6]), .B(B_not[6]), .CI(carry[6]), .CO(
        carry[7]), .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V2_1 U2_5 ( .A(A[5]), .B(B_not[5]), .CI(carry[5]), .CO(
        carry[6]), .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V2_1 U2_4 ( .A(A[4]), .B(B_not[4]), .CI(carry[4]), .CO(
        carry[5]), .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V2_1 U2_3 ( .A(A[3]), .B(B_not[3]), .CI(carry[3]), .CO(
        carry[4]), .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V2_1 U2_2 ( .A(A[2]), .B(B_not[2]), .CI(carry[2]), .CO(
        carry[3]), .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V2_1 U2_1 ( .A(A[1]), .B(B_not[1]), .CI(carry[1]), .CO(
        carry[2]), .S(DIFF[1]) );
  SAEDSLVT14_INV_PECO_1 U1 ( .A(n1), .X(carry[1]) );
  SAEDSLVT14_NR2_1P5 U2 ( .A1(A[0]), .A2(B_not[0]), .X(n1) );
  SAEDSLVT14_EN2_2 U3 ( .A1(B_not[0]), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_S_1P5 U4 ( .A(B[7]), .X(B_not[7]) );
  SAEDSLVT14_INV_S_1P5 U5 ( .A(B[6]), .X(B_not[6]) );
  SAEDSLVT14_INV_S_1P5 U6 ( .A(B[5]), .X(B_not[5]) );
  SAEDSLVT14_INV_S_1P5 U7 ( .A(B[4]), .X(B_not[4]) );
  SAEDSLVT14_INV_S_1P5 U8 ( .A(B[3]), .X(B_not[3]) );
  SAEDSLVT14_INV_S_1P5 U9 ( .A(B[2]), .X(B_not[2]) );
  SAEDSLVT14_INV_S_1P5 U10 ( .A(B[1]), .X(B_not[1]) );
  SAEDSLVT14_INV_S_1P5 U11 ( .A(B[0]), .X(B_not[0]) );
endmodule


module PE_7 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n2, n3, n5, n6, n7, n8, n11, n12, n13;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n2), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n3), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n5), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n6), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n7), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n8), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n11), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n12), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_INV_S_1 U3 ( .A(N27), .X(n12) );
  SAEDSLVT14_INV_S_1 U4 ( .A(N28), .X(n11) );
  SAEDSLVT14_INV_S_1 U5 ( .A(N29), .X(n8) );
  SAEDSLVT14_INV_S_1 U10 ( .A(N30), .X(n7) );
  SAEDSLVT14_INV_S_1 U11 ( .A(N31), .X(n6) );
  SAEDSLVT14_INV_S_1 U12 ( .A(N32), .X(n5) );
  SAEDSLVT14_INV_S_1 U13 ( .A(N33), .X(n3) );
  SAEDSLVT14_INV_S_1 U14 ( .A(N26), .X(n2) );
  SAEDHVT14_AO22_0P5 U15 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n1), .X(
        N9) );
  SAEDHVT14_AO22_0P5 U16 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n1), .X(
        N8) );
  SAEDHVT14_AO22_0P5 U17 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n1), .X(
        N15) );
  SAEDHVT14_AO22_0P5 U18 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n1), .X(
        N14) );
  SAEDHVT14_AO22_0P5 U19 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n1), .X(
        N13) );
  SAEDHVT14_AO22_0P5 U20 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n1), .X(
        N12) );
  SAEDHVT14_AO22_0P5 U21 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n1), .X(
        N11) );
  SAEDHVT14_AO22_0P5 U22 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n1), .X(
        N10) );
  SAEDHVT14_INV_0P5 U23 ( .A(S1S2mux), .X(n1) );
  SAEDHVT14_FDP_V2LP_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDHVT14_FDP_V2LP_0P5 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3])
         );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  PE_7_DW01_add_0 add_52 ( .A({n13, Accumulate}), .B({n13, difference}), .CI(
        n13), .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_7_DW01_sub_0 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n13), .DIFF(difference) );
  SAEDSLVT14_TIE0_V1_2 U6 ( .X(n13) );
endmodule


module PE_6_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [8:1] carry;

  SAEDSLVT14_ADDF_V2_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V2_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V2_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V2_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V2_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V2_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V2_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
  SAEDSLVT14_NR2_1P5 U1 ( .A1(n1), .A2(n2), .X(carry[1]) );
  SAEDSLVT14_INV_PECO_1 U2 ( .A(A[0]), .X(n1) );
  SAEDSLVT14_INV_PECO_1 U3 ( .A(B[0]), .X(n2) );
  SAEDSLVT14_EO2_V1_0P75 U4 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
endmodule


module PE_6_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1;
  wire   [8:0] carry;
  wire   [7:0] B_not;

  SAEDSLVT14_ADDF_V2_1 U2_7 ( .A(A[7]), .B(B_not[7]), .CI(carry[7]), .S(
        DIFF[7]) );
  SAEDSLVT14_ADDF_V2_1 U2_6 ( .A(A[6]), .B(B_not[6]), .CI(carry[6]), .CO(
        carry[7]), .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V2_1 U2_5 ( .A(A[5]), .B(B_not[5]), .CI(carry[5]), .CO(
        carry[6]), .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V2_1 U2_4 ( .A(A[4]), .B(B_not[4]), .CI(carry[4]), .CO(
        carry[5]), .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V2_1 U2_3 ( .A(A[3]), .B(B_not[3]), .CI(carry[3]), .CO(
        carry[4]), .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V2_1 U2_2 ( .A(A[2]), .B(B_not[2]), .CI(carry[2]), .CO(
        carry[3]), .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V2_1 U2_1 ( .A(A[1]), .B(B_not[1]), .CI(carry[1]), .CO(
        carry[2]), .S(DIFF[1]) );
  SAEDSLVT14_INV_PECO_1 U1 ( .A(n1), .X(carry[1]) );
  SAEDSLVT14_NR2_1P5 U2 ( .A1(A[0]), .A2(B_not[0]), .X(n1) );
  SAEDSLVT14_EN2_2 U3 ( .A1(B_not[0]), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_S_1P5 U4 ( .A(B[7]), .X(B_not[7]) );
  SAEDSLVT14_INV_S_1P5 U5 ( .A(B[6]), .X(B_not[6]) );
  SAEDSLVT14_INV_S_1P5 U6 ( .A(B[5]), .X(B_not[5]) );
  SAEDSLVT14_INV_S_1P5 U7 ( .A(B[4]), .X(B_not[4]) );
  SAEDSLVT14_INV_S_1P5 U8 ( .A(B[3]), .X(B_not[3]) );
  SAEDSLVT14_INV_S_1P5 U9 ( .A(B[2]), .X(B_not[2]) );
  SAEDSLVT14_INV_S_1P5 U10 ( .A(B[1]), .X(B_not[1]) );
  SAEDSLVT14_INV_S_1P5 U11 ( .A(B[0]), .X(B_not[0]) );
endmodule


module PE_6 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n2, n3, n5, n6, n7, n8, n11, n12, n13;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n2), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n3), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n5), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n6), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n7), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n8), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n11), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n12), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_INV_S_1 U3 ( .A(N27), .X(n12) );
  SAEDSLVT14_INV_S_1 U4 ( .A(N28), .X(n11) );
  SAEDSLVT14_INV_S_1 U5 ( .A(N29), .X(n8) );
  SAEDSLVT14_INV_S_1 U10 ( .A(N30), .X(n7) );
  SAEDSLVT14_INV_S_1 U11 ( .A(N31), .X(n6) );
  SAEDSLVT14_INV_S_1 U12 ( .A(N32), .X(n5) );
  SAEDSLVT14_INV_S_1 U14 ( .A(N26), .X(n2) );
  SAEDHVT14_AO22_0P5 U15 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n1), .X(
        N9) );
  SAEDHVT14_AO22_0P5 U16 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n1), .X(
        N8) );
  SAEDHVT14_AO22_0P5 U17 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n1), .X(
        N15) );
  SAEDHVT14_AO22_0P5 U18 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n1), .X(
        N14) );
  SAEDHVT14_AO22_0P5 U19 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n1), .X(
        N13) );
  SAEDHVT14_AO22_0P5 U20 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n1), .X(
        N12) );
  SAEDHVT14_AO22_0P5 U21 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n1), .X(
        N11) );
  SAEDHVT14_AO22_0P5 U22 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n1), .X(
        N10) );
  SAEDHVT14_INV_0P5 U23 ( .A(S1S2mux), .X(n1) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDHVT14_FDP_V2LP_0P5 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0])
         );
  SAEDHVT14_FDP_V2LP_0P5 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2])
         );
  SAEDHVT14_FDP_V2LP_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDSLVT14_FDP_V2_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDSLVT14_INV_S_0P5 U7 ( .A(N33), .X(n3) );
  PE_6_DW01_add_0 add_52 ( .A({n13, Accumulate}), .B({n13, difference}), .CI(
        n13), .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_6_DW01_sub_0 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n13), .DIFF(difference) );
  SAEDSLVT14_TIE0_V1_2 U6 ( .X(n13) );
endmodule


module PE_5_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [8:1] carry;

  SAEDSLVT14_ADDF_V2_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V2_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V2_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V2_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V2_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V2_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V2_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
  SAEDSLVT14_NR2_1P5 U1 ( .A1(n1), .A2(n2), .X(carry[1]) );
  SAEDSLVT14_INV_PECO_1 U2 ( .A(A[0]), .X(n1) );
  SAEDSLVT14_INV_PECO_1 U3 ( .A(B[0]), .X(n2) );
  SAEDSLVT14_EO2_V1_0P75 U4 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
endmodule


module PE_5_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1;
  wire   [8:0] carry;
  wire   [7:0] B_not;

  SAEDSLVT14_ADDF_V2_1 U2_7 ( .A(A[7]), .B(B_not[7]), .CI(carry[7]), .S(
        DIFF[7]) );
  SAEDSLVT14_ADDF_V2_1 U2_6 ( .A(A[6]), .B(B_not[6]), .CI(carry[6]), .CO(
        carry[7]), .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V2_1 U2_5 ( .A(A[5]), .B(B_not[5]), .CI(carry[5]), .CO(
        carry[6]), .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V2_1 U2_4 ( .A(A[4]), .B(B_not[4]), .CI(carry[4]), .CO(
        carry[5]), .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V2_1 U2_3 ( .A(A[3]), .B(B_not[3]), .CI(carry[3]), .CO(
        carry[4]), .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V2_1 U2_2 ( .A(A[2]), .B(B_not[2]), .CI(carry[2]), .CO(
        carry[3]), .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V2_1 U2_1 ( .A(A[1]), .B(B_not[1]), .CI(carry[1]), .CO(
        carry[2]), .S(DIFF[1]) );
  SAEDSLVT14_INV_PECO_1 U1 ( .A(n1), .X(carry[1]) );
  SAEDSLVT14_NR2_1P5 U2 ( .A1(A[0]), .A2(B_not[0]), .X(n1) );
  SAEDSLVT14_EN2_2 U3 ( .A1(B_not[0]), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_S_1P5 U4 ( .A(B[7]), .X(B_not[7]) );
  SAEDSLVT14_INV_S_1P5 U5 ( .A(B[6]), .X(B_not[6]) );
  SAEDSLVT14_INV_S_1P5 U6 ( .A(B[5]), .X(B_not[5]) );
  SAEDSLVT14_INV_S_1P5 U7 ( .A(B[4]), .X(B_not[4]) );
  SAEDSLVT14_INV_S_1P5 U8 ( .A(B[3]), .X(B_not[3]) );
  SAEDSLVT14_INV_S_1P5 U9 ( .A(B[2]), .X(B_not[2]) );
  SAEDSLVT14_INV_S_1P5 U10 ( .A(B[1]), .X(B_not[1]) );
  SAEDSLVT14_INV_S_1P5 U11 ( .A(B[0]), .X(B_not[0]) );
endmodule


module PE_5 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n2, n3, n5, n6, n7, n8, n11, n12, n13;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n2), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n3), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n5), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n6), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n7), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n8), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n11), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n12), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_INV_S_1 U3 ( .A(N27), .X(n12) );
  SAEDSLVT14_INV_S_1 U4 ( .A(N28), .X(n11) );
  SAEDSLVT14_INV_S_1 U5 ( .A(N29), .X(n8) );
  SAEDSLVT14_INV_S_1 U10 ( .A(N30), .X(n7) );
  SAEDSLVT14_INV_S_1 U11 ( .A(N31), .X(n6) );
  SAEDSLVT14_INV_S_1 U12 ( .A(N32), .X(n5) );
  SAEDSLVT14_INV_S_1 U13 ( .A(N33), .X(n3) );
  SAEDSLVT14_INV_S_1 U14 ( .A(N26), .X(n2) );
  SAEDHVT14_AO22_0P5 U15 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n1), .X(
        N9) );
  SAEDHVT14_AO22_0P5 U16 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n1), .X(
        N8) );
  SAEDHVT14_AO22_0P5 U18 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n1), .X(
        N14) );
  SAEDHVT14_AO22_0P5 U19 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n1), .X(
        N13) );
  SAEDHVT14_AO22_0P5 U20 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n1), .X(
        N12) );
  SAEDHVT14_AO22_0P5 U21 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n1), .X(
        N11) );
  SAEDHVT14_AO22_0P5 U22 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n1), .X(
        N10) );
  SAEDHVT14_FDP_V2LP_1 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDHVT14_FDP_V2LP_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDHVT14_FDP_V2LP_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDSLVT14_INV_S_0P5 U7 ( .A(S1S2mux), .X(n1) );
  SAEDLVT14_AO22_1 U8 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n1), .X(N15)
         );
  PE_5_DW01_add_0 add_52 ( .A({n13, Accumulate}), .B({n13, difference}), .CI(
        n13), .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_5_DW01_sub_0 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n13), .DIFF(difference) );
  SAEDSLVT14_TIE0_V1_2 U6 ( .X(n13) );
endmodule


module PE_4_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [8:1] carry;

  SAEDSLVT14_ADDF_V2_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V2_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V2_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V2_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V2_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V2_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V2_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
  SAEDSLVT14_NR2_1P5 U1 ( .A1(n1), .A2(n2), .X(carry[1]) );
  SAEDSLVT14_INV_PECO_1 U2 ( .A(A[0]), .X(n1) );
  SAEDSLVT14_INV_PECO_1 U3 ( .A(B[0]), .X(n2) );
  SAEDSLVT14_EO2_V1_0P75 U4 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
endmodule


module PE_4_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1;
  wire   [8:0] carry;
  wire   [7:0] B_not;

  SAEDSLVT14_ADDF_V2_1 U2_7 ( .A(A[7]), .B(B_not[7]), .CI(carry[7]), .S(
        DIFF[7]) );
  SAEDSLVT14_ADDF_V2_1 U2_6 ( .A(A[6]), .B(B_not[6]), .CI(carry[6]), .CO(
        carry[7]), .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V2_1 U2_5 ( .A(A[5]), .B(B_not[5]), .CI(carry[5]), .CO(
        carry[6]), .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V2_1 U2_4 ( .A(A[4]), .B(B_not[4]), .CI(carry[4]), .CO(
        carry[5]), .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V2_1 U2_3 ( .A(A[3]), .B(B_not[3]), .CI(carry[3]), .CO(
        carry[4]), .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V2_1 U2_2 ( .A(A[2]), .B(B_not[2]), .CI(carry[2]), .CO(
        carry[3]), .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V2_1 U2_1 ( .A(A[1]), .B(B_not[1]), .CI(carry[1]), .CO(
        carry[2]), .S(DIFF[1]) );
  SAEDSLVT14_INV_PECO_1 U1 ( .A(n1), .X(carry[1]) );
  SAEDSLVT14_NR2_1P5 U2 ( .A1(A[0]), .A2(B_not[0]), .X(n1) );
  SAEDSLVT14_EN2_2 U3 ( .A1(B_not[0]), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_S_1P5 U4 ( .A(B[7]), .X(B_not[7]) );
  SAEDSLVT14_INV_S_1P5 U5 ( .A(B[6]), .X(B_not[6]) );
  SAEDSLVT14_INV_S_1P5 U6 ( .A(B[5]), .X(B_not[5]) );
  SAEDSLVT14_INV_S_1P5 U7 ( .A(B[4]), .X(B_not[4]) );
  SAEDSLVT14_INV_S_1P5 U8 ( .A(B[3]), .X(B_not[3]) );
  SAEDSLVT14_INV_S_1P5 U9 ( .A(B[2]), .X(B_not[2]) );
  SAEDSLVT14_INV_S_1P5 U10 ( .A(B[1]), .X(B_not[1]) );
  SAEDSLVT14_INV_S_1P5 U11 ( .A(B[0]), .X(B_not[0]) );
endmodule


module PE_4 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n2, n3, n5, n6, n7, n8, n13, n14, n15, n16, n17;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n5), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n6), .D(Carry), 
        .SI(n2), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n7), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n8), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n13), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n14), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n15), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n16), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_INV_S_1 U3 ( .A(N27), .X(n16) );
  SAEDSLVT14_INV_S_1 U4 ( .A(N28), .X(n15) );
  SAEDSLVT14_INV_S_1 U5 ( .A(N29), .X(n14) );
  SAEDSLVT14_INV_S_1 U10 ( .A(N30), .X(n13) );
  SAEDSLVT14_INV_S_1 U11 ( .A(N31), .X(n8) );
  SAEDSLVT14_INV_S_1 U12 ( .A(N32), .X(n7) );
  SAEDSLVT14_INV_S_1 U13 ( .A(N33), .X(n6) );
  SAEDSLVT14_INV_S_1 U14 ( .A(N26), .X(n5) );
  SAEDHVT14_AO22_0P5 U15 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n3), .X(
        N9) );
  SAEDHVT14_AO22_0P5 U16 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n3), .X(
        N8) );
  SAEDHVT14_AO22_0P5 U17 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n3), .X(
        N15) );
  SAEDHVT14_AO22_0P5 U18 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n3), .X(
        N14) );
  SAEDHVT14_AO22_0P5 U19 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n3), .X(
        N13) );
  SAEDHVT14_AO22_0P5 U20 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n3), .X(
        N12) );
  SAEDHVT14_AO22_0P5 U21 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n3), .X(
        N11) );
  SAEDHVT14_AO22_0P5 U22 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n3), .X(
        N10) );
  SAEDHVT14_INV_0P5 U23 ( .A(S1S2mux), .X(n3) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDRVT14_INV_PS_2 U7 ( .A(difference[7]), .X(n1) );
  SAEDSLVT14_INV_PECO_1 U8 ( .A(n1), .X(n2) );
  PE_4_DW01_add_0 add_52 ( .A({n17, Accumulate}), .B({n17, n2, difference[6:0]}), .CI(n17), .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_4_DW01_sub_0 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n17), .DIFF(difference) );
  SAEDSLVT14_TIE0_V1_2 U6 ( .X(n17) );
endmodule


module PE_3_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [8:1] carry;

  SAEDSLVT14_ADDF_V2_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V2_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V2_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V2_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V2_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V2_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V2_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
  SAEDSLVT14_NR2_1P5 U1 ( .A1(n1), .A2(n2), .X(carry[1]) );
  SAEDSLVT14_INV_PECO_1 U2 ( .A(A[0]), .X(n1) );
  SAEDSLVT14_INV_PECO_1 U3 ( .A(B[0]), .X(n2) );
  SAEDSLVT14_EO2_V1_0P75 U4 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
endmodule


module PE_3_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1;
  wire   [8:0] carry;
  wire   [7:0] B_not;

  SAEDSLVT14_ADDF_V2_1 U2_7 ( .A(A[7]), .B(B_not[7]), .CI(carry[7]), .S(
        DIFF[7]) );
  SAEDSLVT14_ADDF_V2_1 U2_6 ( .A(A[6]), .B(B_not[6]), .CI(carry[6]), .CO(
        carry[7]), .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V2_1 U2_5 ( .A(A[5]), .B(B_not[5]), .CI(carry[5]), .CO(
        carry[6]), .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V2_1 U2_4 ( .A(A[4]), .B(B_not[4]), .CI(carry[4]), .CO(
        carry[5]), .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V2_1 U2_3 ( .A(A[3]), .B(B_not[3]), .CI(carry[3]), .CO(
        carry[4]), .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V2_1 U2_2 ( .A(A[2]), .B(B_not[2]), .CI(carry[2]), .CO(
        carry[3]), .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V2_1 U2_1 ( .A(A[1]), .B(B_not[1]), .CI(carry[1]), .CO(
        carry[2]), .S(DIFF[1]) );
  SAEDSLVT14_INV_PECO_1 U1 ( .A(n1), .X(carry[1]) );
  SAEDSLVT14_NR2_1P5 U2 ( .A1(A[0]), .A2(B_not[0]), .X(n1) );
  SAEDSLVT14_EN2_2 U3 ( .A1(B_not[0]), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_S_1P5 U4 ( .A(B[7]), .X(B_not[7]) );
  SAEDSLVT14_INV_S_1P5 U5 ( .A(B[6]), .X(B_not[6]) );
  SAEDSLVT14_INV_S_1P5 U6 ( .A(B[5]), .X(B_not[5]) );
  SAEDSLVT14_INV_S_1P5 U7 ( .A(B[4]), .X(B_not[4]) );
  SAEDSLVT14_INV_S_1P5 U8 ( .A(B[3]), .X(B_not[3]) );
  SAEDSLVT14_INV_S_1P5 U9 ( .A(B[2]), .X(B_not[2]) );
  SAEDSLVT14_INV_S_1P5 U10 ( .A(B[1]), .X(B_not[1]) );
  SAEDSLVT14_INV_S_1P5 U11 ( .A(B[0]), .X(B_not[0]) );
endmodule


module PE_3 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n2, n3, n5, n6, n7, n8, n11, n12, n13;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n2), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n3), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n5), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n6), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n7), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n8), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n11), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n12), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_INV_S_1 U3 ( .A(N27), .X(n12) );
  SAEDSLVT14_INV_S_1 U4 ( .A(N28), .X(n11) );
  SAEDSLVT14_INV_S_1 U5 ( .A(N29), .X(n8) );
  SAEDSLVT14_INV_S_1 U10 ( .A(N30), .X(n7) );
  SAEDSLVT14_INV_S_1 U11 ( .A(N31), .X(n6) );
  SAEDSLVT14_INV_S_1 U12 ( .A(N32), .X(n5) );
  SAEDSLVT14_INV_S_1 U14 ( .A(N26), .X(n2) );
  SAEDHVT14_AO22_0P5 U15 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n1), .X(
        N9) );
  SAEDHVT14_AO22_0P5 U16 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n1), .X(
        N8) );
  SAEDHVT14_AO22_0P5 U17 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n1), .X(
        N15) );
  SAEDHVT14_AO22_0P5 U18 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n1), .X(
        N14) );
  SAEDHVT14_AO22_0P5 U19 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n1), .X(
        N13) );
  SAEDHVT14_AO22_0P5 U20 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n1), .X(
        N12) );
  SAEDHVT14_AO22_0P5 U21 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n1), .X(
        N11) );
  SAEDHVT14_AO22_0P5 U22 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n1), .X(
        N10) );
  SAEDHVT14_INV_0P5 U23 ( .A(S1S2mux), .X(n1) );
  SAEDHVT14_FDP_V2LP_0P5 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0])
         );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDSLVT14_FDP_V2_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDSLVT14_INV_0P5 U7 ( .A(N33), .X(n3) );
  PE_3_DW01_add_0 add_52 ( .A({n13, Accumulate}), .B({n13, difference}), .CI(
        n13), .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_3_DW01_sub_0 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n13), .DIFF(difference) );
  SAEDSLVT14_TIE0_V1_2 U6 ( .X(n13) );
endmodule


module PE_2_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [8:1] carry;

  SAEDSLVT14_ADDF_V2_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V2_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V2_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V2_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V2_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V2_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V2_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
  SAEDSLVT14_NR2_1P5 U1 ( .A1(n1), .A2(n2), .X(carry[1]) );
  SAEDSLVT14_INV_PECO_1 U2 ( .A(A[0]), .X(n1) );
  SAEDSLVT14_INV_PECO_1 U3 ( .A(B[0]), .X(n2) );
  SAEDSLVT14_EO2_V1_0P75 U4 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
endmodule


module PE_2_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1;
  wire   [8:0] carry;
  wire   [7:0] B_not;

  SAEDSLVT14_ADDF_V2_1 U2_7 ( .A(A[7]), .B(B_not[7]), .CI(carry[7]), .S(
        DIFF[7]) );
  SAEDSLVT14_ADDF_V2_1 U2_6 ( .A(A[6]), .B(B_not[6]), .CI(carry[6]), .CO(
        carry[7]), .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V2_1 U2_5 ( .A(A[5]), .B(B_not[5]), .CI(carry[5]), .CO(
        carry[6]), .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V2_1 U2_4 ( .A(A[4]), .B(B_not[4]), .CI(carry[4]), .CO(
        carry[5]), .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V2_1 U2_3 ( .A(A[3]), .B(B_not[3]), .CI(carry[3]), .CO(
        carry[4]), .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V2_1 U2_2 ( .A(A[2]), .B(B_not[2]), .CI(carry[2]), .CO(
        carry[3]), .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V2_1 U2_1 ( .A(A[1]), .B(B_not[1]), .CI(carry[1]), .CO(
        carry[2]), .S(DIFF[1]) );
  SAEDSLVT14_INV_PECO_1 U1 ( .A(n1), .X(carry[1]) );
  SAEDSLVT14_NR2_1P5 U2 ( .A1(A[0]), .A2(B_not[0]), .X(n1) );
  SAEDSLVT14_EN2_2 U3 ( .A1(B_not[0]), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_S_1P5 U4 ( .A(B[7]), .X(B_not[7]) );
  SAEDSLVT14_INV_S_1P5 U5 ( .A(B[6]), .X(B_not[6]) );
  SAEDSLVT14_INV_S_1P5 U6 ( .A(B[5]), .X(B_not[5]) );
  SAEDSLVT14_INV_S_1P5 U7 ( .A(B[4]), .X(B_not[4]) );
  SAEDSLVT14_INV_S_1P5 U8 ( .A(B[3]), .X(B_not[3]) );
  SAEDSLVT14_INV_S_1P5 U9 ( .A(B[2]), .X(B_not[2]) );
  SAEDSLVT14_INV_S_1P5 U10 ( .A(B[1]), .X(B_not[1]) );
  SAEDSLVT14_INV_S_1P5 U11 ( .A(B[0]), .X(B_not[0]) );
endmodule


module PE_2 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n2, n3, n5, n6, n7, n8, n13, n14, n15, n16, n17;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n5), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n6), .D(Carry), 
        .SI(n2), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n7), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n8), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n13), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n14), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n15), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n16), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_INV_S_1 U3 ( .A(N27), .X(n16) );
  SAEDSLVT14_INV_S_1 U4 ( .A(N28), .X(n15) );
  SAEDSLVT14_INV_S_1 U5 ( .A(N29), .X(n14) );
  SAEDSLVT14_INV_S_1 U10 ( .A(N30), .X(n13) );
  SAEDSLVT14_INV_S_1 U11 ( .A(N31), .X(n8) );
  SAEDSLVT14_INV_S_1 U12 ( .A(N32), .X(n7) );
  SAEDSLVT14_INV_S_1 U14 ( .A(N26), .X(n5) );
  SAEDHVT14_AO22_0P5 U15 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n3), .X(
        N9) );
  SAEDHVT14_AO22_0P5 U16 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n3), .X(
        N8) );
  SAEDHVT14_AO22_0P5 U17 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n3), .X(
        N15) );
  SAEDHVT14_AO22_0P5 U18 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n3), .X(
        N14) );
  SAEDHVT14_AO22_0P5 U19 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n3), .X(
        N13) );
  SAEDHVT14_AO22_0P5 U20 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n3), .X(
        N12) );
  SAEDHVT14_AO22_0P5 U21 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n3), .X(
        N11) );
  SAEDHVT14_AO22_0P5 U22 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n3), .X(
        N10) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDHVT14_FDP_V2LP_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDHVT14_FDP_V2_0P5 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDHVT14_INV_1P5 U7 ( .A(S1S2mux), .X(n3) );
  SAEDSLVT14_INV_PECO_1 U8 ( .A(difference[7]), .X(n1) );
  SAEDHVT14_INV_PS_3 U9 ( .A(n1), .X(n2) );
  SAEDSLVT14_INV_S_0P5 U13 ( .A(N33), .X(n6) );
  PE_2_DW01_add_0 add_52 ( .A({n17, Accumulate}), .B({n17, n2, difference[6:0]}), .CI(n17), .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_2_DW01_sub_0 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n17), .DIFF(difference) );
  SAEDSLVT14_TIE0_V1_2 U6 ( .X(n17) );
endmodule


module PE_1_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [8:1] carry;

  SAEDSLVT14_ADDF_V2_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V2_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V2_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V2_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V2_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V2_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V2_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
  SAEDSLVT14_NR2_1P5 U1 ( .A1(n1), .A2(n2), .X(carry[1]) );
  SAEDSLVT14_INV_PECO_1 U2 ( .A(A[0]), .X(n1) );
  SAEDSLVT14_INV_PECO_1 U3 ( .A(B[0]), .X(n2) );
  SAEDSLVT14_EO2_V1_0P75 U4 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
endmodule


module PE_1_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1;
  wire   [8:0] carry;
  wire   [7:0] B_not;

  SAEDSLVT14_ADDF_V2_1 U2_7 ( .A(A[7]), .B(B_not[7]), .CI(carry[7]), .S(
        DIFF[7]) );
  SAEDSLVT14_ADDF_V2_1 U2_6 ( .A(A[6]), .B(B_not[6]), .CI(carry[6]), .CO(
        carry[7]), .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V2_1 U2_5 ( .A(A[5]), .B(B_not[5]), .CI(carry[5]), .CO(
        carry[6]), .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V2_1 U2_4 ( .A(A[4]), .B(B_not[4]), .CI(carry[4]), .CO(
        carry[5]), .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V2_1 U2_3 ( .A(A[3]), .B(B_not[3]), .CI(carry[3]), .CO(
        carry[4]), .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V2_1 U2_2 ( .A(A[2]), .B(B_not[2]), .CI(carry[2]), .CO(
        carry[3]), .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V2_1 U2_1 ( .A(A[1]), .B(B_not[1]), .CI(carry[1]), .CO(
        carry[2]), .S(DIFF[1]) );
  SAEDSLVT14_INV_PECO_1 U1 ( .A(n1), .X(carry[1]) );
  SAEDSLVT14_NR2_1P5 U2 ( .A1(A[0]), .A2(B_not[0]), .X(n1) );
  SAEDSLVT14_EN2_2 U3 ( .A1(B_not[0]), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_S_1P5 U4 ( .A(B[7]), .X(B_not[7]) );
  SAEDSLVT14_INV_S_1P5 U5 ( .A(B[6]), .X(B_not[6]) );
  SAEDSLVT14_INV_S_1P5 U6 ( .A(B[5]), .X(B_not[5]) );
  SAEDSLVT14_INV_S_1P5 U7 ( .A(B[4]), .X(B_not[4]) );
  SAEDSLVT14_INV_S_1P5 U8 ( .A(B[3]), .X(B_not[3]) );
  SAEDSLVT14_INV_S_1P5 U9 ( .A(B[2]), .X(B_not[2]) );
  SAEDSLVT14_INV_S_1P5 U10 ( .A(B[1]), .X(B_not[1]) );
  SAEDSLVT14_INV_S_1P5 U11 ( .A(B[0]), .X(B_not[0]) );
endmodule


module PE_1 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n2, n3, n5, n6, n7, n8, n11, n12, n13;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n2), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n3), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n5), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n6), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n7), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n8), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n11), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n12), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_INV_S_1 U3 ( .A(N27), .X(n12) );
  SAEDSLVT14_INV_S_1 U4 ( .A(N28), .X(n11) );
  SAEDSLVT14_INV_S_1 U5 ( .A(N29), .X(n8) );
  SAEDSLVT14_INV_S_1 U10 ( .A(N30), .X(n7) );
  SAEDSLVT14_INV_S_1 U11 ( .A(N31), .X(n6) );
  SAEDSLVT14_INV_S_1 U12 ( .A(N32), .X(n5) );
  SAEDSLVT14_INV_S_1 U14 ( .A(N26), .X(n2) );
  SAEDHVT14_AO22_0P5 U15 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n1), .X(
        N9) );
  SAEDHVT14_AO22_0P5 U16 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n1), .X(
        N8) );
  SAEDHVT14_AO22_0P5 U17 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n1), .X(
        N15) );
  SAEDHVT14_AO22_0P5 U18 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n1), .X(
        N14) );
  SAEDHVT14_AO22_0P5 U19 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n1), .X(
        N13) );
  SAEDHVT14_AO22_0P5 U20 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n1), .X(
        N12) );
  SAEDHVT14_AO22_0P5 U21 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n1), .X(
        N11) );
  SAEDHVT14_AO22_0P5 U22 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n1), .X(
        N10) );
  SAEDHVT14_INV_0P5 U23 ( .A(S1S2mux), .X(n1) );
  SAEDSLVT14_FDP_V2LP_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDSLVT14_FDP_V2LP_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDSLVT14_FDP_V2_1 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDSLVT14_INV_S_0P5 U7 ( .A(N33), .X(n3) );
  PE_1_DW01_add_0 add_52 ( .A({n13, Accumulate}), .B({n13, difference}), .CI(
        n13), .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_1_DW01_sub_0 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n13), .DIFF(difference) );
  SAEDSLVT14_TIE0_V1_2 U6 ( .X(n13) );
endmodule


module PEend_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [8:1] carry;

  SAEDSLVT14_ADDF_V2_0P5 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(
        carry[2]), .S(SUM[1]) );
  SAEDSLVT14_ADDF_V2_0P5 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(
        carry[4]), .S(SUM[3]) );
  SAEDSLVT14_ADDF_V2_0P5 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(
        carry[3]), .S(SUM[2]) );
  SAEDSLVT14_ADDF_V2_0P5 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(
        carry[5]), .S(SUM[4]) );
  SAEDSLVT14_ADDF_V2_0P5 U1_6 ( .A(B[6]), .B(A[6]), .CI(carry[6]), .CO(
        carry[7]), .S(SUM[6]) );
  SAEDSLVT14_ADDF_V2_0P5 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V2_0P5 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(
        carry[6]), .S(SUM[5]) );
  SAEDSLVT14_NR2_MM_1 U1 ( .A1(n1), .A2(n2), .X(carry[1]) );
  SAEDSLVT14_INV_0P5 U2 ( .A(B[0]), .X(n2) );
  SAEDSLVT14_INV_PECO_1 U3 ( .A(A[0]), .X(n1) );
  SAEDSLVT14_EO2_V1_0P75 U4 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
endmodule


module PEend_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [8:0] carry;
  wire   [7:0] B_not;

  SAEDSLVT14_ADDF_V2_1 U2_4 ( .A(A[4]), .B(B_not[4]), .CI(carry[4]), .CO(
        carry[5]), .S(DIFF[4]) );
  SAEDHVT14_ADDF_V2_0P5 U2_6 ( .A(A[6]), .B(B_not[6]), .CI(carry[6]), .CO(
        carry[7]), .S(DIFF[6]) );
  SAEDSLVT14_EO3_1 U2_7 ( .A1(A[7]), .A2(B_not[7]), .A3(n2), .X(DIFF[7]) );
  SAEDSLVT14_ADDF_V2_0P5 U2_3 ( .A(A[3]), .B(B_not[3]), .CI(carry[3]), .CO(
        carry[4]), .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V2_0P5 U2_1 ( .A(A[1]), .B(B_not[1]), .CI(carry[1]), .CO(
        carry[2]), .S(DIFF[1]) );
  SAEDSLVT14_ADDF_V2_0P5 U2_2 ( .A(A[2]), .B(B_not[2]), .CI(carry[2]), .CO(
        carry[3]), .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V1_1 U2_5 ( .A(A[5]), .B(B_not[5]), .CI(carry[5]), .CO(
        carry[6]), .S(DIFF[5]) );
  SAEDSLVT14_INV_PECO_1 U1 ( .A(carry[7]), .X(n1) );
  SAEDHVT14_INV_PS_3 U2 ( .A(n1), .X(n2) );
  SAEDHVT14_OR2_0P5 U3 ( .A1(B_not[0]), .A2(A[0]), .X(carry[1]) );
  SAEDHVT14_EN2_1 U4 ( .A1(A[0]), .A2(B_not[0]), .X(DIFF[0]) );
  SAEDHVT14_INV_0P5 U5 ( .A(B[7]), .X(B_not[7]) );
  SAEDHVT14_INV_0P5 U6 ( .A(B[6]), .X(B_not[6]) );
  SAEDHVT14_INV_0P5 U7 ( .A(B[5]), .X(B_not[5]) );
  SAEDHVT14_INV_0P5 U8 ( .A(B[4]), .X(B_not[4]) );
  SAEDHVT14_INV_0P5 U9 ( .A(B[3]), .X(B_not[3]) );
  SAEDHVT14_INV_0P5 U10 ( .A(B[2]), .X(B_not[2]) );
  SAEDHVT14_INV_0P5 U11 ( .A(B[1]), .X(B_not[1]) );
  SAEDHVT14_INV_0P5 U12 ( .A(B[0]), .X(B_not[0]) );
endmodule


module PEend ( clock, R, S1, S2, S1S2mux, newDist, Accumulate );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n4, n9, n10, n11, n12, n13, n14, n15, n16, n17;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n16), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n15), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n14), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n13), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n12), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n11), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n10), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n9), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_INV_S_1 U3 ( .A(N27), .X(n9) );
  SAEDSLVT14_INV_S_1 U4 ( .A(N28), .X(n10) );
  SAEDSLVT14_INV_S_1 U5 ( .A(N29), .X(n11) );
  SAEDSLVT14_INV_S_1 U10 ( .A(N30), .X(n12) );
  SAEDSLVT14_INV_S_1 U11 ( .A(N31), .X(n13) );
  SAEDSLVT14_INV_S_1 U12 ( .A(N32), .X(n14) );
  SAEDSLVT14_INV_S_1 U13 ( .A(N33), .X(n15) );
  SAEDSLVT14_INV_S_1 U14 ( .A(N26), .X(n16) );
  SAEDHVT14_AO22_0P5 U15 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n17), .X(
        N9) );
  SAEDHVT14_AO22_0P5 U16 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n17), .X(
        N8) );
  SAEDHVT14_AO22_0P5 U17 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n17), .X(
        N15) );
  SAEDHVT14_AO22_0P5 U18 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n17), .X(
        N14) );
  SAEDHVT14_AO22_0P5 U19 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n17), .X(
        N13) );
  SAEDHVT14_AO22_0P5 U20 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n17), .X(
        N12) );
  SAEDHVT14_AO22_0P5 U21 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n17), .X(
        N11) );
  SAEDHVT14_AO22_0P5 U22 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n17), .X(
        N10) );
  SAEDHVT14_INV_0P5 U23 ( .A(S1S2mux), .X(n17) );
  PEend_DW01_add_0 add_77 ( .A({n4, Accumulate}), .B({n4, difference}), .CI(n4), .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PEend_DW01_sub_1 sub_71 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n4), .DIFF(difference) );
  SAEDSLVT14_TIE0_V1_2 U6 ( .X(n4) );
endmodule


module PEtotal ( clock, R, S1, S2, S1S2mux, newDist, Accumulate );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  input [15:0] S1S2mux;
  input [15:0] newDist;
  output [127:0] Accumulate;
  input clock;

  wire   [7:0] Rpipe0;
  wire   [7:0] Rpipe1;
  wire   [7:0] Rpipe2;
  wire   [7:0] Rpipe3;
  wire   [7:0] Rpipe4;
  wire   [7:0] Rpipe5;
  wire   [7:0] Rpipe6;
  wire   [7:0] Rpipe7;
  wire   [7:0] Rpipe8;
  wire   [7:0] Rpipe9;
  wire   [7:0] Rpipe10;
  wire   [7:0] Rpipe11;
  wire   [7:0] Rpipe12;
  wire   [7:0] Rpipe13;
  wire   [7:0] Rpipe14;

  PE_0 pe0 ( .clock(clock), .R(R), .S1(S1), .S2(S2), .S1S2mux(S1S2mux[0]), 
        .newDist(newDist[0]), .Accumulate(Accumulate[7:0]), .Rpipe(Rpipe0) );
  PE_14 pe1 ( .clock(clock), .R(Rpipe0), .S1(S1), .S2(S2), .S1S2mux(S1S2mux[1]), .newDist(newDist[1]), .Accumulate(Accumulate[15:8]), .Rpipe(Rpipe1) );
  PE_13 pe2 ( .clock(clock), .R(Rpipe1), .S1(S1), .S2(S2), .S1S2mux(S1S2mux[2]), .newDist(newDist[2]), .Accumulate(Accumulate[23:16]), .Rpipe(Rpipe2) );
  PE_12 pe3 ( .clock(clock), .R(Rpipe2), .S1(S1), .S2(S2), .S1S2mux(S1S2mux[3]), .newDist(newDist[3]), .Accumulate(Accumulate[31:24]), .Rpipe(Rpipe3) );
  PE_11 pe4 ( .clock(clock), .R(Rpipe3), .S1(S1), .S2(S2), .S1S2mux(S1S2mux[4]), .newDist(newDist[4]), .Accumulate(Accumulate[39:32]), .Rpipe(Rpipe4) );
  PE_10 pe5 ( .clock(clock), .R(Rpipe4), .S1(S1), .S2(S2), .S1S2mux(S1S2mux[5]), .newDist(newDist[5]), .Accumulate(Accumulate[47:40]), .Rpipe(Rpipe5) );
  PE_9 pe6 ( .clock(clock), .R(Rpipe5), .S1(S1), .S2(S2), .S1S2mux(S1S2mux[6]), 
        .newDist(newDist[6]), .Accumulate(Accumulate[55:48]), .Rpipe(Rpipe6)
         );
  PE_8 pe7 ( .clock(clock), .R(Rpipe6), .S1(S1), .S2(S2), .S1S2mux(S1S2mux[7]), 
        .newDist(newDist[7]), .Accumulate(Accumulate[63:56]), .Rpipe(Rpipe7)
         );
  PE_7 pe8 ( .clock(clock), .R(Rpipe7), .S1(S1), .S2(S2), .S1S2mux(S1S2mux[8]), 
        .newDist(newDist[8]), .Accumulate(Accumulate[71:64]), .Rpipe(Rpipe8)
         );
  PE_6 pe9 ( .clock(clock), .R(Rpipe8), .S1(S1), .S2(S2), .S1S2mux(S1S2mux[9]), 
        .newDist(newDist[9]), .Accumulate(Accumulate[79:72]), .Rpipe(Rpipe9)
         );
  PE_5 pe10 ( .clock(clock), .R(Rpipe9), .S1(S1), .S2(S2), .S1S2mux(
        S1S2mux[10]), .newDist(newDist[10]), .Accumulate(Accumulate[87:80]), 
        .Rpipe(Rpipe10) );
  PE_4 pe11 ( .clock(clock), .R(Rpipe10), .S1(S1), .S2(S2), .S1S2mux(
        S1S2mux[11]), .newDist(newDist[11]), .Accumulate(Accumulate[95:88]), 
        .Rpipe(Rpipe11) );
  PE_3 pe12 ( .clock(clock), .R(Rpipe11), .S1(S1), .S2(S2), .S1S2mux(
        S1S2mux[12]), .newDist(newDist[12]), .Accumulate(Accumulate[103:96]), 
        .Rpipe(Rpipe12) );
  PE_2 pe13 ( .clock(clock), .R(Rpipe12), .S1(S1), .S2(S2), .S1S2mux(
        S1S2mux[13]), .newDist(newDist[13]), .Accumulate(Accumulate[111:104]), 
        .Rpipe(Rpipe13) );
  PE_1 pe14 ( .clock(clock), .R(Rpipe13), .S1(S1), .S2(S2), .S1S2mux(
        S1S2mux[14]), .newDist(newDist[14]), .Accumulate(Accumulate[119:112]), 
        .Rpipe(Rpipe14) );
  PEend pe15 ( .clock(clock), .R(Rpipe14), .S1(S1), .S2(S2), .S1S2mux(
        S1S2mux[15]), .newDist(newDist[15]), .Accumulate(Accumulate[127:120])
         );
endmodule


module Comparator ( clock, CompStart, PEout, PEready, vectorX, vectorY, 
        BestDist, motionX, motionY );
  input [127:0] PEout;
  input [15:0] PEready;
  input [3:0] vectorX;
  input [3:0] vectorY;
  output [7:0] BestDist;
  output [3:0] motionX;
  output [3:0] motionY;
  input clock, CompStart;
  wire   N169, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153;
  wire   [7:0] newDist;

  SAEDHVT14_AO22_0P5 U3 ( .A1(vectorX[0]), .A2(n3), .B1(motionX[0]), .B2(n4), 
        .X(n110) );
  SAEDHVT14_AO22_0P5 U5 ( .A1(vectorX[1]), .A2(n3), .B1(motionX[1]), .B2(n4), 
        .X(n111) );
  SAEDHVT14_AO22_0P5 U6 ( .A1(vectorX[2]), .A2(n3), .B1(motionX[2]), .B2(n4), 
        .X(n112) );
  SAEDHVT14_AO22_0P5 U7 ( .A1(vectorX[3]), .A2(n3), .B1(motionX[3]), .B2(n4), 
        .X(n113) );
  SAEDHVT14_AO22_0P5 U8 ( .A1(vectorY[0]), .A2(n3), .B1(motionY[0]), .B2(n4), 
        .X(n114) );
  SAEDHVT14_AO22_0P5 U9 ( .A1(vectorY[1]), .A2(n3), .B1(motionY[1]), .B2(n4), 
        .X(n115) );
  SAEDHVT14_AO22_0P5 U10 ( .A1(vectorY[2]), .A2(n3), .B1(motionY[2]), .B2(n4), 
        .X(n116) );
  SAEDHVT14_AO22_0P5 U11 ( .A1(vectorY[3]), .A2(n3), .B1(motionY[3]), .B2(n4), 
        .X(n117) );
  SAEDHVT14_AO221_0P5 U18 ( .A1(PEout[41]), .A2(n18), .B1(PEout[33]), .B2(n19), 
        .C(n20), .X(n16) );
  SAEDHVT14_AO22_0P5 U19 ( .A1(PEout[49]), .A2(PEready[6]), .B1(PEout[25]), 
        .B2(n21), .X(n20) );
  SAEDHVT14_AO221_0P5 U22 ( .A1(PEout[65]), .A2(n27), .B1(PEout[57]), .B2(n28), 
        .C(n29), .X(n8) );
  SAEDHVT14_AO22_0P5 U23 ( .A1(PEout[97]), .A2(n30), .B1(PEout[81]), .B2(n31), 
        .X(n29) );
  SAEDHVT14_AO221_0P5 U24 ( .A1(n3), .A2(newDist[2]), .B1(BestDist[2]), .B2(n4), .C(n5), .X(n119) );
  SAEDHVT14_OAI21_0P5 U29 ( .A1(n37), .A2(n38), .B(n17), .X(n36) );
  SAEDHVT14_AO221_0P5 U30 ( .A1(PEout[42]), .A2(n18), .B1(PEout[34]), .B2(n19), 
        .C(n39), .X(n38) );
  SAEDHVT14_AO22_0P5 U31 ( .A1(PEout[50]), .A2(PEready[6]), .B1(PEout[26]), 
        .B2(n21), .X(n39) );
  SAEDHVT14_AO221_0P5 U32 ( .A1(PEout[2]), .A2(n22), .B1(PEout[18]), .B2(n23), 
        .C(n40), .X(n37) );
  SAEDHVT14_AO21B_0P5 U33 ( .A1(PEout[10]), .A2(n25), .B(n26), .X(n40) );
  SAEDHVT14_AO221_0P5 U34 ( .A1(PEout[66]), .A2(n27), .B1(PEout[58]), .B2(n28), 
        .C(n41), .X(n33) );
  SAEDHVT14_AO22_0P5 U35 ( .A1(PEout[98]), .A2(n30), .B1(PEout[82]), .B2(n31), 
        .X(n41) );
  SAEDHVT14_OA21B_1 U38 ( .A1(n43), .A2(n44), .B(n10), .X(n42) );
  SAEDHVT14_AO221_0P5 U39 ( .A1(PEout[91]), .A2(n11), .B1(PEout[107]), .B2(
        PEready[13]), .C(n45), .X(n44) );
  SAEDHVT14_AO21B_0P5 U40 ( .A1(PEout[75]), .A2(n13), .B(n46), .X(n45) );
  SAEDHVT14_OAI21_0P5 U41 ( .A1(n47), .A2(n48), .B(n17), .X(n46) );
  SAEDHVT14_AO221_0P5 U42 ( .A1(PEout[43]), .A2(n18), .B1(PEout[35]), .B2(n19), 
        .C(n49), .X(n48) );
  SAEDHVT14_AO22_0P5 U43 ( .A1(PEout[51]), .A2(PEready[6]), .B1(PEout[27]), 
        .B2(n21), .X(n49) );
  SAEDHVT14_AO221_0P5 U44 ( .A1(PEout[3]), .A2(n22), .B1(PEout[19]), .B2(n23), 
        .C(n50), .X(n47) );
  SAEDHVT14_AO21B_0P5 U45 ( .A1(PEout[11]), .A2(n25), .B(n26), .X(n50) );
  SAEDHVT14_AO221_0P5 U46 ( .A1(PEout[67]), .A2(n27), .B1(PEout[59]), .B2(n28), 
        .C(n51), .X(n43) );
  SAEDHVT14_AO22_0P5 U47 ( .A1(PEout[99]), .A2(n30), .B1(PEout[83]), .B2(n31), 
        .X(n51) );
  SAEDHVT14_AO221_0P5 U51 ( .A1(PEout[92]), .A2(n11), .B1(PEout[108]), .B2(
        PEready[13]), .C(n55), .X(n54) );
  SAEDHVT14_AO21B_0P5 U52 ( .A1(PEout[76]), .A2(n13), .B(n56), .X(n55) );
  SAEDHVT14_OAI21_0P5 U53 ( .A1(n57), .A2(n58), .B(n17), .X(n56) );
  SAEDHVT14_AO221_0P5 U54 ( .A1(PEout[44]), .A2(n18), .B1(PEout[36]), .B2(n19), 
        .C(n59), .X(n58) );
  SAEDHVT14_AO22_0P5 U55 ( .A1(PEout[52]), .A2(PEready[6]), .B1(PEout[28]), 
        .B2(n21), .X(n59) );
  SAEDHVT14_AO221_0P5 U56 ( .A1(PEout[4]), .A2(n22), .B1(PEout[20]), .B2(n23), 
        .C(n60), .X(n57) );
  SAEDHVT14_AO21B_0P5 U57 ( .A1(PEout[12]), .A2(n25), .B(n26), .X(n60) );
  SAEDHVT14_AO221_0P5 U58 ( .A1(PEout[68]), .A2(n27), .B1(PEout[60]), .B2(n28), 
        .C(n61), .X(n53) );
  SAEDHVT14_AO22_0P5 U59 ( .A1(PEout[100]), .A2(n30), .B1(PEout[84]), .B2(n31), 
        .X(n61) );
  SAEDHVT14_OA21B_1 U62 ( .A1(n63), .A2(n64), .B(n10), .X(n62) );
  SAEDHVT14_AO221_0P5 U66 ( .A1(PEout[45]), .A2(n18), .B1(PEout[37]), .B2(n19), 
        .C(n69), .X(n68) );
  SAEDHVT14_AO22_0P5 U67 ( .A1(PEout[53]), .A2(PEready[6]), .B1(PEout[29]), 
        .B2(n21), .X(n69) );
  SAEDHVT14_AO221_0P5 U68 ( .A1(PEout[5]), .A2(n22), .B1(PEout[21]), .B2(n23), 
        .C(n70), .X(n67) );
  SAEDHVT14_AO221_0P5 U70 ( .A1(PEout[69]), .A2(n27), .B1(PEout[61]), .B2(n28), 
        .C(n71), .X(n63) );
  SAEDHVT14_AO22_0P5 U71 ( .A1(PEout[101]), .A2(n30), .B1(PEout[85]), .B2(n31), 
        .X(n71) );
  SAEDHVT14_AO221_0P5 U72 ( .A1(n3), .A2(newDist[6]), .B1(BestDist[6]), .B2(n4), .C(n5), .X(n123) );
  SAEDHVT14_AO221_0P5 U73 ( .A1(PEout[118]), .A2(n6), .B1(PEout[126]), .B2(
        PEready[15]), .C(n72), .X(newDist[6]) );
  SAEDHVT14_OA21B_1 U74 ( .A1(n73), .A2(n74), .B(n10), .X(n72) );
  SAEDHVT14_AO221_0P5 U75 ( .A1(PEout[94]), .A2(n11), .B1(PEout[110]), .B2(
        PEready[13]), .C(n75), .X(n74) );
  SAEDHVT14_AO21B_0P5 U76 ( .A1(PEout[78]), .A2(n13), .B(n76), .X(n75) );
  SAEDHVT14_OAI21_0P5 U77 ( .A1(n77), .A2(n78), .B(n17), .X(n76) );
  SAEDHVT14_AO221_0P5 U78 ( .A1(PEout[46]), .A2(n18), .B1(PEout[38]), .B2(n19), 
        .C(n79), .X(n78) );
  SAEDHVT14_AO22_0P5 U79 ( .A1(PEout[54]), .A2(PEready[6]), .B1(PEout[30]), 
        .B2(n21), .X(n79) );
  SAEDHVT14_AO221_0P5 U80 ( .A1(PEout[6]), .A2(n22), .B1(PEout[22]), .B2(n23), 
        .C(n80), .X(n77) );
  SAEDHVT14_AO21B_0P5 U81 ( .A1(PEout[14]), .A2(n25), .B(n26), .X(n80) );
  SAEDHVT14_AO221_0P5 U82 ( .A1(PEout[70]), .A2(n27), .B1(PEout[62]), .B2(n28), 
        .C(n81), .X(n73) );
  SAEDHVT14_AO22_0P5 U83 ( .A1(PEout[102]), .A2(n30), .B1(PEout[86]), .B2(n31), 
        .X(n81) );
  SAEDHVT14_AO221_0P5 U84 ( .A1(n3), .A2(newDist[7]), .B1(BestDist[7]), .B2(n4), .C(n5), .X(n124) );
  SAEDHVT14_AO221_0P5 U85 ( .A1(PEout[119]), .A2(n6), .B1(PEready[15]), .B2(
        PEout[127]), .C(n82), .X(newDist[7]) );
  SAEDHVT14_OA21B_1 U86 ( .A1(n83), .A2(n84), .B(n10), .X(n82) );
  SAEDHVT14_AO221_0P5 U87 ( .A1(PEout[95]), .A2(n11), .B1(PEready[13]), .B2(
        PEout[111]), .C(n85), .X(n84) );
  SAEDHVT14_AO21B_0P5 U88 ( .A1(PEout[79]), .A2(n13), .B(n86), .X(n85) );
  SAEDHVT14_OAI21_0P5 U89 ( .A1(n87), .A2(n88), .B(n17), .X(n86) );
  SAEDHVT14_AO221_0P5 U90 ( .A1(PEout[47]), .A2(n18), .B1(PEout[39]), .B2(n19), 
        .C(n89), .X(n88) );
  SAEDHVT14_AO22_0P5 U91 ( .A1(PEready[6]), .A2(PEout[55]), .B1(PEout[31]), 
        .B2(n21), .X(n89) );
  SAEDHVT14_AO221_0P5 U92 ( .A1(PEout[7]), .A2(n22), .B1(PEout[23]), .B2(n23), 
        .C(n90), .X(n87) );
  SAEDHVT14_AO21B_0P5 U93 ( .A1(PEout[15]), .A2(n25), .B(n26), .X(n90) );
  SAEDHVT14_AO221_0P5 U94 ( .A1(PEout[71]), .A2(n27), .B1(PEout[63]), .B2(n28), 
        .C(n91), .X(n83) );
  SAEDHVT14_AO22_0P5 U95 ( .A1(PEout[103]), .A2(n30), .B1(PEout[87]), .B2(n31), 
        .X(n91) );
  SAEDHVT14_INV_0P5 U97 ( .A(CompStart), .X(n5) );
  SAEDHVT14_INV_0P5 U103 ( .A(n99), .X(n17) );
  SAEDHVT14_AO221_0P5 U104 ( .A1(PEout[40]), .A2(n18), .B1(PEout[32]), .B2(n19), .C(n100), .X(n98) );
  SAEDHVT14_AO22_0P5 U105 ( .A1(PEout[48]), .A2(PEready[6]), .B1(PEout[24]), 
        .B2(n21), .X(n100) );
  SAEDHVT14_INV_0P5 U107 ( .A(PEready[4]), .X(n101) );
  SAEDHVT14_AN2_1 U108 ( .A1(PEready[4]), .A2(n102), .X(n19) );
  SAEDHVT14_AN2B_MM_1 U109 ( .B(PEready[5]), .A(PEready[6]), .X(n18) );
  SAEDHVT14_AN2B_MM_1 U112 ( .B(PEready[1]), .A(n104), .X(n25) );
  SAEDHVT14_AN2_1 U113 ( .A1(PEready[2]), .A2(n105), .X(n23) );
  SAEDHVT14_NR3B_U_0P5 U114 ( .A(PEready[9]), .B1(PEready[10]), .B2(n106), .X(
        n13) );
  SAEDHVT14_NR3B_U_0P5 U115 ( .A(PEready[11]), .B1(PEready[13]), .B2(
        PEready[12]), .X(n11) );
  SAEDHVT14_AO221_0P5 U116 ( .A1(PEout[64]), .A2(n27), .B1(PEout[56]), .B2(n28), .C(n107), .X(n93) );
  SAEDHVT14_AO22_0P5 U117 ( .A1(PEout[96]), .A2(n30), .B1(PEout[80]), .B2(n31), 
        .X(n107) );
  SAEDHVT14_AN2B_MM_1 U118 ( .B(PEready[10]), .A(n106), .X(n31) );
  SAEDHVT14_AN2B_MM_1 U119 ( .B(PEready[12]), .A(PEready[13]), .X(n30) );
  SAEDHVT14_AN2_1 U120 ( .A1(PEready[7]), .A2(n108), .X(n28) );
  SAEDHVT14_AN2B_MM_1 U121 ( .B(PEready[8]), .A(n109), .X(n27) );
  SAEDHVT14_AN2B_MM_1 U122 ( .B(PEready[14]), .A(PEready[15]), .X(n6) );
  SAEDHVT14_OR2_0P5 U125 ( .A1(PEready[15]), .A2(PEready[14]), .X(n10) );
  SAEDHVT14_ND2B_U_0P5 U126 ( .A(PEready[7]), .B(n108), .X(n99) );
  SAEDHVT14_NR2_1 U127 ( .A1(n109), .A2(PEready[8]), .X(n108) );
  SAEDHVT14_OR3_0P5 U128 ( .A1(PEready[9]), .A2(PEready[10]), .A3(n106), .X(
        n109) );
  SAEDHVT14_OR3_0P5 U129 ( .A1(PEready[13]), .A2(PEready[12]), .A3(PEready[11]), .X(n106) );
  SAEDSLVT14_LSRDPQ_1 \BestDist_reg[6]  ( .D(n123), .CK(clock), .Q(BestDist[6]) );
  SAEDSLVT14_LSRDPQ_1 \BestDist_reg[7]  ( .D(n124), .CK(clock), .Q(BestDist[7]) );
  SAEDSLVT14_FDP_V2LP_0P5 \BestDist_reg[0]  ( .D(n125), .CK(clock), .Q(
        BestDist[0]) );
  SAEDSLVT14_FDP_V2LP_0P5 \BestDist_reg[1]  ( .D(n118), .CK(clock), .Q(
        BestDist[1]) );
  SAEDHVT14_FDP_V2_0P5 \BestDist_reg[2]  ( .D(n119), .CK(clock), .Q(
        BestDist[2]), .QN(n146) );
  SAEDHVT14_FDP_V2_0P5 \BestDist_reg[4]  ( .D(n121), .CK(clock), .Q(
        BestDist[4]) );
  SAEDHVT14_FDP_V2_0P5 \BestDist_reg[3]  ( .D(n120), .CK(clock), .Q(
        BestDist[3]) );
  SAEDHVT14_FDP_V2_0P5 \BestDist_reg[5]  ( .D(n122), .CK(clock), .Q(
        BestDist[5]), .QN(n148) );
  SAEDHVT14_FDP_V2_0P5 \motionY_reg[0]  ( .D(n114), .CK(clock), .Q(motionY[0])
         );
  SAEDHVT14_FDP_V2_0P5 \motionX_reg[0]  ( .D(n110), .CK(clock), .Q(motionX[0])
         );
  SAEDHVT14_FDP_V2_0P5 \motionY_reg[3]  ( .D(n117), .CK(clock), .Q(motionY[3])
         );
  SAEDHVT14_FDP_V2_0P5 \motionY_reg[2]  ( .D(n116), .CK(clock), .Q(motionY[2])
         );
  SAEDHVT14_FDP_V2_0P5 \motionY_reg[1]  ( .D(n115), .CK(clock), .Q(motionY[1])
         );
  SAEDHVT14_FDP_V2_0P5 \motionX_reg[3]  ( .D(n113), .CK(clock), .Q(motionX[3])
         );
  SAEDHVT14_FDP_V2_0P5 \motionX_reg[2]  ( .D(n112), .CK(clock), .Q(motionX[2])
         );
  SAEDHVT14_FDP_V2_0P5 \motionX_reg[1]  ( .D(n111), .CK(clock), .Q(motionX[1])
         );
  SAEDSLVT14_AO221_0P5 U4 ( .A1(PEout[1]), .A2(n22), .B1(PEout[17]), .B2(n23), 
        .C(n24), .X(n15) );
  SAEDSLVT14_NR2_MM_1 U12 ( .A1(n104), .A2(PEready[1]), .X(n22) );
  SAEDSLVT14_AO21B_0P5 U13 ( .A1(PEout[9]), .A2(n25), .B(n26), .X(n24) );
  SAEDSLVT14_ND2B_U_0P5 U14 ( .A(PEready[2]), .B(n105), .X(n104) );
  SAEDSLVT14_NR3B_U_0P5 U15 ( .A(n102), .B1(PEready[4]), .B2(PEready[3]), .X(
        n105) );
  SAEDRVT14_OR2B_PMM_2 U16 ( .B(newDist[0]), .A(BestDist[0]), .X(n145) );
  SAEDSLVT14_AO221_0P5 U17 ( .A1(PEout[0]), .A2(n22), .B1(PEout[16]), .B2(n23), 
        .C(n103), .X(n97) );
  SAEDSLVT14_AO21B_0P5 U20 ( .A1(PEout[8]), .A2(n25), .B(n26), .X(n103) );
  SAEDSLVT14_OA21B_U_0P5 U21 ( .A1(n93), .A2(n94), .B(n10), .X(n92) );
  SAEDSLVT14_AN3_2 U25 ( .A1(n101), .A2(n102), .A3(PEready[3]), .X(n21) );
  SAEDSLVT14_ND2B_U_0P5 U26 ( .A(PEready[0]), .B(n22), .X(n26) );
  SAEDSLVT14_AO221_0P5 U27 ( .A1(PEout[88]), .A2(n11), .B1(PEout[104]), .B2(
        PEready[13]), .C(n95), .X(n94) );
  SAEDSLVT14_AO21B_0P5 U28 ( .A1(PEout[72]), .A2(n13), .B(n96), .X(n95) );
  SAEDSLVT14_OAI21_0P5 U36 ( .A1(n97), .A2(n98), .B(n17), .X(n96) );
  SAEDSLVT14_OAI21_0P5 U37 ( .A1(newDist[7]), .A2(n153), .B(n152), .X(N169) );
  SAEDSLVT14_AO221_0P5 U48 ( .A1(PEout[89]), .A2(n11), .B1(PEout[105]), .B2(
        PEready[13]), .C(n12), .X(n9) );
  SAEDSLVT14_AO21B_0P5 U49 ( .A1(PEout[73]), .A2(n13), .B(n14), .X(n12) );
  SAEDSLVT14_OAI21_0P5 U50 ( .A1(n15), .A2(n16), .B(n17), .X(n14) );
  SAEDSLVT14_AO221_2 U60 ( .A1(PEout[113]), .A2(n6), .B1(PEout[121]), .B2(
        PEready[15]), .C(n7), .X(newDist[1]) );
  SAEDSLVT14_OA21B_U_0P5 U61 ( .A1(n8), .A2(n9), .B(n10), .X(n7) );
  SAEDSLVT14_AO221_0P5 U63 ( .A1(n3), .A2(newDist[0]), .B1(BestDist[0]), .B2(
        n4), .C(n5), .X(n125) );
  SAEDSLVT14_AO221_2 U64 ( .A1(PEout[112]), .A2(n6), .B1(PEout[120]), .B2(
        PEready[15]), .C(n92), .X(newDist[0]) );
  SAEDSLVT14_AO21B_0P5 U65 ( .A1(PEout[74]), .A2(n13), .B(n36), .X(n35) );
  SAEDSLVT14_AO221_0P5 U69 ( .A1(PEout[90]), .A2(n11), .B1(PEout[106]), .B2(
        PEready[13]), .C(n35), .X(n34) );
  SAEDSLVT14_OA21B_U_0P5 U96 ( .A1(n33), .A2(n34), .B(n10), .X(n32) );
  SAEDSLVT14_INV_0P75 U98 ( .A(newDist[2]), .X(n142) );
  SAEDSLVT14_AO221_0P5 U99 ( .A1(PEout[114]), .A2(n6), .B1(PEout[122]), .B2(
        PEready[15]), .C(n32), .X(newDist[2]) );
  SAEDSLVT14_OA21B_1 U100 ( .A1(n145), .A2(newDist[1]), .B(BestDist[1]), .X(
        n144) );
  SAEDSLVT14_AO221_0P5 U101 ( .A1(n3), .A2(newDist[1]), .B1(BestDist[1]), .B2(
        n4), .C(n5), .X(n118) );
  SAEDSLVT14_NR2_MM_0P5 U102 ( .A1(PEready[5]), .A2(PEready[6]), .X(n102) );
  SAEDSLVT14_AO221_0P5 U106 ( .A1(n3), .A2(newDist[4]), .B1(BestDist[4]), .B2(
        n4), .C(n5), .X(n121) );
  SAEDSLVT14_AO221_0P5 U110 ( .A1(n3), .A2(newDist[3]), .B1(BestDist[3]), .B2(
        n4), .C(n5), .X(n120) );
  SAEDSLVT14_AO21B_0P5 U111 ( .A1(PEout[13]), .A2(n25), .B(n26), .X(n70) );
  SAEDSLVT14_INV_0P5 U123 ( .A(newDist[5]), .X(n137) );
  SAEDSLVT14_AO21B_0P5 U124 ( .A1(PEout[77]), .A2(n13), .B(n66), .X(n65) );
  SAEDSLVT14_OAI21_0P5 U130 ( .A1(n67), .A2(n68), .B(n17), .X(n66) );
  SAEDSLVT14_AO221_0P5 U131 ( .A1(n3), .A2(newDist[5]), .B1(BestDist[5]), .B2(
        n4), .C(n5), .X(n122) );
  SAEDSLVT14_INV_S_0P5 U132 ( .A(n4), .X(n3) );
  SAEDSLVT14_AO221_2 U133 ( .A1(PEout[93]), .A2(n11), .B1(PEout[109]), .B2(
        PEready[13]), .C(n65), .X(n64) );
  SAEDSLVT14_OA21B_U_0P5 U134 ( .A1(n53), .A2(n54), .B(n10), .X(n52) );
  SAEDSLVT14_INV_1 U135 ( .A(newDist[4]), .X(n139) );
  SAEDSLVT14_AO221_0P5 U136 ( .A1(PEout[116]), .A2(n6), .B1(PEout[124]), .B2(
        PEready[15]), .C(n52), .X(newDist[4]) );
  SAEDLVT14_AN2_MM_2 U137 ( .A1(newDist[5]), .A2(n148), .X(n133) );
  SAEDSLVT14_AN2_MM_1 U138 ( .A1(newDist[6]), .A2(n136), .X(n134) );
  SAEDSLVT14_OR3_0P5 U139 ( .A1(n133), .A2(n134), .A3(n147), .X(n149) );
  SAEDRVT14_AO221_0P5 U140 ( .A1(PEout[117]), .A2(n6), .B1(PEout[125]), .B2(
        PEready[15]), .C(n62), .X(newDist[5]) );
  SAEDSLVT14_AO221_0P5 U141 ( .A1(n141), .A2(BestDist[3]), .B1(n142), .B2(
        BestDist[2]), .C(n143), .X(n140) );
  SAEDSLVT14_INV_S_0P5 U142 ( .A(newDist[3]), .X(n141) );
  SAEDSLVT14_OA221_U_0P5 U143 ( .A1(n141), .A2(BestDist[3]), .B1(n139), .B2(
        BestDist[4]), .C(n140), .X(n138) );
  SAEDSLVT14_INV_1 U144 ( .A(BestDist[7]), .X(n135) );
  SAEDSLVT14_INV_1 U145 ( .A(BestDist[6]), .X(n136) );
  SAEDSLVT14_AOI221_0P5 U146 ( .A1(n137), .A2(BestDist[5]), .B1(n139), .B2(
        BestDist[4]), .C(n138), .X(n147) );
  SAEDHVT14_AO221_2 U147 ( .A1(PEout[115]), .A2(n6), .B1(PEout[123]), .B2(
        PEready[15]), .C(n42), .X(newDist[3]) );
  SAEDSLVT14_AOI221_0P5 U148 ( .A1(newDist[1]), .A2(n145), .B1(newDist[2]), 
        .B2(n146), .C(n144), .X(n143) );
  SAEDSLVT14_AO21B_0P5 U149 ( .A1(n135), .A2(newDist[7]), .B(n151), .X(n152)
         );
  SAEDSLVT14_OAI21_0P5 U150 ( .A1(newDist[6]), .A2(n150), .B(n149), .X(n151)
         );
  SAEDSLVT14_OAI311_4 U151 ( .A1(n26), .A2(n99), .A3(n10), .B1(CompStart), 
        .B2(N169), .X(n4) );
  SAEDHVT14_INV_0P5 U152 ( .A(BestDist[7]), .X(n153) );
  SAEDHVT14_INV_0P5 U153 ( .A(BestDist[6]), .X(n150) );
endmodule


module top ( clock, start, BestDist, motionX, motionY, AddressR, AddressS1, 
        AddressS2, R, S1, S2, completed );
  output [7:0] BestDist;
  output [3:0] motionX;
  output [3:0] motionY;
  output [7:0] AddressR;
  output [9:0] AddressS1;
  output [9:0] AddressS2;
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  input clock, start;
  output completed;
  wire   CompStart;
  wire   [15:0] S1S2mux;
  wire   [15:0] newDist;
  wire   [15:0] PEready;
  wire   [3:0] VectorX;
  wire   [3:0] VectorY;
  wire   [127:0] Accumulate;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;

  control ctl_u ( .clock(clock), .start(start), .S1S2mux({S1S2mux[15:1], 
        SYNOPSYS_UNCONNECTED__0}), .newDist(newDist), .CompStart(CompStart), 
        .PEready(PEready), .VectorX(VectorX), .VectorY(VectorY), .AddressR(
        AddressR), .AddressS1({AddressS1[9:5], SYNOPSYS_UNCONNECTED__1, 
        AddressS1[3:0]}), .AddressS2({AddressS2[9:5], SYNOPSYS_UNCONNECTED__2, 
        AddressS2[3:0]}), .completed(completed) );
  PEtotal pe_u ( .clock(clock), .R(R), .S1(S1), .S2(S2), .S1S2mux({
        S1S2mux[15:1], AddressS2[4]}), .newDist(newDist), .Accumulate(
        Accumulate) );
  Comparator comp_u ( .clock(clock), .CompStart(CompStart), .PEout(Accumulate), 
        .PEready(PEready), .vectorX(VectorX), .vectorY(VectorY), .BestDist(
        BestDist), .motionX(motionX), .motionY(motionY) );
  SAEDSLVT14_TIE1_4 U1 ( .X(AddressS2[4]) );
  SAEDSLVT14_TIE0_V1_2 U2 ( .X(AddressS1[4]) );
endmodule

