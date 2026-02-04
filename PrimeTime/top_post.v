// IC Compiler II Version S-2021.06-SP5-1 Verilog Writer
// Generated on 12/10/2025 at 12:58:32
// Library Name: libraryname
// Block Name: top
// User Label: 
// Write Command: write_verilog -top_module_first ./outputs/top_post.v
module top ( clock , start , BestDist , motionX , motionY , AddressR , 
    AddressS1 , AddressS2 , R , S1 , S2 , completed ) ;
input  clock ;
input  start ;
output [7:0] BestDist ;
output [3:0] motionX ;
output [3:0] motionY ;
output [7:0] AddressR ;
output [9:0] AddressS1 ;
output [9:0] AddressS2 ;
input  [7:0] R ;
input  [7:0] S1 ;
input  [7:0] S2 ;
output completed ;

wire [15:1] S1S2mux ;
wire [15:0] newDist ;
wire [15:0] PEready ;
wire [3:0] VectorX ;
wire [3:0] VectorY ;
wire [127:0] Accumulate ;

control ctl_u ( .clock ( clock ) , .start ( start ) ,
    .S1S2mux ( { S1S2mux[15] , S1S2mux[14] , S1S2mux[13] , S1S2mux[12] , 
        S1S2mux[11] , S1S2mux[10] , S1S2mux[9] , S1S2mux[8] , S1S2mux[7] , 
        S1S2mux[6] , S1S2mux[5] , S1S2mux[4] , S1S2mux[3] , S1S2mux[2] , 
        S1S2mux[1] , SYNOPSYS_UNCONNECTED_1 } ) ,
    .newDist ( newDist ) , .CompStart ( CompStart ) , .PEready ( PEready ) , 
    .VectorX ( VectorX ) , .VectorY ( VectorY ) , .AddressR ( AddressR ) ,
    .AddressS1 ( { AddressS1[9] , AddressS1[8] , AddressS1[7] , AddressS1[6] , 
        AddressS1[5] , SYNOPSYS_UNCONNECTED_2 , AddressS1[3] , AddressS1[2] , 
        AddressS1[1] , AddressS1[0] } ) ,
    .AddressS2 ( { AddressS2[9] , AddressS2[8] , AddressS2[7] , AddressS2[6] , 
        AddressS2[5] , SYNOPSYS_UNCONNECTED_3 , AddressS2[3] , AddressS2[2] , 
        AddressS2[1] , AddressS2[0] } ) ,
    .completed ( completed ) ) ;
PEtotal pe_u ( .clock ( ZCTSNET_0 ) , .R ( R ) , .S1 ( S1 ) , .S2 ( S2 ) ,
    .S1S2mux ( { S1S2mux[15] , S1S2mux[14] , S1S2mux[13] , S1S2mux[12] , 
        S1S2mux[11] , S1S2mux[10] , S1S2mux[9] , S1S2mux[8] , S1S2mux[7] , 
        S1S2mux[6] , S1S2mux[5] , S1S2mux[4] , S1S2mux[3] , S1S2mux[2] , 
        S1S2mux[1] , SYNOPSYS_UNCONNECTED_4 } ) ,
    .newDist ( newDist ) , .Accumulate ( Accumulate ) , 
    .ZCTSNET_3 ( ZCTSNET_1 ) , .ZCTSNET_5 ( clock ) , .p1 ( optlc_net_41 ) ) ;
Comparator comp_u ( .clock ( ZCTSNET_0 ) , .CompStart ( CompStart ) , 
    .PEout ( Accumulate ) , .PEready ( PEready ) , .vectorX ( VectorX ) , 
    .vectorY ( VectorY ) , .BestDist ( BestDist ) , .motionX ( motionX ) , 
    .motionY ( motionY ) , .ZCTSNET_0 ( ZCTSNET_1 ) ) ;
SAEDRVT14_TIE0_4 optlc_2640 ( .X ( AddressS1[4] ) ) ;
SAEDHVT14_TIE1_V1_2 optlc_2641 ( .X ( AddressS2[4] ) ) ;
SAEDHVT14_TIE1_V1_2 optlc_2644 ( .X ( optlc_net_41 ) ) ;
SAEDRVT14_BUF_S_6 ZCTSBUF_1500_78 ( .A ( clock ) , .X ( ZCTSNET_0 ) ) ;
SAEDRVT14_BUF_S_6 ZCTSBUF_2915_80 ( .A ( clock ) , .X ( ZCTSNET_1 ) ) ;
endmodule


module control ( clock , start , S1S2mux , newDist , CompStart , PEready , 
    VectorX , VectorY , AddressR , AddressS1 , AddressS2 , completed ) ;
input  clock ;
input  start ;
output [15:0] S1S2mux ;
output [15:0] newDist ;
output CompStart ;
output [15:0] PEready ;
output [3:0] VectorX ;
output [3:0] VectorY ;
output [7:0] AddressR ;
output [9:0] AddressS1 ;
output [9:0] AddressS2 ;
output completed ;

wire [12:8] count ;
wire [12:0] count_temp ;
wire [11:4] temp ;

assign S1S2mux[8] = AddressS2[3] ;
assign AddressS1[3] = AddressS2[3] ;
assign AddressR[3] = AddressS2[3] ;
assign VectorX[2] = AddressS2[2] ;
assign AddressS1[2] = AddressS2[2] ;
assign AddressR[2] = AddressS2[2] ;
assign VectorX[1] = AddressS2[1] ;
assign AddressS1[1] = AddressS2[1] ;
assign AddressR[1] = AddressS2[1] ;
assign VectorX[0] = AddressS2[0] ;
assign AddressS1[0] = AddressS2[0] ;
assign AddressR[0] = AddressS2[0] ;

SAEDRVT14_FSDPQ_V2LP_0P5 \count_reg[0] ( .D ( count_temp[0] ) , 
    .SI ( start ) , .SE ( n118 ) , .CK ( clock ) , .Q ( AddressS2[0] ) ) ;
SAEDRVT14_FSDPQ_V2LP_0P5 \count_reg[1] ( .D ( count_temp[1] ) , 
    .SI ( start ) , .SE ( n118 ) , .CK ( clock ) , .Q ( AddressS2[1] ) ) ;
SAEDRVT14_FSDPQ_V2LP_0P5 \count_reg[2] ( .D ( count_temp[2] ) , 
    .SI ( start ) , .SE ( n118 ) , .CK ( clock ) , .Q ( AddressS2[2] ) ) ;
SAEDRVT14_FSDPQ_V2LP_0P5 \count_reg[3] ( .D ( count_temp[3] ) , 
    .SI ( start ) , .SE ( n118 ) , .CK ( clock ) , .Q ( AddressS2[3] ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( n118 ) , .X ( n117 ) ) ;
SAEDHVT14_ND2_CDC_1 U5 ( .A1 ( start ) , .A2 ( n119 ) , .X ( n118 ) ) ;
SAEDRVT14_EO2_V1_0P75 U6 ( .A1 ( n120 ) , .A2 ( count[11] ) , 
    .X ( VectorY[3] ) ) ;
SAEDRVT14_OAI21_0P5 U8 ( .A1 ( n121 ) , .A2 ( n122 ) , .B ( n120 ) , 
    .X ( VectorY[2] ) ) ;
SAEDRVT14_AO21_U_0P5 U9 ( .A1 ( count[8] ) , .A2 ( count[9] ) , .B ( n121 ) , 
    .X ( VectorY[1] ) ) ;
SAEDRVT14_INV_0P5 U10 ( .A ( count[8] ) , .X ( VectorY[0] ) ) ;
SAEDRVT14_AO21_U_0P5 U11 ( .A1 ( AddressS2[3] ) , .A2 ( AddressS2[0] ) , 
    .B ( S1S2mux[10] ) , .X ( S1S2mux[9] ) ) ;
SAEDRVT14_OAI21_0P5 U12 ( .A1 ( n123 ) , .A2 ( n124 ) , .B ( VectorX[3] ) , 
    .X ( S1S2mux[7] ) ) ;
SAEDRVT14_AO21_U_0P5 U13 ( .A1 ( AddressS2[2] ) , .A2 ( AddressS2[0] ) , 
    .B ( S1S2mux[6] ) , .X ( S1S2mux[5] ) ) ;
SAEDRVT14_OAI21_0P5 U14 ( .A1 ( n123 ) , .A2 ( n125 ) , .B ( VectorX[3] ) , 
    .X ( S1S2mux[6] ) ) ;
SAEDHVT14_ND2_MM_0P5 U15 ( .A1 ( n124 ) , .A2 ( n126 ) , .X ( S1S2mux[3] ) ) ;
SAEDRVT14_OAI21_0P5 U16 ( .A1 ( n127 ) , .A2 ( n128 ) , .B ( n129 ) , 
    .X ( S1S2mux[13] ) ) ;
SAEDRVT14_OAI21_0P5 U17 ( .A1 ( VectorX[3] ) , .A2 ( n124 ) , .B ( n127 ) , 
    .X ( S1S2mux[11] ) ) ;
SAEDRVT14_AN2_MM_0P5 U19 ( .A1 ( CompStart ) , .A2 ( newDist[9] ) , 
    .X ( PEready[9] ) ) ;
SAEDRVT14_AN2_MM_0P5 U20 ( .A1 ( CompStart ) , .A2 ( newDist[8] ) , 
    .X ( PEready[8] ) ) ;
SAEDRVT14_AN2_MM_0P5 U21 ( .A1 ( CompStart ) , .A2 ( newDist[7] ) , 
    .X ( PEready[7] ) ) ;
SAEDRVT14_AN2_MM_0P5 U23 ( .A1 ( CompStart ) , .A2 ( newDist[5] ) , 
    .X ( PEready[5] ) ) ;
SAEDRVT14_AN2_MM_0P5 U24 ( .A1 ( CompStart ) , .A2 ( newDist[4] ) , 
    .X ( PEready[4] ) ) ;
SAEDHVT14_NR2_MM_0P5 U26 ( .A1 ( n130 ) , .A2 ( n132 ) , .X ( PEready[2] ) ) ;
SAEDRVT14_NR2_MM_0P5 U28 ( .A1 ( n130 ) , .A2 ( n133 ) , .X ( PEready[15] ) ) ;
SAEDRVT14_INV_0P5 U29 ( .A ( CompStart ) , .X ( n130 ) ) ;
SAEDRVT14_AN2_MM_0P5 U30 ( .A1 ( CompStart ) , .A2 ( newDist[14] ) , 
    .X ( PEready[14] ) ) ;
SAEDRVT14_AN2_MM_0P5 U31 ( .A1 ( CompStart ) , .A2 ( newDist[13] ) , 
    .X ( PEready[13] ) ) ;
SAEDRVT14_AN2_MM_0P5 U32 ( .A1 ( CompStart ) , .A2 ( newDist[12] ) , 
    .X ( PEready[12] ) ) ;
SAEDRVT14_AN2_MM_0P5 U33 ( .A1 ( CompStart ) , .A2 ( newDist[11] ) , 
    .X ( PEready[11] ) ) ;
SAEDRVT14_AN2_MM_0P5 U34 ( .A1 ( CompStart ) , .A2 ( newDist[10] ) , 
    .X ( PEready[10] ) ) ;
SAEDRVT14_AN2_MM_0P5 U35 ( .A1 ( CompStart ) , .A2 ( newDist[0] ) , 
    .X ( PEready[0] ) ) ;
SAEDHVT14_NR2_MM_0P5 U36 ( .A1 ( n134 ) , .A2 ( n135 ) , .X ( newDist[9] ) ) ;
SAEDRVT14_NR3_0P5 U37 ( .A1 ( AddressS2[0] ) , .A2 ( n125 ) , .A3 ( n134 ) , 
    .X ( newDist[10] ) ) ;
SAEDHVT14_NR2_MM_0P5 U38 ( .A1 ( n134 ) , .A2 ( n124 ) , .X ( newDist[11] ) ) ;
SAEDRVT14_NR3_0P5 U39 ( .A1 ( n127 ) , .A2 ( n136 ) , .A3 ( n137 ) , 
    .X ( newDist[12] ) ) ;
SAEDRVT14_NR3_0P5 U40 ( .A1 ( n127 ) , .A2 ( n136 ) , .A3 ( n135 ) , 
    .X ( newDist[13] ) ) ;
SAEDRVT14_AN3_0P5 U41 ( .A1 ( n128 ) , .A2 ( S1S2mux[14] ) , .A3 ( n138 ) , 
    .X ( newDist[14] ) ) ;
SAEDRVT14_INV_S_0P5 U42 ( .A ( n129 ) , .X ( S1S2mux[14] ) ) ;
SAEDRVT14_INV_S_0P5 U43 ( .A ( n133 ) , .X ( newDist[15] ) ) ;
SAEDRVT14_INV_0P5 U44 ( .A ( n119 ) , .X ( completed ) ) ;
SAEDRVT14_OR4_1 U45 ( .A1 ( n133 ) , .A2 ( n139 ) , .A3 ( count[11] ) , 
    .A4 ( n120 ) , .X ( n119 ) ) ;
SAEDHVT14_ND2_MM_0P5 U47 ( .A1 ( S1S2mux[15] ) , .A2 ( n138 ) , .X ( n133 ) ) ;
SAEDHVT14_NR2_MM_0P5 U48 ( .A1 ( n128 ) , .A2 ( n129 ) , .X ( S1S2mux[15] ) ) ;
SAEDHVT14_ND2_MM_0P5 U49 ( .A1 ( AddressS2[1] ) , .A2 ( S1S2mux[12] ) , 
    .X ( n129 ) ) ;
SAEDHVT14_ND2_MM_0P5 U51 ( .A1 ( AddressS2[2] ) , .A2 ( AddressS2[3] ) , 
    .X ( n127 ) ) ;
SAEDLVT14_NR2_2 U52 ( .A1 ( n136 ) , .A2 ( S1S2mux[1] ) , .X ( newDist[0] ) ) ;
SAEDHVT14_ND2_MM_0P5 U53 ( .A1 ( n140 ) , .A2 ( n128 ) , .X ( S1S2mux[1] ) ) ;
SAEDRVT14_AN3_0P5 U54 ( .A1 ( n140 ) , .A2 ( AddressS2[0] ) , .A3 ( n138 ) , 
    .X ( newDist[1] ) ) ;
SAEDRVT14_INV_S_0P5 U55 ( .A ( S1S2mux[2] ) , .X ( n140 ) ) ;
SAEDHVT14_ND2_MM_0P5 U56 ( .A1 ( n126 ) , .A2 ( n125 ) , .X ( S1S2mux[2] ) ) ;
SAEDRVT14_INV_S_0P75 U57 ( .A ( n132 ) , .X ( newDist[2] ) ) ;
SAEDHVT14_ND2_MM_0P5 U58 ( .A1 ( n141 ) , .A2 ( n128 ) , .X ( n132 ) ) ;
SAEDRVT14_INV_S_0P75 U59 ( .A ( n131 ) , .X ( newDist[3] ) ) ;
SAEDHVT14_ND2_MM_0P5 U60 ( .A1 ( n141 ) , .A2 ( AddressS2[0] ) , .X ( n131 ) ) ;
SAEDRVT14_AN3_0P5 U61 ( .A1 ( n126 ) , .A2 ( AddressS2[1] ) , .A3 ( n138 ) , 
    .X ( n141 ) ) ;
SAEDRVT14_INV_S_0P5 U62 ( .A ( n136 ) , .X ( n138 ) ) ;
SAEDRVT14_INV_S_0P5 U63 ( .A ( S1S2mux[4] ) , .X ( n126 ) ) ;
SAEDHVT14_ND2_MM_0P5 U64 ( .A1 ( n123 ) , .A2 ( VectorX[3] ) , 
    .X ( S1S2mux[4] ) ) ;
SAEDHVT14_NR2_MM_0P5 U65 ( .A1 ( n142 ) , .A2 ( n137 ) , .X ( newDist[4] ) ) ;
SAEDHVT14_NR2_MM_0P5 U69 ( .A1 ( n142 ) , .A2 ( n124 ) , .X ( newDist[7] ) ) ;
SAEDHVT14_ND2_MM_0P5 U70 ( .A1 ( AddressS2[0] ) , .A2 ( AddressS2[1] ) , 
    .X ( n124 ) ) ;
SAEDRVT14_INV_S_0P5 U72 ( .A ( AddressS2[2] ) , .X ( n123 ) ) ;
SAEDRVT14_NR2_MM_0P5 U73 ( .A1 ( n137 ) , .A2 ( n134 ) , .X ( newDist[8] ) ) ;
SAEDRVT14_OR3_0P5 U74 ( .A1 ( AddressS2[2] ) , .A2 ( VectorX[3] ) , 
    .A3 ( n136 ) , .X ( n134 ) ) ;
SAEDRVT14_INV_S_0P5 U76 ( .A ( AddressS2[3] ) , .X ( VectorX[3] ) ) ;
SAEDHVT14_ND2_MM_0P5 U77 ( .A1 ( n125 ) , .A2 ( n128 ) , .X ( n137 ) ) ;
SAEDRVT14_INV_S_0P5 U78 ( .A ( AddressS2[0] ) , .X ( n128 ) ) ;
SAEDHVT14_ND2_MM_0P5 U81 ( .A1 ( n121 ) , .A2 ( n122 ) , .X ( n120 ) ) ;
SAEDRVT14_ADDF_V1_0P5 \add_123/U1_1 ( .A ( count[9] ) , .B ( AddressR[5] ) , 
    .CI ( \add_123/carry[1] ) , .CO ( \add_123/carry[2] ) , 
    .S ( AddressS1[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 \add_123/U1_2 ( .A ( count[10] ) , .B ( AddressR[6] ) , 
    .CI ( \add_123/carry[2] ) , .CO ( \add_123/carry[3] ) , 
    .S ( AddressS1[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 \add_123/U1_3 ( .A ( count[11] ) , .B ( AddressR[7] ) , 
    .CI ( \add_123/carry[3] ) , .CO ( AddressS1[9] ) , .S ( AddressS1[8] ) ) ;
SAEDRVT14_ADDF_V1_0P5 \add_126/U1_1 ( .A ( temp[9] ) , .B ( temp[5] ) , 
    .CI ( \add_126/carry[1] ) , .CO ( \add_126/carry[2] ) , 
    .S ( AddressS2[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 \add_126/U1_2 ( .A ( temp[10] ) , .B ( temp[6] ) , 
    .CI ( \add_126/carry[2] ) , .CO ( \add_126/carry[3] ) , 
    .S ( AddressS2[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 \add_126/U1_3 ( .A ( temp[11] ) , .B ( temp[7] ) , 
    .CI ( \add_126/carry[3] ) , .CO ( AddressS2[9] ) , .S ( AddressS2[8] ) ) ;
SAEDRVT14_FDPCBQ_V2LP_1 \count_reg[4] ( .D ( n117 ) , .RS ( count_temp[4] ) , 
    .CK ( clock ) , .Q ( AddressR[4] ) ) ;
SAEDRVT14_FDPCBQ_V2LP_1 \count_reg[7] ( .D ( n117 ) , .RS ( count_temp[7] ) , 
    .CK ( clock ) , .Q ( AddressR[7] ) ) ;
SAEDRVT14_FDPCBQ_V2LP_1 \count_reg[8] ( .D ( n117 ) , .RS ( count_temp[8] ) , 
    .CK ( clock ) , .Q ( count[8] ) ) ;
SAEDRVT14_FDPCBQ_V2LP_1 \count_reg[6] ( .D ( n117 ) , .RS ( count_temp[6] ) , 
    .CK ( clock ) , .Q ( AddressR[6] ) ) ;
SAEDRVT14_FDPCBQ_V2LP_1 \count_reg[9] ( .D ( n117 ) , .RS ( count_temp[9] ) , 
    .CK ( clock ) , .Q ( count[9] ) ) ;
SAEDRVT14_FDPCBQ_V2LP_1 \count_reg[5] ( .D ( n117 ) , .RS ( count_temp[5] ) , 
    .CK ( clock ) , .Q ( AddressR[5] ) ) ;
SAEDRVT14_FDPCBQ_V2LP_1 \count_reg[11] ( .D ( n117 ) , 
    .RS ( count_temp[11] ) , .CK ( clock ) , .Q ( count[11] ) ) ;
SAEDRVT14_AN2_MM_0P5 \*cell*1429 ( .A1 ( count_temp[10] ) , .A2 ( n117 ) , 
    .X ( n3 ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \count_reg[10] ( .D ( n3 ) , .CK ( clock ) , 
    .Q ( count[10] ) , .QN ( n122 ) ) ;
SAEDRVT14_INV_S_0P5 U18 ( .A ( AddressS2[1] ) , .X ( n125 ) ) ;
SAEDRVT14_OAI21_0P5 U22 ( .A1 ( VectorX[3] ) , .A2 ( n125 ) , .B ( n127 ) , 
    .X ( S1S2mux[10] ) ) ;
SAEDRVT14_INV_S_0P5 U25 ( .A ( n127 ) , .X ( S1S2mux[12] ) ) ;
SAEDRVT14_AN2_MM_0P5 U27 ( .A1 ( CompStart ) , .A2 ( newDist[6] ) , 
    .X ( PEready[6] ) ) ;
SAEDRVT14_AN2_MM_0P5 U50 ( .A1 ( CompStart ) , .A2 ( newDist[1] ) , 
    .X ( PEready[1] ) ) ;
SAEDRVT14_OR3_0P5 U66 ( .A1 ( AddressS2[3] ) , .A2 ( n123 ) , .A3 ( n136 ) , 
    .X ( n142 ) ) ;
SAEDHVT14_ND2_MM_0P5 U67 ( .A1 ( AddressS2[0] ) , .A2 ( n125 ) , .X ( n135 ) ) ;
SAEDRVT14_NR2_1 U68 ( .A1 ( count[9] ) , .A2 ( count[8] ) , .X ( n121 ) ) ;
SAEDHVT14_NR2_MM_0P5 U71 ( .A1 ( n130 ) , .A2 ( n131 ) , .X ( PEready[3] ) ) ;
SAEDHVT14_NR2_MM_0P5 U75 ( .A1 ( n142 ) , .A2 ( n135 ) , .X ( newDist[5] ) ) ;
SAEDRVT14_OR4_1 U79 ( .A1 ( AddressR[5] ) , .A2 ( AddressR[4] ) , 
    .A3 ( AddressR[7] ) , .A4 ( AddressR[6] ) , .X ( n136 ) ) ;
SAEDRVT14_OR3_0P5 U80 ( .A1 ( count[12] ) , .A2 ( count[11] ) , .A3 ( n120 ) , 
    .X ( CompStart ) ) ;
SAEDRVT14_NR3_0P5 U82 ( .A1 ( AddressS2[0] ) , .A2 ( n125 ) , .A3 ( n142 ) , 
    .X ( newDist[6] ) ) ;
SAEDRVT14_EO2_V1_0P75 U83 ( .A1 ( temp[4] ) , .A2 ( temp[8] ) , 
    .X ( AddressS2[5] ) ) ;
SAEDRVT14_INV_PS_1 U84 ( .A ( temp[4] ) , .X ( n4 ) ) ;
SAEDRVT14_INV_PS_1 U85 ( .A ( temp[8] ) , .X ( n5 ) ) ;
SAEDRVT14_NR2_MM_0P5 U86 ( .A1 ( n5 ) , .A2 ( n4 ) , 
    .X ( \add_126/carry[1] ) ) ;
SAEDRVT14_EO2_V1_0P75 U87 ( .A1 ( AddressR[4] ) , .A2 ( count[8] ) , 
    .X ( AddressS1[5] ) ) ;
SAEDRVT14_INV_PS_1 U88 ( .A ( AddressR[4] ) , .X ( n6 ) ) ;
SAEDRVT14_INV_PS_1 U89 ( .A ( count[8] ) , .X ( n7 ) ) ;
SAEDRVT14_NR2_MM_0P5 U90 ( .A1 ( n7 ) , .A2 ( n6 ) , 
    .X ( \add_123/carry[1] ) ) ;
SAEDRVT14_INV_PS_1 U91 ( .A ( AddressR[4] ) , .X ( temp[4] ) ) ;
SAEDRVT14_EN2_V1_0P75 U92 ( .A1 ( count[9] ) , .A2 ( \sub_125/carry[9] ) , 
    .X ( temp[9] ) ) ;
SAEDRVT14_NR2_MM_0P5 U93 ( .A1 ( \sub_125/carry[9] ) , .A2 ( count[9] ) , 
    .X ( n8 ) ) ;
SAEDRVT14_INV_PS_1 U94 ( .A ( n8 ) , .X ( \sub_125/carry[10] ) ) ;
SAEDRVT14_EN2_V1_0P75 U95 ( .A1 ( count[8] ) , .A2 ( \sub_125/carry[8] ) , 
    .X ( temp[8] ) ) ;
SAEDRVT14_NR2_MM_0P5 U96 ( .A1 ( \sub_125/carry[8] ) , .A2 ( count[8] ) , 
    .X ( n9 ) ) ;
SAEDRVT14_INV_PS_1 U97 ( .A ( n9 ) , .X ( \sub_125/carry[9] ) ) ;
SAEDRVT14_EN2_V1_0P75 U98 ( .A1 ( AddressR[7] ) , .A2 ( \sub_125/carry[7] ) , 
    .X ( temp[7] ) ) ;
SAEDRVT14_NR2_MM_0P5 U99 ( .A1 ( \sub_125/carry[7] ) , .A2 ( AddressR[7] ) , 
    .X ( n10 ) ) ;
SAEDRVT14_INV_PS_1 U100 ( .A ( n10 ) , .X ( \sub_125/carry[8] ) ) ;
SAEDRVT14_EN2_V1_0P75 U101 ( .A1 ( AddressR[6] ) , .A2 ( \sub_125/carry[6] ) , 
    .X ( temp[6] ) ) ;
SAEDRVT14_NR2_MM_0P5 U102 ( .A1 ( \sub_125/carry[6] ) , .A2 ( AddressR[6] ) , 
    .X ( n11 ) ) ;
SAEDRVT14_INV_PS_1 U103 ( .A ( n11 ) , .X ( \sub_125/carry[7] ) ) ;
SAEDRVT14_EN2_V1_0P75 U104 ( .A1 ( AddressR[5] ) , .A2 ( AddressR[4] ) , 
    .X ( temp[5] ) ) ;
SAEDRVT14_NR2_MM_0P5 U105 ( .A1 ( AddressR[4] ) , .A2 ( AddressR[5] ) , 
    .X ( n12 ) ) ;
SAEDRVT14_INV_PS_1 U106 ( .A ( n12 ) , .X ( \sub_125/carry[6] ) ) ;
SAEDRVT14_INV_PS_1 U107 ( .A ( \sub_125/carry[11] ) , .X ( n13 ) ) ;
SAEDRVT14_EO2_V1_0P75 U108 ( .A1 ( n13 ) , .A2 ( count[11] ) , 
    .X ( temp[11] ) ) ;
SAEDRVT14_EN2_V1_0P75 U109 ( .A1 ( count[10] ) , .A2 ( \sub_125/carry[10] ) , 
    .X ( temp[10] ) ) ;
SAEDRVT14_NR2_MM_0P5 U110 ( .A1 ( \sub_125/carry[10] ) , .A2 ( count[10] ) , 
    .X ( n14 ) ) ;
SAEDRVT14_INV_PS_1 U111 ( .A ( n14 ) , .X ( \sub_125/carry[11] ) ) ;
control_DW01_inc_0 add_113 (
    .A ( { count[12] , count[11] , count[10] , count[9] , count[8] , 
        AddressR[7] , AddressR[6] , AddressR[5] , AddressR[4] , AddressS2[3] , 
        AddressS2[2] , AddressS2[1] , AddressS2[0] } ) ,
    .SUM ( count_temp ) ) ;
SAEDRVT14_MUX2_U_0P5 \count_reg[12]/U3 ( .D0 ( start ) , 
    .D1 ( count_temp[12] ) , .S ( n117 ) , .X ( n15 ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \count_reg[12] ( .D ( n15 ) , .CK ( clock ) , 
    .Q ( count[12] ) , .QN ( n139 ) ) ;
SAEDSLVT14_TIE1_4 U3 () ;
SAEDSLVT14_TIE0_V1_2 U7 () ;
endmodule


module control_DW01_inc_0 ( A , SUM ) ;
input  [12:0] A ;
output [12:0] SUM ;

wire [12:2] carry ;

SAEDRVT14_ADDH_0P5 U1_1_11 ( .A ( A[11] ) , .B ( carry[11] ) , 
    .CO ( carry[12] ) , .S ( SUM[11] ) ) ;
SAEDRVT14_ADDH_0P5 U1_1_10 ( .A ( A[10] ) , .B ( carry[10] ) , 
    .CO ( carry[11] ) , .S ( SUM[10] ) ) ;
SAEDRVT14_ADDH_0P5 U1_1_9 ( .A ( A[9] ) , .B ( carry[9] ) , 
    .CO ( carry[10] ) , .S ( SUM[9] ) ) ;
SAEDRVT14_ADDH_0P5 U1_1_8 ( .A ( A[8] ) , .B ( carry[8] ) , .CO ( carry[9] ) , 
    .S ( SUM[8] ) ) ;
SAEDRVT14_ADDH_0P5 U1_1_7 ( .A ( A[7] ) , .B ( carry[7] ) , .CO ( carry[8] ) , 
    .S ( SUM[7] ) ) ;
SAEDRVT14_ADDH_0P5 U1_1_6 ( .A ( A[6] ) , .B ( carry[6] ) , .CO ( carry[7] ) , 
    .S ( SUM[6] ) ) ;
SAEDRVT14_ADDH_0P5 U1_1_5 ( .A ( A[5] ) , .B ( carry[5] ) , .CO ( carry[6] ) , 
    .S ( SUM[5] ) ) ;
SAEDRVT14_ADDH_0P5 U1_1_4 ( .A ( A[4] ) , .B ( carry[4] ) , .CO ( carry[5] ) , 
    .S ( SUM[4] ) ) ;
SAEDRVT14_ADDH_0P5 U1_1_3 ( .A ( A[3] ) , .B ( carry[3] ) , .CO ( carry[4] ) , 
    .S ( SUM[3] ) ) ;
SAEDRVT14_ADDH_0P5 U1_1_2 ( .A ( A[2] ) , .B ( carry[2] ) , .CO ( carry[3] ) , 
    .S ( SUM[2] ) ) ;
SAEDRVT14_ADDH_0P5 U1_1_1 ( .A ( A[1] ) , .B ( A[0] ) , .CO ( carry[2] ) , 
    .S ( SUM[1] ) ) ;
SAEDRVT14_EO2_V1_0P75 U1 ( .A1 ( carry[12] ) , .A2 ( A[12] ) , 
    .X ( SUM[12] ) ) ;
SAEDRVT14_INV_S_0P5 U2 ( .A ( A[0] ) , .X ( SUM[0] ) ) ;
endmodule


module PEtotal ( clock , R , S1 , S2 , S1S2mux , newDist , Accumulate , p0 , 
    ZCTSNET_3 , ZCTSNET_5 , p1 ) ;
input  clock ;
input  [7:0] R ;
input  [7:0] S1 ;
input  [7:0] S2 ;
input  [15:0] S1S2mux ;
input  [15:0] newDist ;
output [127:0] Accumulate ;
input  p0 ;
input  ZCTSNET_3 ;
input  ZCTSNET_5 ;
input  p1 ;

wire [7:0] Rpipe0 ;
wire [7:0] Rpipe1 ;
wire [7:0] Rpipe2 ;
wire [7:0] Rpipe3 ;
wire [7:0] Rpipe4 ;
wire [7:0] Rpipe5 ;
wire [7:0] Rpipe6 ;
wire [7:0] Rpipe7 ;
wire [7:0] Rpipe8 ;
wire [7:0] Rpipe9 ;
wire [7:0] Rpipe10 ;
wire [7:0] Rpipe11 ;
wire [7:0] Rpipe12 ;
wire [7:0] Rpipe13 ;
wire [7:0] Rpipe14 ;

PE_0 pe0 ( .clock ( ZCTSNET_4 ) , .R ( R ) , .S1 ( S1 ) , .S2 ( S2 ) , 
    .newDist ( newDist[0] ) , .Accumulate ( Accumulate[7:0] ) , 
    .Rpipe ( Rpipe0 ) , .ZCTSNET_0 ( ZCTSNET_5 ) , .p1 ( p1 ) ) ;
PE_14 pe1 ( .clock ( ZCTSNET_4 ) , .R ( Rpipe0 ) , .S1 ( S1 ) , .S2 ( S2 ) , 
    .S1S2mux ( S1S2mux[1] ) , .newDist ( newDist[1] ) , 
    .Accumulate ( Accumulate[15:8] ) , .Rpipe ( Rpipe1 ) , 
    .ZCTSNET_0 ( ZCTSNET_5 ) ) ;
PE_13 pe2 ( .clock ( ZCTSNET_4 ) , .R ( Rpipe1 ) , .S1 ( S1 ) , .S2 ( S2 ) , 
    .S1S2mux ( S1S2mux[2] ) , .newDist ( newDist[2] ) , 
    .Accumulate ( Accumulate[23:16] ) , .Rpipe ( Rpipe2 ) , 
    .ZCTSNET_0 ( ZCTSNET_5 ) ) ;
PE_12 pe3 ( .clock ( ZCTSNET_0 ) , .R ( Rpipe2 ) , .S1 ( S1 ) , .S2 ( S2 ) , 
    .S1S2mux ( S1S2mux[3] ) , .newDist ( newDist[3] ) , 
    .Accumulate ( Accumulate[31:24] ) , .Rpipe ( Rpipe3 ) , 
    .ZCTSNET_0 ( ZCTSNET_1 ) , .ZCTSNET_1 ( ZCTSNET_4 ) , 
    .ZCTSNET_2 ( ZCTSNET_5 ) ) ;
PE_11 pe4 ( .clock ( ZCTSNET_0 ) , .R ( Rpipe3 ) , .S1 ( S1 ) , .S2 ( S2 ) , 
    .S1S2mux ( S1S2mux[4] ) , .newDist ( newDist[4] ) , 
    .Accumulate ( Accumulate[39:32] ) , .Rpipe ( Rpipe4 ) , 
    .ZCTSNET_0 ( ZCTSNET_1 ) ) ;
PE_10 pe5 ( .clock ( ZCTSNET_0 ) , .R ( Rpipe4 ) , .S1 ( S1 ) , .S2 ( S2 ) , 
    .S1S2mux ( S1S2mux[5] ) , .newDist ( newDist[5] ) , 
    .Accumulate ( Accumulate[47:40] ) , .Rpipe ( Rpipe5 ) , 
    .ZCTSNET_0 ( ZCTSNET_1 ) ) ;
PE_9 pe6 ( .clock ( ZCTSNET_0 ) , .R ( Rpipe5 ) , .S1 ( S1 ) , .S2 ( S2 ) , 
    .S1S2mux ( S1S2mux[6] ) , .newDist ( newDist[6] ) , 
    .Accumulate ( Accumulate[55:48] ) , .Rpipe ( Rpipe6 ) , 
    .ZCTSNET_0 ( ZCTSNET_1 ) ) ;
PE_8 pe7 ( .clock ( ZCTSNET_0 ) , .R ( Rpipe6 ) , .S1 ( S1 ) , .S2 ( S2 ) , 
    .S1S2mux ( S1S2mux[7] ) , .newDist ( newDist[7] ) , 
    .Accumulate ( Accumulate[63:56] ) , .Rpipe ( Rpipe7 ) ) ;
PE_7 pe8 ( .clock ( ZCTSNET_0 ) , .R ( Rpipe7 ) , .S1 ( S1 ) , .S2 ( S2 ) , 
    .S1S2mux ( S1S2mux[8] ) , .newDist ( newDist[8] ) , 
    .Accumulate ( Accumulate[71:64] ) , .Rpipe ( Rpipe8 ) , 
    .ZCTSNET_0 ( ZCTSNET_2 ) ) ;
PE_6 pe9 ( .clock ( ZCTSNET_0 ) , .R ( Rpipe8 ) , .S1 ( S1 ) , .S2 ( S2 ) , 
    .S1S2mux ( S1S2mux[9] ) , .newDist ( newDist[9] ) , 
    .Accumulate ( Accumulate[79:72] ) , .Rpipe ( Rpipe9 ) , 
    .ZCTSNET_0 ( ZCTSNET_2 ) , .ZCTSNET_1 ( ZCTSNET_5 ) ) ;
PE_5 pe10 ( .clock ( ZCTSNET_2 ) , .R ( Rpipe9 ) , .S1 ( S1 ) , .S2 ( S2 ) , 
    .S1S2mux ( S1S2mux[10] ) , .newDist ( newDist[10] ) , 
    .Accumulate ( Accumulate[87:80] ) , .Rpipe ( Rpipe10 ) , 
    .ZCTSNET_0 ( clock ) ) ;
PE_4 pe11 ( .clock ( ZCTSNET_2 ) , .R ( Rpipe10 ) , .S1 ( S1 ) , .S2 ( S2 ) , 
    .S1S2mux ( S1S2mux[11] ) , .newDist ( newDist[11] ) , 
    .Accumulate ( Accumulate[95:88] ) , .Rpipe ( Rpipe11 ) , 
    .ZCTSNET_0 ( clock ) , .ZCTSNET_1 ( ZCTSNET_5 ) ) ;
PE_3 pe12 ( .clock ( clock ) , .R ( Rpipe11 ) , .S1 ( S1 ) , .S2 ( S2 ) , 
    .S1S2mux ( S1S2mux[12] ) , .newDist ( newDist[12] ) , 
    .Accumulate ( Accumulate[103:96] ) , .Rpipe ( Rpipe12 ) , 
    .ZCTSNET_0 ( ZCTSNET_3 ) , .ZCTSNET_1 ( ZCTSNET_5 ) ) ;
PE_2 pe13 ( .clock ( clock ) , .R ( Rpipe12 ) , .S1 ( S1 ) , .S2 ( S2 ) , 
    .S1S2mux ( S1S2mux[13] ) , .newDist ( newDist[13] ) , 
    .Accumulate ( Accumulate[111:104] ) , .Rpipe ( Rpipe13 ) , 
    .ZCTSNET_0 ( ZCTSNET_3 ) , .ZCTSNET_1 ( ZCTSNET_5 ) ) ;
PE_1 pe14 ( .clock ( clock ) , .R ( Rpipe13 ) , .S1 ( S1 ) , .S2 ( S2 ) , 
    .S1S2mux ( S1S2mux[14] ) , .newDist ( newDist[14] ) , 
    .Accumulate ( Accumulate[119:112] ) , .Rpipe ( Rpipe14 ) , 
    .ZCTSNET_0 ( ZCTSNET_3 ) ) ;
PEend pe15 ( .clock ( ZCTSNET_3 ) , .R ( Rpipe14 ) , .S1 ( S1 ) , .S2 ( S2 ) , 
    .S1S2mux ( S1S2mux[15] ) , .newDist ( newDist[15] ) , 
    .Accumulate ( Accumulate[127:120] ) ) ;
SAEDRVT14_BUF_S_6 ZCTSBUF_1768_75 ( .A ( ZCTSNET_5 ) , .X ( ZCTSNET_0 ) ) ;
SAEDRVT14_BUF_S_6 ZCTSBUF_1930_76 ( .A ( ZCTSNET_5 ) , .X ( ZCTSNET_1 ) ) ;
SAEDRVT14_BUF_S_6 ZCTSBUF_1283_77 ( .A ( ZCTSNET_5 ) , .X ( ZCTSNET_2 ) ) ;
SAEDRVT14_BUF_S_6 ZCTSBUF_2720_79 ( .A ( ZCTSNET_5 ) , .X ( ZCTSNET_4 ) ) ;
endmodule


module PE_0 ( clock , R , S1 , S2 , S1S2mux , newDist , Accumulate , Rpipe , 
    p0 , ZCTSNET_0 , p1 ) ;
input  clock ;
input  [7:0] R ;
input  [7:0] S1 ;
input  [7:0] S2 ;
input  S1S2mux ;
input  newDist ;
output [7:0] Accumulate ;
output [7:0] Rpipe ;
input  p0 ;
input  ZCTSNET_0 ;
input  p1 ;

wire [7:0] difference ;

SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[7] ( .D ( R[7] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[7] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0] ( .SD ( n16 ) , 
    .D ( Carry ) , .SI ( difference[0] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[0] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7] ( .SD ( n15 ) , 
    .D ( Carry ) , .SI ( difference[7] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[7] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6] ( .SD ( n14 ) , 
    .D ( Carry ) , .SI ( difference[6] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[6] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5] ( .SD ( n13 ) , 
    .D ( Carry ) , .SI ( difference[5] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[5] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4] ( .SD ( n12 ) , 
    .D ( Carry ) , .SI ( difference[4] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[4] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3] ( .SD ( n11 ) , 
    .D ( Carry ) , .SI ( difference[3] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[3] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2] ( .SD ( n10 ) , 
    .D ( Carry ) , .SI ( difference[2] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[2] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1] ( .SD ( n9 ) , .D ( Carry ) , 
    .SI ( difference[1] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[1] ) ) ;
SAEDRVT14_INV_S_0P5 U3 ( .A ( N27 ) , .X ( n9 ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( N28 ) , .X ( n10 ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( N29 ) , .X ( n11 ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( N30 ) , .X ( n12 ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( N31 ) , .X ( n13 ) ) ;
SAEDRVT14_INV_S_0P5 U12 ( .A ( N32 ) , .X ( n14 ) ) ;
SAEDRVT14_INV_S_0P5 U13 ( .A ( N33 ) , .X ( n15 ) ) ;
SAEDRVT14_INV_S_0P5 U14 ( .A ( N26 ) , .X ( n16 ) ) ;
SAEDRVT14_AO22_0P5 U15 ( .A1 ( S1[1] ) , .A2 ( p1 ) , .B1 ( S2[1] ) , 
    .B2 ( n17 ) , .X ( N9 ) ) ;
SAEDRVT14_AO22_0P5 U16 ( .A1 ( S1[0] ) , .A2 ( p1 ) , .B1 ( S2[0] ) , 
    .B2 ( n17 ) , .X ( N8 ) ) ;
SAEDRVT14_AO22_0P5 U17 ( .A1 ( S1[7] ) , .A2 ( p1 ) , .B1 ( S2[7] ) , 
    .B2 ( n17 ) , .X ( N15 ) ) ;
SAEDRVT14_AO22_0P5 U18 ( .A1 ( S1[6] ) , .A2 ( p1 ) , .B1 ( S2[6] ) , 
    .B2 ( n17 ) , .X ( N14 ) ) ;
SAEDRVT14_AO22_0P5 U19 ( .A1 ( S1[5] ) , .A2 ( p1 ) , .B1 ( S2[5] ) , 
    .B2 ( n17 ) , .X ( N13 ) ) ;
SAEDRVT14_AO22_0P5 U20 ( .A1 ( S1[4] ) , .A2 ( p1 ) , .B1 ( S2[4] ) , 
    .B2 ( n17 ) , .X ( N12 ) ) ;
SAEDRVT14_AO22_0P5 U21 ( .A1 ( S1[3] ) , .A2 ( p1 ) , .B1 ( S2[3] ) , 
    .B2 ( n17 ) , .X ( N11 ) ) ;
SAEDRVT14_AO22_0P5 U22 ( .A1 ( S1[2] ) , .A2 ( p1 ) , .B1 ( S2[2] ) , 
    .B2 ( n17 ) , .X ( N10 ) ) ;
SAEDRVT14_INV_0P5 U23 ( .A ( p1 ) , .X ( n17 ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[4] ( .D ( R[4] ) , .CK ( clock ) , 
    .Q ( Rpipe[4] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[5] ( .D ( R[5] ) , .CK ( clock ) , 
    .Q ( Rpipe[5] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[6] ( .D ( R[6] ) , .CK ( clock ) , 
    .Q ( Rpipe[6] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[3] ( .D ( R[3] ) , .CK ( clock ) , 
    .Q ( Rpipe[3] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[0] ( .D ( R[0] ) , .CK ( clock ) , 
    .Q ( Rpipe[0] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[2] ( .D ( R[2] ) , .CK ( clock ) , 
    .Q ( Rpipe[2] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[1] ( .D ( R[1] ) , .CK ( clock ) , 
    .Q ( Rpipe[1] ) ) ;
PE_0_DW01_add_0 add_52 (
    .A ( { SYNOPSYS_UNCONNECTED_1 , Accumulate[7] , Accumulate[6] , 
        Accumulate[5] , Accumulate[4] , Accumulate[3] , Accumulate[2] , 
        Accumulate[1] , Accumulate[0] } ) ,
    .B ( { SYNOPSYS_UNCONNECTED_2 , difference[7] , difference[6] , 
        difference[5] , difference[4] , difference[3] , difference[2] , 
        difference[1] , difference[0] } ) ,
    .SUM ( { Carry , N33 , N32 , N31 , N30 , N29 , N28 , N27 , N26 } ) ) ;
PE_0_DW01_sub_1 sub_46 ( .A ( R ) ,
    .B ( { N15 , N14 , N13 , N12 , N11 , N10 , N9 , N8 } ) ,
    .DIFF ( difference ) ) ;
SAEDSLVT14_TIE0_V1_2 U6 () ;
endmodule


module PE_0_DW01_add_0 ( A , B , CI , SUM , CO ) ;
input  [8:0] A ;
input  [8:0] B ;
input  CI ;
output [8:0] SUM ;
output CO ;

wire [7:1] carry ;

SAEDRVT14_ADDF_V1_0P5 U1_7 ( .A ( A[7] ) , .B ( B[7] ) , .CI ( carry[7] ) , 
    .CO ( SUM[8] ) , .S ( SUM[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_6 ( .A ( A[6] ) , .B ( B[6] ) , .CI ( carry[6] ) , 
    .CO ( carry[7] ) , .S ( SUM[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_5 ( .A ( A[5] ) , .B ( B[5] ) , .CI ( carry[5] ) , 
    .CO ( carry[6] ) , .S ( SUM[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_4 ( .A ( A[4] ) , .B ( B[4] ) , .CI ( carry[4] ) , 
    .CO ( carry[5] ) , .S ( SUM[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_3 ( .A ( A[3] ) , .B ( B[3] ) , .CI ( carry[3] ) , 
    .CO ( carry[4] ) , .S ( SUM[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_2 ( .A ( A[2] ) , .B ( B[2] ) , .CI ( carry[2] ) , 
    .CO ( carry[3] ) , .S ( SUM[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_1 ( .A ( A[1] ) , .B ( B[1] ) , .CI ( carry[1] ) , 
    .CO ( carry[2] ) , .S ( SUM[1] ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_2613 ( .A ( tmp_net22 ) , .X ( carry[1] ) ) ;
SAEDHVT14_ND2_MM_0P5 ctmTdsLR_2_2614 ( .A1 ( A[0] ) , .A2 ( B[0] ) , 
    .X ( tmp_net22 ) ) ;
SAEDRVT14_EO2_V1_0P75 U4 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .X ( SUM[0] ) ) ;
endmodule


module PE_0_DW01_sub_1 ( A , B , CI , DIFF , CO ) ;
input  [7:0] A ;
input  [7:0] B ;
input  CI ;
output [7:0] DIFF ;
output CO ;

wire [7:1] carry ;
wire [7:0] B_not ;

SAEDRVT14_ADDF_V1_0P5 U2_7 ( .A ( A[7] ) , .B ( B_not[7] ) , 
    .CI ( carry[7] ) , .S ( DIFF[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_6 ( .A ( A[6] ) , .B ( B_not[6] ) , 
    .CI ( carry[6] ) , .CO ( carry[7] ) , .S ( DIFF[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_5 ( .A ( A[5] ) , .B ( B_not[5] ) , 
    .CI ( carry[5] ) , .CO ( carry[6] ) , .S ( DIFF[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_4 ( .A ( A[4] ) , .B ( B_not[4] ) , 
    .CI ( carry[4] ) , .CO ( carry[5] ) , .S ( DIFF[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_3 ( .A ( A[3] ) , .B ( B_not[3] ) , 
    .CI ( carry[3] ) , .CO ( carry[4] ) , .S ( DIFF[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_2 ( .A ( A[2] ) , .B ( B_not[2] ) , 
    .CI ( carry[2] ) , .CO ( carry[3] ) , .S ( DIFF[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_1 ( .A ( A[1] ) , .B ( B_not[1] ) , 
    .CI ( carry[1] ) , .CO ( carry[2] ) , .S ( DIFF[1] ) ) ;
SAEDRVT14_INV_PS_1 U1 ( .A ( n1 ) , .X ( carry[1] ) ) ;
SAEDHVT14_NR2_MM_0P5 U2 ( .A1 ( A[0] ) , .A2 ( B_not[0] ) , .X ( n1 ) ) ;
SAEDRVT14_EN2_0P5 U3 ( .A1 ( B_not[0] ) , .A2 ( A[0] ) , .X ( DIFF[0] ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( B[7] ) , .X ( B_not[7] ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( B[6] ) , .X ( B_not[6] ) ) ;
SAEDRVT14_INV_S_0P5 U6 ( .A ( B[5] ) , .X ( B_not[5] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( B[4] ) , .X ( B_not[4] ) ) ;
SAEDRVT14_INV_S_0P5 U8 ( .A ( B[3] ) , .X ( B_not[3] ) ) ;
SAEDRVT14_INV_S_0P5 U9 ( .A ( B[2] ) , .X ( B_not[2] ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( B[1] ) , .X ( B_not[1] ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( B[0] ) , .X ( B_not[0] ) ) ;
endmodule


module PE_14 ( clock , R , S1 , S2 , S1S2mux , newDist , Accumulate , Rpipe , 
    ZCTSNET_0 ) ;
input  clock ;
input  [7:0] R ;
input  [7:0] S1 ;
input  [7:0] S2 ;
input  S1S2mux ;
input  newDist ;
output [7:0] Accumulate ;
output [7:0] Rpipe ;
input  ZCTSNET_0 ;

wire [7:0] difference ;

SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0] ( .SD ( n5 ) , .D ( Carry ) , 
    .SI ( difference[0] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[0] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7] ( .SD ( n6 ) , .D ( Carry ) , 
    .SI ( difference[7] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[7] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6] ( .SD ( n7 ) , .D ( Carry ) , 
    .SI ( difference[6] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[6] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5] ( .SD ( n8 ) , .D ( Carry ) , 
    .SI ( difference[5] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[5] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4] ( .SD ( n13 ) , 
    .D ( Carry ) , .SI ( difference[4] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_0 ) , .Q ( Accumulate[4] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3] ( .SD ( n14 ) , 
    .D ( Carry ) , .SI ( difference[3] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[3] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2] ( .SD ( n15 ) , 
    .D ( Carry ) , .SI ( difference[2] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[2] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1] ( .SD ( n16 ) , 
    .D ( Carry ) , .SI ( difference[1] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[1] ) ) ;
SAEDRVT14_INV_S_0P5 U3 ( .A ( N27 ) , .X ( n16 ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( N28 ) , .X ( n15 ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( N29 ) , .X ( n14 ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( N30 ) , .X ( n13 ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( N31 ) , .X ( n8 ) ) ;
SAEDRVT14_INV_S_0P5 U12 ( .A ( N32 ) , .X ( n7 ) ) ;
SAEDRVT14_INV_S_0P5 U14 ( .A ( N26 ) , .X ( n5 ) ) ;
SAEDRVT14_AO22_0P75 U16 ( .A1 ( S1[0] ) , .A2 ( S1S2mux ) , .B1 ( S2[0] ) , 
    .B2 ( n3 ) , .X ( N8 ) ) ;
SAEDRVT14_AO22_0P75 U17 ( .A1 ( S1[7] ) , .A2 ( S1S2mux ) , .B1 ( S2[7] ) , 
    .B2 ( n3 ) , .X ( N15 ) ) ;
SAEDRVT14_AO22_0P75 U18 ( .A1 ( S1[6] ) , .A2 ( S1S2mux ) , .B1 ( S2[6] ) , 
    .B2 ( n3 ) , .X ( N14 ) ) ;
SAEDRVT14_AO22_0P75 U19 ( .A1 ( S1[5] ) , .A2 ( S1S2mux ) , .B1 ( S2[5] ) , 
    .B2 ( n3 ) , .X ( N13 ) ) ;
SAEDRVT14_AO22_0P75 U20 ( .A1 ( S1[4] ) , .A2 ( S1S2mux ) , .B1 ( S2[4] ) , 
    .B2 ( n3 ) , .X ( N12 ) ) ;
SAEDRVT14_AO22_0P75 U21 ( .A1 ( S1[3] ) , .A2 ( S1S2mux ) , .B1 ( S2[3] ) , 
    .B2 ( n3 ) , .X ( N11 ) ) ;
SAEDRVT14_AO22_0P75 U22 ( .A1 ( S1[2] ) , .A2 ( S1S2mux ) , .B1 ( S2[2] ) , 
    .B2 ( n3 ) , .X ( N10 ) ) ;
SAEDRVT14_INV_S_0P5 U23 ( .A ( S1S2mux ) , .X ( n3 ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[5] ( .D ( R[5] ) , .CK ( clock ) , 
    .Q ( Rpipe[5] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[0] ( .D ( R[0] ) , .CK ( clock ) , 
    .Q ( Rpipe[0] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[2] ( .D ( R[2] ) , .CK ( clock ) , 
    .Q ( Rpipe[2] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[3] ( .D ( R[3] ) , .CK ( clock ) , 
    .Q ( Rpipe[3] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[7] ( .D ( R[7] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[7] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[1] ( .D ( R[1] ) , .CK ( clock ) , 
    .Q ( Rpipe[1] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[6] ( .D ( R[6] ) , .CK ( clock ) , 
    .Q ( Rpipe[6] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[4] ( .D ( R[4] ) , .CK ( clock ) , 
    .Q ( Rpipe[4] ) ) ;
SAEDRVT14_AO22_0P5 U7 ( .A1 ( S1[1] ) , .A2 ( S1S2mux ) , .B1 ( S2[1] ) , 
    .B2 ( n3 ) , .X ( N9 ) ) ;
SAEDRVT14_INV_S_0P5 U13 ( .A ( N33 ) , .X ( n6 ) ) ;
PE_14_DW01_sub_3 sub_46 ( .A ( R ) ,
    .B ( { N15 , N14 , N13 , N12 , N11 , N10 , N9 , N8 } ) ,
    .DIFF ( difference ) ) ;
PE_14_DW01_add_0 add_52 (
    .A ( { SYNOPSYS_UNCONNECTED_1 , Accumulate[7] , Accumulate[6] , 
        Accumulate[5] , Accumulate[4] , Accumulate[3] , Accumulate[2] , 
        Accumulate[1] , Accumulate[0] } ) ,
    .B ( { SYNOPSYS_UNCONNECTED_2 , difference[7] , difference[6] , 
        difference[5] , difference[4] , difference[3] , difference[2] , 
        difference[1] , difference[0] } ) ,
    .SUM ( { Carry , N33 , N32 , N31 , N30 , N29 , N28 , N27 , N26 } ) ) ;
SAEDSLVT14_TIE0_V1_2 U6 () ;
endmodule


module PE_14_DW01_sub_3 ( A , B , CI , DIFF , CO ) ;
input  [7:0] A ;
input  [7:0] B ;
input  CI ;
output [7:0] DIFF ;
output CO ;

SAEDHVT14_AN2B_MM_1 ctmTdsLR_1_51 ( .B ( n38 ) , .A ( n36 ) , .X ( n40 ) ) ;
SAEDRVT14_EO2_V1_0P75 U4 ( .A1 ( n47 ) , .A2 ( n40 ) , .X ( DIFF[1] ) ) ;
SAEDRVT14_OA21_1 ctmTdsLR_1_2631 ( .A1 ( tmp_net35 ) , .A2 ( tmp_net36 ) , 
    .B ( tmp_net10 ) , .X ( tmp_net12 ) ) ;
SAEDHVT14_NR2B_U_0P5 ctmTdsLR_1_57 ( .A ( n20 ) , .B ( n18 ) , .X ( n22 ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_1_67 ( .A1 ( A[7] ) , .A2 ( B[7] ) , 
    .X ( tmp_net11 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_2608_roptpi_2637 ( .A1 ( n36 ) , .A2 ( n37 ) , 
    .B ( n38 ) , .X ( tmp_net19 ) ) ;
SAEDRVT14_EO2_V1_0P75 U9 ( .A1 ( tmp_net11 ) , .A2 ( tmp_net12 ) , 
    .X ( DIFF[7] ) ) ;
SAEDHVT14_NR2_MM_0P5 ctmTdsLR_1_2605 ( .A1 ( tmp_net18 ) , .A2 ( A[1] ) , 
    .X ( n36 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1 ( .A ( A[0] ) , .X ( tmp_net0 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2626 ( .A1 ( tmp_net31 ) , .A2 ( tmp_net32 ) , 
    .B ( tmp_net34 ) , .X ( n8 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_2627 ( .A ( n12 ) , .X ( tmp_net31 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_2632 ( .A ( A[6] ) , .X ( tmp_net35 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_5_2635_roptpi_2639 ( .A1 ( A[6] ) , .A2 ( n8 ) , 
    .B ( tmp_net37 ) , .X ( tmp_net10 ) ) ;
SAEDHVT14_NR2_MM_0P5 ctmTdsLR_1_2609 ( .A1 ( tmp_net20 ) , .A2 ( A[2] ) , 
    .X ( n27 ) ) ;
SAEDRVT14_INV_PS_1 U17 ( .A ( n47 ) , .X ( n37 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_2606 ( .A ( B[1] ) , .X ( tmp_net18 ) ) ;
SAEDRVT14_EN3_U_0P5 U19 ( .A1 ( B[6] ) , .A2 ( A[6] ) , .A3 ( n8 ) , 
    .X ( DIFF[6] ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_2610 ( .A ( B[2] ) , .X ( tmp_net20 ) ) ;
SAEDHVT14_NR2_MM_0P5 ctmTdsLR_1_2611 ( .A1 ( tmp_net21 ) , .A2 ( A[3] ) , 
    .X ( n18 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_2612 ( .A ( B[3] ) , .X ( tmp_net21 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2621 ( .A1 ( tmp_net27 ) , .A2 ( tmp_net28 ) , 
    .B ( tmp_net30 ) , .X ( n12 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_2622 ( .A ( n17 ) , .X ( tmp_net27 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_2623 ( .A ( A[4] ) , .X ( tmp_net28 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_4_2624 ( .A1 ( n17 ) , .A2 ( A[4] ) , 
    .B ( tmp_net29 ) , .X ( tmp_net30 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_5_2625 ( .A ( B[4] ) , .X ( tmp_net29 ) ) ;
SAEDRVT14_EN3_U_0P5 U30 ( .A1 ( B[5] ) , .A2 ( A[5] ) , .A3 ( n12 ) , 
    .X ( DIFF[5] ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_2628 ( .A ( A[5] ) , .X ( tmp_net32 ) ) ;
SAEDRVT14_EN3_U_0P5 U32 ( .A1 ( B[4] ) , .A2 ( A[4] ) , .A3 ( n17 ) , 
    .X ( DIFF[4] ) ) ;
SAEDRVT14_OAI21_0P5 U33 ( .A1 ( n18 ) , .A2 ( n19 ) , .B ( n20 ) , 
    .X ( n17 ) ) ;
SAEDRVT14_INV_PS_1 U34 ( .A ( n21 ) , .X ( n19 ) ) ;
SAEDRVT14_EO2_V1_0P75 U35 ( .A1 ( n21 ) , .A2 ( n22 ) , .X ( DIFF[3] ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_4_2629 ( .A1 ( n12 ) , .A2 ( A[5] ) , 
    .B ( tmp_net33 ) , .X ( tmp_net34 ) ) ;
SAEDHVT14_NR2B_U_0P5 ctmTdsLR_1_52 ( .A ( n29 ) , .B ( n27 ) , .X ( n31 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_5_2630 ( .A ( B[5] ) , .X ( tmp_net33 ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_12 ( .A1 ( B[0] ) , .A2 ( tmp_net0 ) , 
    .B ( n47 ) , .X ( DIFF[0] ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_2633 ( .A ( n8 ) , .X ( tmp_net36 ) ) ;
SAEDRVT14_OAI21_0P5 U43 ( .A1 ( n27 ) , .A2 ( n28 ) , .B ( n29 ) , 
    .X ( n21 ) ) ;
SAEDRVT14_INV_PS_1 U44 ( .A ( tmp_net19 ) , .X ( n28 ) ) ;
SAEDRVT14_EO2_V1_0P75 U45 ( .A1 ( tmp_net19 ) , .A2 ( n31 ) , .X ( DIFF[2] ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_13 ( .A ( B[3] ) , .B ( A[3] ) , .X ( n20 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_8 ( .A ( B[2] ) , .B ( A[2] ) , .X ( n29 ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_6_2636 ( .A ( B[6] ) , .X ( tmp_net37 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_6 ( .A ( B[1] ) , .B ( A[1] ) , .X ( n38 ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_0 ( .A ( A[0] ) , .B ( B[0] ) , .X ( n47 ) ) ;
endmodule


module PE_14_DW01_add_0 ( A , B , CI , SUM , CO ) ;
input  [8:0] A ;
input  [8:0] B ;
input  CI ;
output [8:0] SUM ;
output CO ;

wire [7:1] carry ;

SAEDRVT14_ADDF_V1_0P5 U1_7 ( .A ( A[7] ) , .B ( B[7] ) , .CI ( carry[7] ) , 
    .CO ( SUM[8] ) , .S ( SUM[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_6 ( .A ( A[6] ) , .B ( B[6] ) , .CI ( carry[6] ) , 
    .CO ( carry[7] ) , .S ( SUM[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_5 ( .A ( A[5] ) , .B ( B[5] ) , .CI ( carry[5] ) , 
    .CO ( carry[6] ) , .S ( SUM[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_4 ( .A ( A[4] ) , .B ( B[4] ) , .CI ( carry[4] ) , 
    .CO ( carry[5] ) , .S ( SUM[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_3 ( .A ( A[3] ) , .B ( B[3] ) , .CI ( carry[3] ) , 
    .CO ( carry[4] ) , .S ( SUM[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_2 ( .A ( A[2] ) , .B ( B[2] ) , .CI ( carry[2] ) , 
    .CO ( carry[3] ) , .S ( SUM[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_1 ( .A ( A[1] ) , .B ( B[1] ) , .CI ( carry[1] ) , 
    .CO ( carry[2] ) , .S ( SUM[1] ) ) ;
SAEDRVT14_EO2_V1_0P75 U4 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .X ( SUM[0] ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_1_32 ( .A1 ( B[0] ) , .A2 ( A[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_13 ( clock , R , S1 , S2 , S1S2mux , newDist , Accumulate , Rpipe , 
    ZCTSNET_0 ) ;
input  clock ;
input  [7:0] R ;
input  [7:0] S1 ;
input  [7:0] S2 ;
input  S1S2mux ;
input  newDist ;
output [7:0] Accumulate ;
output [7:0] Rpipe ;
input  ZCTSNET_0 ;

wire [7:0] difference ;

SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0] ( .SD ( n2 ) , .D ( Carry ) , 
    .SI ( difference[0] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[0] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7] ( .SD ( n3 ) , .D ( Carry ) , 
    .SI ( difference[7] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[7] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6] ( .SD ( n5 ) , .D ( Carry ) , 
    .SI ( difference[6] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[6] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5] ( .SD ( n6 ) , .D ( Carry ) , 
    .SI ( difference[5] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[5] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4] ( .SD ( n7 ) , .D ( Carry ) , 
    .SI ( difference[4] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[4] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3] ( .SD ( n8 ) , .D ( Carry ) , 
    .SI ( difference[3] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[3] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2] ( .SD ( n11 ) , 
    .D ( Carry ) , .SI ( difference[2] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_0 ) , .Q ( Accumulate[2] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1] ( .SD ( n12 ) , 
    .D ( Carry ) , .SI ( difference[1] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_0 ) , .Q ( Accumulate[1] ) ) ;
SAEDRVT14_INV_S_0P5 U3 ( .A ( N27 ) , .X ( n12 ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( N28 ) , .X ( n11 ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( N29 ) , .X ( n8 ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( N30 ) , .X ( n7 ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( N31 ) , .X ( n6 ) ) ;
SAEDRVT14_INV_S_0P5 U12 ( .A ( N32 ) , .X ( n5 ) ) ;
SAEDRVT14_INV_S_0P5 U14 ( .A ( N26 ) , .X ( n2 ) ) ;
SAEDRVT14_INV_S_0P5 U23 ( .A ( S1S2mux ) , .X ( n1 ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[5] ( .D ( R[5] ) , .CK ( clock ) , 
    .Q ( Rpipe[5] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[0] ( .D ( R[0] ) , .CK ( clock ) , 
    .Q ( Rpipe[0] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[2] ( .D ( R[2] ) , .CK ( clock ) , 
    .Q ( Rpipe[2] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[3] ( .D ( R[3] ) , .CK ( clock ) , 
    .Q ( Rpipe[3] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[6] ( .D ( R[6] ) , .CK ( clock ) , 
    .Q ( Rpipe[6] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[4] ( .D ( R[4] ) , .CK ( clock ) , 
    .Q ( Rpipe[4] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[7] ( .D ( R[7] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[7] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[1] ( .D ( R[1] ) , .CK ( clock ) , 
    .Q ( Rpipe[1] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( N33 ) , .X ( n3 ) ) ;
SAEDRVT14_AO22_0P75 U8 ( .A1 ( S1[7] ) , .A2 ( S1S2mux ) , .B1 ( S2[7] ) , 
    .B2 ( n1 ) , .X ( N15 ) ) ;
SAEDRVT14_AO22_0P5 U9 ( .A1 ( S1[6] ) , .A2 ( S1S2mux ) , .B1 ( S2[6] ) , 
    .B2 ( n1 ) , .X ( N14 ) ) ;
SAEDRVT14_AO22_0P5 U13 ( .A1 ( S1[5] ) , .A2 ( S1S2mux ) , .B1 ( S2[5] ) , 
    .B2 ( n1 ) , .X ( N13 ) ) ;
SAEDRVT14_AO22_0P5 U15 ( .A1 ( S1[4] ) , .A2 ( S1S2mux ) , .B1 ( S2[4] ) , 
    .B2 ( n1 ) , .X ( N12 ) ) ;
SAEDRVT14_AO22_0P5 U16 ( .A1 ( S1[3] ) , .A2 ( S1S2mux ) , .B1 ( S2[3] ) , 
    .B2 ( n1 ) , .X ( N11 ) ) ;
SAEDRVT14_AO22_0P5 U17 ( .A1 ( S1[2] ) , .A2 ( S1S2mux ) , .B1 ( S2[2] ) , 
    .B2 ( n1 ) , .X ( N10 ) ) ;
SAEDRVT14_AO22_0P5 U18 ( .A1 ( S1[0] ) , .A2 ( S1S2mux ) , .B1 ( S2[0] ) , 
    .B2 ( n1 ) , .X ( N8 ) ) ;
SAEDRVT14_AO22_0P5 U19 ( .A1 ( S1[1] ) , .A2 ( S1S2mux ) , .B1 ( S2[1] ) , 
    .B2 ( n1 ) , .X ( N9 ) ) ;
PE_13_DW01_add_0 add_52 (
    .A ( { SYNOPSYS_UNCONNECTED_1 , Accumulate[7] , Accumulate[6] , 
        Accumulate[5] , Accumulate[4] , Accumulate[3] , Accumulate[2] , 
        Accumulate[1] , Accumulate[0] } ) ,
    .B ( { SYNOPSYS_UNCONNECTED_2 , difference[7] , difference[6] , 
        difference[5] , difference[4] , difference[3] , difference[2] , 
        difference[1] , difference[0] } ) ,
    .SUM ( { Carry , N33 , N32 , N31 , N30 , N29 , N28 , N27 , N26 } ) ) ;
PE_13_DW01_sub_0 sub_46 ( .A ( R ) ,
    .B ( { N15 , N14 , N13 , N12 , N11 , N10 , N9 , N8 } ) ,
    .DIFF ( difference ) ) ;
SAEDSLVT14_TIE0_V1_2 U6 () ;
endmodule


module PE_13_DW01_add_0 ( A , B , CI , SUM , CO ) ;
input  [8:0] A ;
input  [8:0] B ;
input  CI ;
output [8:0] SUM ;
output CO ;

wire [7:1] carry ;

SAEDRVT14_ADDF_V1_0P5 U1_7 ( .A ( A[7] ) , .B ( B[7] ) , .CI ( carry[7] ) , 
    .CO ( SUM[8] ) , .S ( SUM[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_6 ( .A ( A[6] ) , .B ( B[6] ) , .CI ( carry[6] ) , 
    .CO ( carry[7] ) , .S ( SUM[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_5 ( .A ( A[5] ) , .B ( B[5] ) , .CI ( carry[5] ) , 
    .CO ( carry[6] ) , .S ( SUM[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_4 ( .A ( A[4] ) , .B ( B[4] ) , .CI ( carry[4] ) , 
    .CO ( carry[5] ) , .S ( SUM[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_3 ( .A ( A[3] ) , .B ( B[3] ) , .CI ( carry[3] ) , 
    .CO ( carry[4] ) , .S ( SUM[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_2 ( .A ( A[2] ) , .B ( B[2] ) , .CI ( carry[2] ) , 
    .CO ( carry[3] ) , .S ( SUM[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_1 ( .A ( A[1] ) , .B ( B[1] ) , .CI ( carry[1] ) , 
    .CO ( carry[2] ) , .S ( SUM[1] ) ) ;
SAEDRVT14_EO2_V1_0P75 U4 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .X ( SUM[0] ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_1_33 ( .A1 ( A[0] ) , .A2 ( B[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_13_DW01_sub_0 ( A , B , CI , DIFF , CO ) ;
input  [7:0] A ;
input  [7:0] B ;
input  CI ;
output [7:0] DIFF ;
output CO ;

wire [7:1] carry ;
wire [7:0] B_not ;

SAEDRVT14_ADDF_V1_0P5 U2_7 ( .A ( A[7] ) , .B ( B_not[7] ) , 
    .CI ( carry[7] ) , .S ( DIFF[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_6 ( .A ( A[6] ) , .B ( B_not[6] ) , 
    .CI ( carry[6] ) , .CO ( carry[7] ) , .S ( DIFF[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_5 ( .A ( A[5] ) , .B ( B_not[5] ) , 
    .CI ( carry[5] ) , .CO ( carry[6] ) , .S ( DIFF[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_4 ( .A ( A[4] ) , .B ( B_not[4] ) , 
    .CI ( carry[4] ) , .CO ( carry[5] ) , .S ( DIFF[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_3 ( .A ( A[3] ) , .B ( B_not[3] ) , 
    .CI ( carry[3] ) , .CO ( carry[4] ) , .S ( DIFF[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_2 ( .A ( A[2] ) , .B ( B_not[2] ) , 
    .CI ( carry[2] ) , .CO ( carry[3] ) , .S ( DIFF[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_1 ( .A ( A[1] ) , .B ( B_not[1] ) , 
    .CI ( carry[1] ) , .CO ( carry[2] ) , .S ( DIFF[1] ) ) ;
SAEDRVT14_EN2_0P5 U3 ( .A1 ( B_not[0] ) , .A2 ( A[0] ) , .X ( DIFF[0] ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( B[7] ) , .X ( B_not[7] ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( B[6] ) , .X ( B_not[6] ) ) ;
SAEDRVT14_INV_S_0P5 U6 ( .A ( B[5] ) , .X ( B_not[5] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( B[4] ) , .X ( B_not[4] ) ) ;
SAEDRVT14_INV_S_0P5 U8 ( .A ( B[3] ) , .X ( B_not[3] ) ) ;
SAEDRVT14_INV_S_0P5 U9 ( .A ( B[2] ) , .X ( B_not[2] ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( B[1] ) , .X ( B_not[1] ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( B[0] ) , .X ( B_not[0] ) ) ;
SAEDRVT14_OR2_MM_0P5 ctmTdsLR_1_16 ( .A1 ( A[0] ) , .A2 ( B_not[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_12 ( clock , R , S1 , S2 , S1S2mux , newDist , Accumulate , Rpipe , 
    ZCTSNET_0 , ZCTSNET_1 , ZCTSNET_2 ) ;
input  clock ;
input  [7:0] R ;
input  [7:0] S1 ;
input  [7:0] S2 ;
input  S1S2mux ;
input  newDist ;
output [7:0] Accumulate ;
output [7:0] Rpipe ;
input  ZCTSNET_0 ;
input  ZCTSNET_1 ;
input  ZCTSNET_2 ;

wire [7:0] difference ;

SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0] ( .SD ( n2 ) , .D ( Carry ) , 
    .SI ( difference[0] ) , .SE ( newDist ) , .CK ( ZCTSNET_1 ) , 
    .Q ( Accumulate[0] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7] ( .SD ( n3 ) , .D ( Carry ) , 
    .SI ( difference[7] ) , .SE ( newDist ) , .CK ( ZCTSNET_2 ) , 
    .Q ( Accumulate[7] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6] ( .SD ( n5 ) , .D ( Carry ) , 
    .SI ( difference[6] ) , .SE ( newDist ) , .CK ( ZCTSNET_1 ) , 
    .Q ( Accumulate[6] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5] ( .SD ( n6 ) , .D ( Carry ) , 
    .SI ( difference[5] ) , .SE ( newDist ) , .CK ( ZCTSNET_1 ) , 
    .Q ( Accumulate[5] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4] ( .SD ( n7 ) , .D ( Carry ) , 
    .SI ( difference[4] ) , .SE ( newDist ) , .CK ( ZCTSNET_1 ) , 
    .Q ( Accumulate[4] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3] ( .SD ( n8 ) , .D ( Carry ) , 
    .SI ( difference[3] ) , .SE ( newDist ) , .CK ( ZCTSNET_1 ) , 
    .Q ( Accumulate[3] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2] ( .SD ( n11 ) , 
    .D ( Carry ) , .SI ( difference[2] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_1 ) , .Q ( Accumulate[2] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1] ( .SD ( n12 ) , 
    .D ( Carry ) , .SI ( difference[1] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_1 ) , .Q ( Accumulate[1] ) ) ;
SAEDRVT14_INV_S_0P5 U3 ( .A ( N27 ) , .X ( n12 ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( N28 ) , .X ( n11 ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( N29 ) , .X ( n8 ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( N30 ) , .X ( n7 ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( N31 ) , .X ( n6 ) ) ;
SAEDRVT14_INV_S_0P5 U12 ( .A ( N32 ) , .X ( n5 ) ) ;
SAEDRVT14_INV_S_0P5 U13 ( .A ( N33 ) , .X ( n3 ) ) ;
SAEDRVT14_INV_S_0P5 U14 ( .A ( N26 ) , .X ( n2 ) ) ;
SAEDRVT14_AO22_0P75 U15 ( .A1 ( S1[1] ) , .A2 ( S1S2mux ) , .B1 ( S2[1] ) , 
    .B2 ( n1 ) , .X ( N9 ) ) ;
SAEDRVT14_AO22_0P75 U16 ( .A1 ( S1[0] ) , .A2 ( S1S2mux ) , .B1 ( S2[0] ) , 
    .B2 ( n1 ) , .X ( N8 ) ) ;
SAEDRVT14_AO22_0P75 U17 ( .A1 ( S1[7] ) , .A2 ( S1S2mux ) , .B1 ( S2[7] ) , 
    .B2 ( n1 ) , .X ( N15 ) ) ;
SAEDRVT14_AO22_0P75 U18 ( .A1 ( S1[6] ) , .A2 ( S1S2mux ) , .B1 ( S2[6] ) , 
    .B2 ( n1 ) , .X ( N14 ) ) ;
SAEDRVT14_AO22_0P75 U19 ( .A1 ( S1[5] ) , .A2 ( S1S2mux ) , .B1 ( S2[5] ) , 
    .B2 ( n1 ) , .X ( N13 ) ) ;
SAEDRVT14_AO22_0P75 U20 ( .A1 ( S1[4] ) , .A2 ( S1S2mux ) , .B1 ( S2[4] ) , 
    .B2 ( n1 ) , .X ( N12 ) ) ;
SAEDRVT14_AO22_0P75 U21 ( .A1 ( S1[3] ) , .A2 ( S1S2mux ) , .B1 ( S2[3] ) , 
    .B2 ( n1 ) , .X ( N11 ) ) ;
SAEDRVT14_AO22_0P75 U22 ( .A1 ( S1[2] ) , .A2 ( S1S2mux ) , .B1 ( S2[2] ) , 
    .B2 ( n1 ) , .X ( N10 ) ) ;
SAEDRVT14_INV_S_0P5 U23 ( .A ( S1S2mux ) , .X ( n1 ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[4] ( .D ( R[4] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[4] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[0] ( .D ( R[0] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[0] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[2] ( .D ( R[2] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[2] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[5] ( .D ( R[5] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[5] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[3] ( .D ( R[3] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[3] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[6] ( .D ( R[6] ) , .CK ( clock ) , 
    .Q ( Rpipe[6] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[1] ( .D ( R[1] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[1] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[7] ( .D ( R[7] ) , .CK ( clock ) , 
    .Q ( Rpipe[7] ) ) ;
PE_12_DW01_add_0 add_52 (
    .A ( { SYNOPSYS_UNCONNECTED_1 , Accumulate[7] , Accumulate[6] , 
        Accumulate[5] , Accumulate[4] , Accumulate[3] , Accumulate[2] , 
        Accumulate[1] , Accumulate[0] } ) ,
    .B ( { SYNOPSYS_UNCONNECTED_2 , difference[7] , difference[6] , 
        difference[5] , difference[4] , difference[3] , difference[2] , 
        difference[1] , difference[0] } ) ,
    .SUM ( { Carry , N33 , N32 , N31 , N30 , N29 , N28 , N27 , N26 } ) ) ;
PE_12_DW01_sub_0 sub_46 ( .A ( R ) ,
    .B ( { N15 , N14 , N13 , N12 , N11 , N10 , N9 , N8 } ) ,
    .DIFF ( difference ) ) ;
SAEDSLVT14_TIE0_V1_2 U6 () ;
endmodule


module PE_12_DW01_add_0 ( A , B , CI , SUM , CO ) ;
input  [8:0] A ;
input  [8:0] B ;
input  CI ;
output [8:0] SUM ;
output CO ;

wire [7:1] carry ;

SAEDRVT14_ADDF_V1_0P5 U1_7 ( .A ( A[7] ) , .B ( B[7] ) , .CI ( carry[7] ) , 
    .CO ( SUM[8] ) , .S ( SUM[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_6 ( .A ( A[6] ) , .B ( B[6] ) , .CI ( carry[6] ) , 
    .CO ( carry[7] ) , .S ( SUM[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_5 ( .A ( A[5] ) , .B ( B[5] ) , .CI ( carry[5] ) , 
    .CO ( carry[6] ) , .S ( SUM[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_4 ( .A ( A[4] ) , .B ( B[4] ) , .CI ( carry[4] ) , 
    .CO ( carry[5] ) , .S ( SUM[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_3 ( .A ( A[3] ) , .B ( B[3] ) , .CI ( carry[3] ) , 
    .CO ( carry[4] ) , .S ( SUM[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_2 ( .A ( A[2] ) , .B ( B[2] ) , .CI ( carry[2] ) , 
    .CO ( carry[3] ) , .S ( SUM[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_1 ( .A ( A[1] ) , .B ( B[1] ) , .CI ( carry[1] ) , 
    .CO ( carry[2] ) , .S ( SUM[1] ) ) ;
SAEDRVT14_EO2_V1_0P75 U4 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .X ( SUM[0] ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_1_34 ( .A1 ( A[0] ) , .A2 ( B[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_12_DW01_sub_0 ( A , B , CI , DIFF , CO ) ;
input  [7:0] A ;
input  [7:0] B ;
input  CI ;
output [7:0] DIFF ;
output CO ;

wire [7:1] carry ;
wire [7:0] B_not ;

SAEDRVT14_ADDF_V1_0P5 U2_7 ( .A ( A[7] ) , .B ( B_not[7] ) , 
    .CI ( carry[7] ) , .S ( DIFF[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_6 ( .A ( A[6] ) , .B ( B_not[6] ) , 
    .CI ( carry[6] ) , .CO ( carry[7] ) , .S ( DIFF[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_5 ( .A ( A[5] ) , .B ( B_not[5] ) , 
    .CI ( carry[5] ) , .CO ( carry[6] ) , .S ( DIFF[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_4 ( .A ( A[4] ) , .B ( B_not[4] ) , 
    .CI ( carry[4] ) , .CO ( carry[5] ) , .S ( DIFF[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_3 ( .A ( A[3] ) , .B ( B_not[3] ) , 
    .CI ( carry[3] ) , .CO ( carry[4] ) , .S ( DIFF[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_2 ( .A ( A[2] ) , .B ( B_not[2] ) , 
    .CI ( carry[2] ) , .CO ( carry[3] ) , .S ( DIFF[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_1 ( .A ( A[1] ) , .B ( B_not[1] ) , 
    .CI ( carry[1] ) , .CO ( carry[2] ) , .S ( DIFF[1] ) ) ;
SAEDRVT14_EN2_0P5 U3 ( .A1 ( B_not[0] ) , .A2 ( A[0] ) , .X ( DIFF[0] ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( B[7] ) , .X ( B_not[7] ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( B[6] ) , .X ( B_not[6] ) ) ;
SAEDRVT14_INV_S_0P5 U6 ( .A ( B[5] ) , .X ( B_not[5] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( B[4] ) , .X ( B_not[4] ) ) ;
SAEDRVT14_INV_S_0P5 U8 ( .A ( B[3] ) , .X ( B_not[3] ) ) ;
SAEDRVT14_INV_S_0P5 U9 ( .A ( B[2] ) , .X ( B_not[2] ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( B[1] ) , .X ( B_not[1] ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( B[0] ) , .X ( B_not[0] ) ) ;
SAEDRVT14_OR2_MM_0P5 ctmTdsLR_1_17 ( .A1 ( A[0] ) , .A2 ( B_not[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_11 ( clock , R , S1 , S2 , S1S2mux , newDist , Accumulate , Rpipe , 
    ZCTSNET_0 ) ;
input  clock ;
input  [7:0] R ;
input  [7:0] S1 ;
input  [7:0] S2 ;
input  S1S2mux ;
input  newDist ;
output [7:0] Accumulate ;
output [7:0] Rpipe ;
input  ZCTSNET_0 ;

wire [7:0] difference ;

SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0] ( .SD ( n2 ) , .D ( Carry ) , 
    .SI ( difference[0] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[0] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7] ( .SD ( n3 ) , .D ( Carry ) , 
    .SI ( difference[7] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[7] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6] ( .SD ( n5 ) , .D ( Carry ) , 
    .SI ( difference[6] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[6] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5] ( .SD ( n6 ) , .D ( Carry ) , 
    .SI ( difference[5] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[5] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4] ( .SD ( n7 ) , .D ( Carry ) , 
    .SI ( difference[4] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[4] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3] ( .SD ( n8 ) , .D ( Carry ) , 
    .SI ( difference[3] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[3] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2] ( .SD ( n11 ) , 
    .D ( Carry ) , .SI ( difference[2] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_0 ) , .Q ( Accumulate[2] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1] ( .SD ( n12 ) , 
    .D ( Carry ) , .SI ( difference[1] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_0 ) , .Q ( Accumulate[1] ) ) ;
SAEDRVT14_INV_S_0P5 U3 ( .A ( N27 ) , .X ( n12 ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( N28 ) , .X ( n11 ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( N29 ) , .X ( n8 ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( N30 ) , .X ( n7 ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( N31 ) , .X ( n6 ) ) ;
SAEDRVT14_INV_S_0P5 U12 ( .A ( N32 ) , .X ( n5 ) ) ;
SAEDRVT14_INV_S_0P5 U13 ( .A ( N33 ) , .X ( n3 ) ) ;
SAEDRVT14_INV_S_0P5 U14 ( .A ( N26 ) , .X ( n2 ) ) ;
SAEDRVT14_AO22_0P75 U15 ( .A1 ( S1[1] ) , .A2 ( S1S2mux ) , .B1 ( S2[1] ) , 
    .B2 ( n1 ) , .X ( N9 ) ) ;
SAEDRVT14_AO22_0P5 U16 ( .A1 ( S1[0] ) , .A2 ( S1S2mux ) , .B1 ( S2[0] ) , 
    .B2 ( n1 ) , .X ( N8 ) ) ;
SAEDRVT14_AO22_0P75 U17 ( .A1 ( S1[7] ) , .A2 ( S1S2mux ) , .B1 ( S2[7] ) , 
    .B2 ( n1 ) , .X ( N15 ) ) ;
SAEDRVT14_AO22_0P75 U18 ( .A1 ( S1[6] ) , .A2 ( S1S2mux ) , .B1 ( S2[6] ) , 
    .B2 ( n1 ) , .X ( N14 ) ) ;
SAEDRVT14_AO22_0P75 U19 ( .A1 ( S1[5] ) , .A2 ( S1S2mux ) , .B1 ( S2[5] ) , 
    .B2 ( n1 ) , .X ( N13 ) ) ;
SAEDRVT14_AO22_0P75 U20 ( .A1 ( S1[4] ) , .A2 ( S1S2mux ) , .B1 ( S2[4] ) , 
    .B2 ( n1 ) , .X ( N12 ) ) ;
SAEDRVT14_AO22_0P75 U21 ( .A1 ( S1[3] ) , .A2 ( S1S2mux ) , .B1 ( S2[3] ) , 
    .B2 ( n1 ) , .X ( N11 ) ) ;
SAEDRVT14_AO22_0P75 U22 ( .A1 ( S1[2] ) , .A2 ( S1S2mux ) , .B1 ( S2[2] ) , 
    .B2 ( n1 ) , .X ( N10 ) ) ;
SAEDRVT14_INV_S_0P5 U23 ( .A ( S1S2mux ) , .X ( n1 ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[5] ( .D ( R[5] ) , .CK ( clock ) , 
    .Q ( Rpipe[5] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[1] ( .D ( R[1] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[1] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[0] ( .D ( R[0] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[0] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[2] ( .D ( R[2] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[2] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[4] ( .D ( R[4] ) , .CK ( clock ) , 
    .Q ( Rpipe[4] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[3] ( .D ( R[3] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[3] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[7] ( .D ( R[7] ) , .CK ( clock ) , 
    .Q ( Rpipe[7] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[6] ( .D ( R[6] ) , .CK ( clock ) , 
    .Q ( Rpipe[6] ) ) ;
PE_11_DW01_add_0 add_52 (
    .A ( { SYNOPSYS_UNCONNECTED_1 , Accumulate[7] , Accumulate[6] , 
        Accumulate[5] , Accumulate[4] , Accumulate[3] , Accumulate[2] , 
        Accumulate[1] , Accumulate[0] } ) ,
    .B ( { SYNOPSYS_UNCONNECTED_2 , difference[7] , difference[6] , 
        difference[5] , difference[4] , difference[3] , difference[2] , 
        difference[1] , difference[0] } ) ,
    .SUM ( { Carry , N33 , N32 , N31 , N30 , N29 , N28 , N27 , N26 } ) ) ;
PE_11_DW01_sub_0 sub_46 ( .A ( R ) ,
    .B ( { N15 , N14 , N13 , N12 , N11 , N10 , N9 , N8 } ) ,
    .DIFF ( difference ) ) ;
SAEDSLVT14_TIE0_V1_2 U6 () ;
endmodule


module PE_11_DW01_add_0 ( A , B , CI , SUM , CO ) ;
input  [8:0] A ;
input  [8:0] B ;
input  CI ;
output [8:0] SUM ;
output CO ;

wire [7:1] carry ;

SAEDRVT14_ADDF_V1_0P5 U1_7 ( .A ( A[7] ) , .B ( B[7] ) , .CI ( carry[7] ) , 
    .CO ( SUM[8] ) , .S ( SUM[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_6 ( .A ( A[6] ) , .B ( B[6] ) , .CI ( carry[6] ) , 
    .CO ( carry[7] ) , .S ( SUM[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_5 ( .A ( A[5] ) , .B ( B[5] ) , .CI ( carry[5] ) , 
    .CO ( carry[6] ) , .S ( SUM[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_4 ( .A ( A[4] ) , .B ( B[4] ) , .CI ( carry[4] ) , 
    .CO ( carry[5] ) , .S ( SUM[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_3 ( .A ( A[3] ) , .B ( B[3] ) , .CI ( carry[3] ) , 
    .CO ( carry[4] ) , .S ( SUM[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_2 ( .A ( A[2] ) , .B ( B[2] ) , .CI ( carry[2] ) , 
    .CO ( carry[3] ) , .S ( SUM[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_1 ( .A ( A[1] ) , .B ( B[1] ) , .CI ( carry[1] ) , 
    .CO ( carry[2] ) , .S ( SUM[1] ) ) ;
SAEDRVT14_EO2_V1_0P75 U4 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .X ( SUM[0] ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_1_35 ( .A1 ( A[0] ) , .A2 ( B[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_11_DW01_sub_0 ( A , B , CI , DIFF , CO ) ;
input  [7:0] A ;
input  [7:0] B ;
input  CI ;
output [7:0] DIFF ;
output CO ;

wire [7:1] carry ;
wire [7:0] B_not ;

SAEDRVT14_ADDF_V1_0P5 U2_7 ( .A ( A[7] ) , .B ( B_not[7] ) , 
    .CI ( carry[7] ) , .S ( DIFF[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_6 ( .A ( A[6] ) , .B ( B_not[6] ) , 
    .CI ( carry[6] ) , .CO ( carry[7] ) , .S ( DIFF[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_5 ( .A ( A[5] ) , .B ( B_not[5] ) , 
    .CI ( carry[5] ) , .CO ( carry[6] ) , .S ( DIFF[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_4 ( .A ( A[4] ) , .B ( B_not[4] ) , 
    .CI ( carry[4] ) , .CO ( carry[5] ) , .S ( DIFF[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_3 ( .A ( A[3] ) , .B ( B_not[3] ) , 
    .CI ( carry[3] ) , .CO ( carry[4] ) , .S ( DIFF[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_2 ( .A ( A[2] ) , .B ( B_not[2] ) , 
    .CI ( carry[2] ) , .CO ( carry[3] ) , .S ( DIFF[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_1 ( .A ( A[1] ) , .B ( B_not[1] ) , 
    .CI ( carry[1] ) , .CO ( carry[2] ) , .S ( DIFF[1] ) ) ;
SAEDRVT14_EN2_0P5 U3 ( .A1 ( B_not[0] ) , .A2 ( A[0] ) , .X ( DIFF[0] ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( B[7] ) , .X ( B_not[7] ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( B[6] ) , .X ( B_not[6] ) ) ;
SAEDRVT14_INV_S_0P5 U6 ( .A ( B[5] ) , .X ( B_not[5] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( B[4] ) , .X ( B_not[4] ) ) ;
SAEDRVT14_INV_S_0P5 U8 ( .A ( B[3] ) , .X ( B_not[3] ) ) ;
SAEDRVT14_INV_S_0P5 U9 ( .A ( B[2] ) , .X ( B_not[2] ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( B[1] ) , .X ( B_not[1] ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( B[0] ) , .X ( B_not[0] ) ) ;
SAEDRVT14_OR2_MM_0P5 ctmTdsLR_1_18 ( .A1 ( A[0] ) , .A2 ( B_not[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_10 ( clock , R , S1 , S2 , S1S2mux , newDist , Accumulate , Rpipe , 
    ZCTSNET_0 ) ;
input  clock ;
input  [7:0] R ;
input  [7:0] S1 ;
input  [7:0] S2 ;
input  S1S2mux ;
input  newDist ;
output [7:0] Accumulate ;
output [7:0] Rpipe ;
input  ZCTSNET_0 ;

wire [7:0] difference ;

SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0] ( .SD ( n2 ) , .D ( Carry ) , 
    .SI ( difference[0] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[0] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7] ( .SD ( n3 ) , .D ( Carry ) , 
    .SI ( difference[7] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[7] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6] ( .SD ( n5 ) , .D ( Carry ) , 
    .SI ( difference[6] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[6] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5] ( .SD ( n6 ) , .D ( Carry ) , 
    .SI ( difference[5] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[5] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4] ( .SD ( n7 ) , .D ( Carry ) , 
    .SI ( difference[4] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[4] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3] ( .SD ( n8 ) , .D ( Carry ) , 
    .SI ( difference[3] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[3] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2] ( .SD ( n11 ) , 
    .D ( Carry ) , .SI ( difference[2] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_0 ) , .Q ( Accumulate[2] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1] ( .SD ( n12 ) , 
    .D ( Carry ) , .SI ( difference[1] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_0 ) , .Q ( Accumulate[1] ) ) ;
SAEDRVT14_INV_S_0P5 U3 ( .A ( N27 ) , .X ( n12 ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( N28 ) , .X ( n11 ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( N29 ) , .X ( n8 ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( N30 ) , .X ( n7 ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( N31 ) , .X ( n6 ) ) ;
SAEDRVT14_INV_S_0P5 U12 ( .A ( N32 ) , .X ( n5 ) ) ;
SAEDRVT14_INV_S_0P5 U13 ( .A ( N33 ) , .X ( n3 ) ) ;
SAEDRVT14_INV_S_0P5 U14 ( .A ( N26 ) , .X ( n2 ) ) ;
SAEDRVT14_AO22_0P75 U15 ( .A1 ( S1[1] ) , .A2 ( S1S2mux ) , .B1 ( S2[1] ) , 
    .B2 ( n1 ) , .X ( N9 ) ) ;
SAEDRVT14_AO22_0P75 U16 ( .A1 ( S1[0] ) , .A2 ( S1S2mux ) , .B1 ( S2[0] ) , 
    .B2 ( n1 ) , .X ( N8 ) ) ;
SAEDRVT14_AO22_0P75 U17 ( .A1 ( S1[7] ) , .A2 ( S1S2mux ) , .B1 ( S2[7] ) , 
    .B2 ( n1 ) , .X ( N15 ) ) ;
SAEDRVT14_AO22_0P75 U18 ( .A1 ( S1[6] ) , .A2 ( S1S2mux ) , .B1 ( S2[6] ) , 
    .B2 ( n1 ) , .X ( N14 ) ) ;
SAEDRVT14_AO22_0P75 U19 ( .A1 ( S1[5] ) , .A2 ( S1S2mux ) , .B1 ( S2[5] ) , 
    .B2 ( n1 ) , .X ( N13 ) ) ;
SAEDRVT14_AO22_0P75 U20 ( .A1 ( S1[4] ) , .A2 ( S1S2mux ) , .B1 ( S2[4] ) , 
    .B2 ( n1 ) , .X ( N12 ) ) ;
SAEDRVT14_AO22_0P75 U21 ( .A1 ( S1[3] ) , .A2 ( S1S2mux ) , .B1 ( S2[3] ) , 
    .B2 ( n1 ) , .X ( N11 ) ) ;
SAEDRVT14_AO22_0P75 U22 ( .A1 ( S1[2] ) , .A2 ( S1S2mux ) , .B1 ( S2[2] ) , 
    .B2 ( n1 ) , .X ( N10 ) ) ;
SAEDRVT14_INV_S_0P5 U23 ( .A ( S1S2mux ) , .X ( n1 ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[0] ( .D ( R[0] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[0] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[2] ( .D ( R[2] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[2] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[3] ( .D ( R[3] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[3] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[5] ( .D ( R[5] ) , .CK ( clock ) , 
    .Q ( Rpipe[5] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[7] ( .D ( R[7] ) , .CK ( clock ) , 
    .Q ( Rpipe[7] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[1] ( .D ( R[1] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[1] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[6] ( .D ( R[6] ) , .CK ( clock ) , 
    .Q ( Rpipe[6] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[4] ( .D ( R[4] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[4] ) ) ;
PE_10_DW01_add_0 add_52 (
    .A ( { SYNOPSYS_UNCONNECTED_1 , Accumulate[7] , Accumulate[6] , 
        Accumulate[5] , Accumulate[4] , Accumulate[3] , Accumulate[2] , 
        Accumulate[1] , Accumulate[0] } ) ,
    .B ( { SYNOPSYS_UNCONNECTED_2 , difference[7] , difference[6] , 
        difference[5] , difference[4] , difference[3] , difference[2] , 
        difference[1] , difference[0] } ) ,
    .SUM ( { Carry , N33 , N32 , N31 , N30 , N29 , N28 , N27 , N26 } ) ) ;
PE_10_DW01_sub_0 sub_46 ( .A ( R ) ,
    .B ( { N15 , N14 , N13 , N12 , N11 , N10 , N9 , N8 } ) ,
    .DIFF ( difference ) ) ;
SAEDSLVT14_TIE0_V1_2 U6 () ;
endmodule


module PE_10_DW01_add_0 ( A , B , CI , SUM , CO ) ;
input  [8:0] A ;
input  [8:0] B ;
input  CI ;
output [8:0] SUM ;
output CO ;

wire [7:1] carry ;

SAEDRVT14_ADDF_V1_0P5 U1_7 ( .A ( A[7] ) , .B ( B[7] ) , .CI ( carry[7] ) , 
    .CO ( SUM[8] ) , .S ( SUM[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_6 ( .A ( A[6] ) , .B ( B[6] ) , .CI ( carry[6] ) , 
    .CO ( carry[7] ) , .S ( SUM[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_5 ( .A ( A[5] ) , .B ( B[5] ) , .CI ( carry[5] ) , 
    .CO ( carry[6] ) , .S ( SUM[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_4 ( .A ( A[4] ) , .B ( B[4] ) , .CI ( carry[4] ) , 
    .CO ( carry[5] ) , .S ( SUM[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_3 ( .A ( A[3] ) , .B ( B[3] ) , .CI ( carry[3] ) , 
    .CO ( carry[4] ) , .S ( SUM[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_2 ( .A ( A[2] ) , .B ( B[2] ) , .CI ( carry[2] ) , 
    .CO ( carry[3] ) , .S ( SUM[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_1 ( .A ( A[1] ) , .B ( B[1] ) , .CI ( carry[1] ) , 
    .CO ( carry[2] ) , .S ( SUM[1] ) ) ;
SAEDRVT14_EO2_V1_0P75 U4 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .X ( SUM[0] ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_1_36 ( .A1 ( A[0] ) , .A2 ( B[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_10_DW01_sub_0 ( A , B , CI , DIFF , CO ) ;
input  [7:0] A ;
input  [7:0] B ;
input  CI ;
output [7:0] DIFF ;
output CO ;

wire [7:1] carry ;
wire [7:0] B_not ;

SAEDRVT14_ADDF_V1_0P5 U2_7 ( .A ( A[7] ) , .B ( B_not[7] ) , 
    .CI ( carry[7] ) , .S ( DIFF[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_6 ( .A ( A[6] ) , .B ( B_not[6] ) , 
    .CI ( carry[6] ) , .CO ( carry[7] ) , .S ( DIFF[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_5 ( .A ( A[5] ) , .B ( B_not[5] ) , 
    .CI ( carry[5] ) , .CO ( carry[6] ) , .S ( DIFF[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_4 ( .A ( A[4] ) , .B ( B_not[4] ) , 
    .CI ( carry[4] ) , .CO ( carry[5] ) , .S ( DIFF[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_3 ( .A ( A[3] ) , .B ( B_not[3] ) , 
    .CI ( carry[3] ) , .CO ( carry[4] ) , .S ( DIFF[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_2 ( .A ( A[2] ) , .B ( B_not[2] ) , 
    .CI ( carry[2] ) , .CO ( carry[3] ) , .S ( DIFF[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_1 ( .A ( A[1] ) , .B ( B_not[1] ) , 
    .CI ( carry[1] ) , .CO ( carry[2] ) , .S ( DIFF[1] ) ) ;
SAEDRVT14_EN2_0P5 U3 ( .A1 ( B_not[0] ) , .A2 ( A[0] ) , .X ( DIFF[0] ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( B[7] ) , .X ( B_not[7] ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( B[6] ) , .X ( B_not[6] ) ) ;
SAEDRVT14_INV_S_0P5 U6 ( .A ( B[5] ) , .X ( B_not[5] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( B[4] ) , .X ( B_not[4] ) ) ;
SAEDRVT14_INV_S_0P5 U8 ( .A ( B[3] ) , .X ( B_not[3] ) ) ;
SAEDRVT14_INV_S_0P5 U9 ( .A ( B[2] ) , .X ( B_not[2] ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( B[1] ) , .X ( B_not[1] ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( B[0] ) , .X ( B_not[0] ) ) ;
SAEDRVT14_OR2_MM_0P5 ctmTdsLR_1_19 ( .A1 ( A[0] ) , .A2 ( B_not[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_9 ( clock , R , S1 , S2 , S1S2mux , newDist , Accumulate , Rpipe , 
    ZCTSNET_0 ) ;
input  clock ;
input  [7:0] R ;
input  [7:0] S1 ;
input  [7:0] S2 ;
input  S1S2mux ;
input  newDist ;
output [7:0] Accumulate ;
output [7:0] Rpipe ;
input  ZCTSNET_0 ;

wire [7:0] difference ;

SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0] ( .SD ( n2 ) , .D ( Carry ) , 
    .SI ( difference[0] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[0] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7] ( .SD ( n3 ) , .D ( Carry ) , 
    .SI ( difference[7] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[7] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6] ( .SD ( n5 ) , .D ( Carry ) , 
    .SI ( difference[6] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[6] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5] ( .SD ( n6 ) , .D ( Carry ) , 
    .SI ( difference[5] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[5] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4] ( .SD ( n7 ) , .D ( Carry ) , 
    .SI ( difference[4] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[4] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3] ( .SD ( n8 ) , .D ( Carry ) , 
    .SI ( difference[3] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[3] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2] ( .SD ( n11 ) , 
    .D ( Carry ) , .SI ( difference[2] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_0 ) , .Q ( Accumulate[2] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1] ( .SD ( n12 ) , 
    .D ( Carry ) , .SI ( difference[1] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_0 ) , .Q ( Accumulate[1] ) ) ;
SAEDRVT14_INV_S_0P5 U3 ( .A ( N27 ) , .X ( n12 ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( N28 ) , .X ( n11 ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( N29 ) , .X ( n8 ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( N30 ) , .X ( n7 ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( N31 ) , .X ( n6 ) ) ;
SAEDRVT14_INV_S_0P5 U12 ( .A ( N32 ) , .X ( n5 ) ) ;
SAEDRVT14_INV_S_0P5 U14 ( .A ( N26 ) , .X ( n2 ) ) ;
SAEDRVT14_AO22_0P75 U15 ( .A1 ( S1[1] ) , .A2 ( S1S2mux ) , .B1 ( S2[1] ) , 
    .B2 ( n1 ) , .X ( N9 ) ) ;
SAEDRVT14_AO22_0P75 U16 ( .A1 ( S1[0] ) , .A2 ( S1S2mux ) , .B1 ( S2[0] ) , 
    .B2 ( n1 ) , .X ( N8 ) ) ;
SAEDRVT14_AO22_0P75 U17 ( .A1 ( S1[7] ) , .A2 ( S1S2mux ) , .B1 ( S2[7] ) , 
    .B2 ( n1 ) , .X ( N15 ) ) ;
SAEDRVT14_AO22_0P75 U18 ( .A1 ( S1[6] ) , .A2 ( S1S2mux ) , .B1 ( S2[6] ) , 
    .B2 ( n1 ) , .X ( N14 ) ) ;
SAEDRVT14_AO22_0P75 U19 ( .A1 ( S1[5] ) , .A2 ( S1S2mux ) , .B1 ( S2[5] ) , 
    .B2 ( n1 ) , .X ( N13 ) ) ;
SAEDRVT14_AO22_0P75 U20 ( .A1 ( S1[4] ) , .A2 ( S1S2mux ) , .B1 ( S2[4] ) , 
    .B2 ( n1 ) , .X ( N12 ) ) ;
SAEDRVT14_AO22_0P75 U21 ( .A1 ( S1[3] ) , .A2 ( S1S2mux ) , .B1 ( S2[3] ) , 
    .B2 ( n1 ) , .X ( N11 ) ) ;
SAEDRVT14_AO22_0P75 U22 ( .A1 ( S1[2] ) , .A2 ( S1S2mux ) , .B1 ( S2[2] ) , 
    .B2 ( n1 ) , .X ( N10 ) ) ;
SAEDRVT14_INV_S_0P5 U23 ( .A ( S1S2mux ) , .X ( n1 ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[4] ( .D ( R[4] ) , .CK ( clock ) , 
    .Q ( Rpipe[4] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[0] ( .D ( R[0] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[0] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[2] ( .D ( R[2] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[2] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[3] ( .D ( R[3] ) , .CK ( clock ) , 
    .Q ( Rpipe[3] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[7] ( .D ( R[7] ) , .CK ( clock ) , 
    .Q ( Rpipe[7] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[6] ( .D ( R[6] ) , .CK ( clock ) , 
    .Q ( Rpipe[6] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[5] ( .D ( R[5] ) , .CK ( clock ) , 
    .Q ( Rpipe[5] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[1] ( .D ( R[1] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[1] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( N33 ) , .X ( n3 ) ) ;
PE_9_DW01_add_0 add_52 (
    .A ( { SYNOPSYS_UNCONNECTED_1 , Accumulate[7] , Accumulate[6] , 
        Accumulate[5] , Accumulate[4] , Accumulate[3] , Accumulate[2] , 
        Accumulate[1] , Accumulate[0] } ) ,
    .B ( { SYNOPSYS_UNCONNECTED_2 , difference[7] , difference[6] , 
        difference[5] , difference[4] , difference[3] , difference[2] , 
        difference[1] , difference[0] } ) ,
    .SUM ( { Carry , N33 , N32 , N31 , N30 , N29 , N28 , N27 , N26 } ) ) ;
PE_9_DW01_sub_0 sub_46 ( .A ( R ) ,
    .B ( { N15 , N14 , N13 , N12 , N11 , N10 , N9 , N8 } ) ,
    .DIFF ( difference ) ) ;
SAEDSLVT14_TIE0_V1_2 U6 () ;
endmodule


module PE_9_DW01_add_0 ( A , B , CI , SUM , CO ) ;
input  [8:0] A ;
input  [8:0] B ;
input  CI ;
output [8:0] SUM ;
output CO ;

wire [7:1] carry ;

SAEDRVT14_ADDF_V1_0P5 U1_7 ( .A ( A[7] ) , .B ( B[7] ) , .CI ( carry[7] ) , 
    .CO ( SUM[8] ) , .S ( SUM[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_6 ( .A ( A[6] ) , .B ( B[6] ) , .CI ( carry[6] ) , 
    .CO ( carry[7] ) , .S ( SUM[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_5 ( .A ( A[5] ) , .B ( B[5] ) , .CI ( carry[5] ) , 
    .CO ( carry[6] ) , .S ( SUM[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_4 ( .A ( A[4] ) , .B ( B[4] ) , .CI ( carry[4] ) , 
    .CO ( carry[5] ) , .S ( SUM[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_3 ( .A ( A[3] ) , .B ( B[3] ) , .CI ( carry[3] ) , 
    .CO ( carry[4] ) , .S ( SUM[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_2 ( .A ( A[2] ) , .B ( B[2] ) , .CI ( carry[2] ) , 
    .CO ( carry[3] ) , .S ( SUM[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_1 ( .A ( A[1] ) , .B ( B[1] ) , .CI ( carry[1] ) , 
    .CO ( carry[2] ) , .S ( SUM[1] ) ) ;
SAEDRVT14_EO2_V1_0P75 U4 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .X ( SUM[0] ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_1_37 ( .A1 ( A[0] ) , .A2 ( B[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_9_DW01_sub_0 ( A , B , CI , DIFF , CO ) ;
input  [7:0] A ;
input  [7:0] B ;
input  CI ;
output [7:0] DIFF ;
output CO ;

wire [7:1] carry ;
wire [7:0] B_not ;

SAEDRVT14_ADDF_V1_0P5 U2_7 ( .A ( A[7] ) , .B ( B_not[7] ) , 
    .CI ( carry[7] ) , .S ( DIFF[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_6 ( .A ( A[6] ) , .B ( B_not[6] ) , 
    .CI ( carry[6] ) , .CO ( carry[7] ) , .S ( DIFF[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_5 ( .A ( A[5] ) , .B ( B_not[5] ) , 
    .CI ( carry[5] ) , .CO ( carry[6] ) , .S ( DIFF[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_4 ( .A ( A[4] ) , .B ( B_not[4] ) , 
    .CI ( carry[4] ) , .CO ( carry[5] ) , .S ( DIFF[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_3 ( .A ( A[3] ) , .B ( B_not[3] ) , 
    .CI ( carry[3] ) , .CO ( carry[4] ) , .S ( DIFF[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_2 ( .A ( A[2] ) , .B ( B_not[2] ) , 
    .CI ( carry[2] ) , .CO ( carry[3] ) , .S ( DIFF[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_1 ( .A ( A[1] ) , .B ( B_not[1] ) , 
    .CI ( carry[1] ) , .CO ( carry[2] ) , .S ( DIFF[1] ) ) ;
SAEDRVT14_EN2_0P5 U3 ( .A1 ( B_not[0] ) , .A2 ( A[0] ) , .X ( DIFF[0] ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( B[7] ) , .X ( B_not[7] ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( B[6] ) , .X ( B_not[6] ) ) ;
SAEDRVT14_INV_S_0P5 U6 ( .A ( B[5] ) , .X ( B_not[5] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( B[4] ) , .X ( B_not[4] ) ) ;
SAEDRVT14_INV_S_0P5 U8 ( .A ( B[3] ) , .X ( B_not[3] ) ) ;
SAEDRVT14_INV_S_0P5 U9 ( .A ( B[2] ) , .X ( B_not[2] ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( B[1] ) , .X ( B_not[1] ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( B[0] ) , .X ( B_not[0] ) ) ;
SAEDRVT14_OR2_0P5 ctmTdsLR_1_20 ( .A1 ( A[0] ) , .A2 ( B_not[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_8 ( clock , R , S1 , S2 , S1S2mux , newDist , Accumulate , Rpipe ) ;
input  clock ;
input  [7:0] R ;
input  [7:0] S1 ;
input  [7:0] S2 ;
input  S1S2mux ;
input  newDist ;
output [7:0] Accumulate ;
output [7:0] Rpipe ;

wire [7:0] difference ;

SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0] ( .SD ( n2 ) , .D ( Carry ) , 
    .SI ( difference[0] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[0] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7] ( .SD ( n3 ) , .D ( Carry ) , 
    .SI ( difference[7] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[7] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6] ( .SD ( n5 ) , .D ( Carry ) , 
    .SI ( difference[6] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[6] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5] ( .SD ( n6 ) , .D ( Carry ) , 
    .SI ( difference[5] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[5] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4] ( .SD ( n7 ) , .D ( Carry ) , 
    .SI ( difference[4] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[4] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3] ( .SD ( n8 ) , .D ( Carry ) , 
    .SI ( difference[3] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[3] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2] ( .SD ( n11 ) , 
    .D ( Carry ) , .SI ( difference[2] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[2] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1] ( .SD ( n12 ) , 
    .D ( Carry ) , .SI ( difference[1] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[1] ) ) ;
SAEDRVT14_INV_S_0P5 U3 ( .A ( N27 ) , .X ( n12 ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( N28 ) , .X ( n11 ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( N29 ) , .X ( n8 ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( N30 ) , .X ( n7 ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( N31 ) , .X ( n6 ) ) ;
SAEDRVT14_INV_S_0P5 U12 ( .A ( N32 ) , .X ( n5 ) ) ;
SAEDRVT14_INV_S_0P5 U14 ( .A ( N26 ) , .X ( n2 ) ) ;
SAEDRVT14_AO22_0P75 U15 ( .A1 ( S1[1] ) , .A2 ( S1S2mux ) , .B1 ( S2[1] ) , 
    .B2 ( n1 ) , .X ( N9 ) ) ;
SAEDRVT14_AO22_0P75 U16 ( .A1 ( S1[0] ) , .A2 ( S1S2mux ) , .B1 ( S2[0] ) , 
    .B2 ( n1 ) , .X ( N8 ) ) ;
SAEDRVT14_AO22_0P75 U17 ( .A1 ( S1[7] ) , .A2 ( S1S2mux ) , .B1 ( S2[7] ) , 
    .B2 ( n1 ) , .X ( N15 ) ) ;
SAEDRVT14_AO22_0P75 U18 ( .A1 ( S1[6] ) , .A2 ( S1S2mux ) , .B1 ( S2[6] ) , 
    .B2 ( n1 ) , .X ( N14 ) ) ;
SAEDRVT14_AO22_0P75 U19 ( .A1 ( S1[5] ) , .A2 ( S1S2mux ) , .B1 ( S2[5] ) , 
    .B2 ( n1 ) , .X ( N13 ) ) ;
SAEDRVT14_AO22_0P75 U20 ( .A1 ( S1[4] ) , .A2 ( S1S2mux ) , .B1 ( S2[4] ) , 
    .B2 ( n1 ) , .X ( N12 ) ) ;
SAEDRVT14_AO22_0P75 U21 ( .A1 ( S1[3] ) , .A2 ( S1S2mux ) , .B1 ( S2[3] ) , 
    .B2 ( n1 ) , .X ( N11 ) ) ;
SAEDRVT14_AO22_0P75 U22 ( .A1 ( S1[2] ) , .A2 ( S1S2mux ) , .B1 ( S2[2] ) , 
    .B2 ( n1 ) , .X ( N10 ) ) ;
SAEDRVT14_INV_S_0P5 U23 ( .A ( S1S2mux ) , .X ( n1 ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[0] ( .D ( R[0] ) , .CK ( clock ) , 
    .Q ( Rpipe[0] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[2] ( .D ( R[2] ) , .CK ( clock ) , 
    .Q ( Rpipe[2] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[3] ( .D ( R[3] ) , .CK ( clock ) , 
    .Q ( Rpipe[3] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[7] ( .D ( R[7] ) , .CK ( clock ) , 
    .Q ( Rpipe[7] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[1] ( .D ( R[1] ) , .CK ( clock ) , 
    .Q ( Rpipe[1] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[5] ( .D ( R[5] ) , .CK ( clock ) , 
    .Q ( Rpipe[5] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[6] ( .D ( R[6] ) , .CK ( clock ) , 
    .Q ( Rpipe[6] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[4] ( .D ( R[4] ) , .CK ( clock ) , 
    .Q ( Rpipe[4] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( N33 ) , .X ( n3 ) ) ;
PE_8_DW01_add_0 add_52 (
    .A ( { SYNOPSYS_UNCONNECTED_1 , Accumulate[7] , Accumulate[6] , 
        Accumulate[5] , Accumulate[4] , Accumulate[3] , Accumulate[2] , 
        Accumulate[1] , Accumulate[0] } ) ,
    .B ( { SYNOPSYS_UNCONNECTED_2 , difference[7] , difference[6] , 
        difference[5] , difference[4] , difference[3] , difference[2] , 
        difference[1] , difference[0] } ) ,
    .SUM ( { Carry , N33 , N32 , N31 , N30 , N29 , N28 , N27 , N26 } ) ) ;
PE_8_DW01_sub_0 sub_46 ( .A ( R ) ,
    .B ( { N15 , N14 , N13 , N12 , N11 , N10 , N9 , N8 } ) ,
    .DIFF ( difference ) ) ;
SAEDSLVT14_TIE0_V1_2 U6 () ;
endmodule


module PE_8_DW01_add_0 ( A , B , CI , SUM , CO ) ;
input  [8:0] A ;
input  [8:0] B ;
input  CI ;
output [8:0] SUM ;
output CO ;

wire [7:1] carry ;

SAEDRVT14_ADDF_V1_0P5 U1_7 ( .A ( A[7] ) , .B ( B[7] ) , .CI ( carry[7] ) , 
    .CO ( SUM[8] ) , .S ( SUM[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_6 ( .A ( A[6] ) , .B ( B[6] ) , .CI ( carry[6] ) , 
    .CO ( carry[7] ) , .S ( SUM[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_5 ( .A ( A[5] ) , .B ( B[5] ) , .CI ( carry[5] ) , 
    .CO ( carry[6] ) , .S ( SUM[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_4 ( .A ( A[4] ) , .B ( B[4] ) , .CI ( carry[4] ) , 
    .CO ( carry[5] ) , .S ( SUM[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_3 ( .A ( A[3] ) , .B ( B[3] ) , .CI ( carry[3] ) , 
    .CO ( carry[4] ) , .S ( SUM[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_2 ( .A ( A[2] ) , .B ( B[2] ) , .CI ( carry[2] ) , 
    .CO ( carry[3] ) , .S ( SUM[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_1 ( .A ( A[1] ) , .B ( B[1] ) , .CI ( carry[1] ) , 
    .CO ( carry[2] ) , .S ( SUM[1] ) ) ;
SAEDRVT14_EO2_V1_0P75 U4 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .X ( SUM[0] ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_1_38 ( .A1 ( A[0] ) , .A2 ( B[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_8_DW01_sub_0 ( A , B , CI , DIFF , CO ) ;
input  [7:0] A ;
input  [7:0] B ;
input  CI ;
output [7:0] DIFF ;
output CO ;

wire [7:1] carry ;
wire [7:0] B_not ;

SAEDRVT14_ADDF_V1_0P5 U2_7 ( .A ( A[7] ) , .B ( B_not[7] ) , 
    .CI ( carry[7] ) , .S ( DIFF[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_6 ( .A ( A[6] ) , .B ( B_not[6] ) , 
    .CI ( carry[6] ) , .CO ( carry[7] ) , .S ( DIFF[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_5 ( .A ( A[5] ) , .B ( B_not[5] ) , 
    .CI ( carry[5] ) , .CO ( carry[6] ) , .S ( DIFF[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_4 ( .A ( A[4] ) , .B ( B_not[4] ) , 
    .CI ( carry[4] ) , .CO ( carry[5] ) , .S ( DIFF[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_3 ( .A ( A[3] ) , .B ( B_not[3] ) , 
    .CI ( carry[3] ) , .CO ( carry[4] ) , .S ( DIFF[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_2 ( .A ( A[2] ) , .B ( B_not[2] ) , 
    .CI ( carry[2] ) , .CO ( carry[3] ) , .S ( DIFF[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_1 ( .A ( A[1] ) , .B ( B_not[1] ) , 
    .CI ( carry[1] ) , .CO ( carry[2] ) , .S ( DIFF[1] ) ) ;
SAEDRVT14_EN2_0P5 U3 ( .A1 ( B_not[0] ) , .A2 ( A[0] ) , .X ( DIFF[0] ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( B[7] ) , .X ( B_not[7] ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( B[6] ) , .X ( B_not[6] ) ) ;
SAEDRVT14_INV_S_0P5 U6 ( .A ( B[5] ) , .X ( B_not[5] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( B[4] ) , .X ( B_not[4] ) ) ;
SAEDRVT14_INV_S_0P5 U8 ( .A ( B[3] ) , .X ( B_not[3] ) ) ;
SAEDRVT14_INV_S_0P5 U9 ( .A ( B[2] ) , .X ( B_not[2] ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( B[1] ) , .X ( B_not[1] ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( B[0] ) , .X ( B_not[0] ) ) ;
SAEDRVT14_OR2_MM_0P5 ctmTdsLR_1_21 ( .A1 ( A[0] ) , .A2 ( B_not[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_7 ( clock , R , S1 , S2 , S1S2mux , newDist , Accumulate , Rpipe , 
    ZCTSNET_0 ) ;
input  clock ;
input  [7:0] R ;
input  [7:0] S1 ;
input  [7:0] S2 ;
input  S1S2mux ;
input  newDist ;
output [7:0] Accumulate ;
output [7:0] Rpipe ;
input  ZCTSNET_0 ;

wire [7:0] difference ;

SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0] ( .SD ( n2 ) , .D ( Carry ) , 
    .SI ( difference[0] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[0] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7] ( .SD ( n3 ) , .D ( Carry ) , 
    .SI ( difference[7] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[7] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6] ( .SD ( n5 ) , .D ( Carry ) , 
    .SI ( difference[6] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[6] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5] ( .SD ( n6 ) , .D ( Carry ) , 
    .SI ( difference[5] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[5] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4] ( .SD ( n7 ) , .D ( Carry ) , 
    .SI ( difference[4] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[4] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3] ( .SD ( n8 ) , .D ( Carry ) , 
    .SI ( difference[3] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[3] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2] ( .SD ( n11 ) , 
    .D ( Carry ) , .SI ( difference[2] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_0 ) , .Q ( Accumulate[2] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1] ( .SD ( n12 ) , 
    .D ( Carry ) , .SI ( difference[1] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_0 ) , .Q ( Accumulate[1] ) ) ;
SAEDRVT14_INV_S_0P5 U3 ( .A ( N27 ) , .X ( n12 ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( N28 ) , .X ( n11 ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( N29 ) , .X ( n8 ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( N30 ) , .X ( n7 ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( N31 ) , .X ( n6 ) ) ;
SAEDRVT14_INV_S_0P5 U12 ( .A ( N32 ) , .X ( n5 ) ) ;
SAEDRVT14_INV_S_0P5 U13 ( .A ( N33 ) , .X ( n3 ) ) ;
SAEDRVT14_INV_S_0P5 U14 ( .A ( N26 ) , .X ( n2 ) ) ;
SAEDRVT14_AO22_0P75 U15 ( .A1 ( S1[1] ) , .A2 ( S1S2mux ) , .B1 ( S2[1] ) , 
    .B2 ( n1 ) , .X ( N9 ) ) ;
SAEDRVT14_AO22_0P75 U16 ( .A1 ( S1[0] ) , .A2 ( S1S2mux ) , .B1 ( S2[0] ) , 
    .B2 ( n1 ) , .X ( N8 ) ) ;
SAEDRVT14_AO22_0P75 U17 ( .A1 ( S1[7] ) , .A2 ( S1S2mux ) , .B1 ( S2[7] ) , 
    .B2 ( n1 ) , .X ( N15 ) ) ;
SAEDRVT14_AO22_0P75 U18 ( .A1 ( S1[6] ) , .A2 ( S1S2mux ) , .B1 ( S2[6] ) , 
    .B2 ( n1 ) , .X ( N14 ) ) ;
SAEDRVT14_AO22_0P75 U19 ( .A1 ( S1[5] ) , .A2 ( S1S2mux ) , .B1 ( S2[5] ) , 
    .B2 ( n1 ) , .X ( N13 ) ) ;
SAEDRVT14_AO22_0P75 U20 ( .A1 ( S1[4] ) , .A2 ( S1S2mux ) , .B1 ( S2[4] ) , 
    .B2 ( n1 ) , .X ( N12 ) ) ;
SAEDRVT14_AO22_0P75 U21 ( .A1 ( S1[3] ) , .A2 ( S1S2mux ) , .B1 ( S2[3] ) , 
    .B2 ( n1 ) , .X ( N11 ) ) ;
SAEDRVT14_AO22_0P75 U22 ( .A1 ( S1[2] ) , .A2 ( S1S2mux ) , .B1 ( S2[2] ) , 
    .B2 ( n1 ) , .X ( N10 ) ) ;
SAEDRVT14_INV_S_0P5 U23 ( .A ( S1S2mux ) , .X ( n1 ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[5] ( .D ( R[5] ) , .CK ( clock ) , 
    .Q ( Rpipe[5] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[3] ( .D ( R[3] ) , .CK ( clock ) , 
    .Q ( Rpipe[3] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[0] ( .D ( R[0] ) , .CK ( clock ) , 
    .Q ( Rpipe[0] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[2] ( .D ( R[2] ) , .CK ( clock ) , 
    .Q ( Rpipe[2] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[6] ( .D ( R[6] ) , .CK ( clock ) , 
    .Q ( Rpipe[6] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[4] ( .D ( R[4] ) , .CK ( clock ) , 
    .Q ( Rpipe[4] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[1] ( .D ( R[1] ) , .CK ( clock ) , 
    .Q ( Rpipe[1] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[7] ( .D ( R[7] ) , .CK ( clock ) , 
    .Q ( Rpipe[7] ) ) ;
PE_7_DW01_add_0 add_52 (
    .A ( { SYNOPSYS_UNCONNECTED_1 , Accumulate[7] , Accumulate[6] , 
        Accumulate[5] , Accumulate[4] , Accumulate[3] , Accumulate[2] , 
        Accumulate[1] , Accumulate[0] } ) ,
    .B ( { SYNOPSYS_UNCONNECTED_2 , difference[7] , difference[6] , 
        difference[5] , difference[4] , difference[3] , difference[2] , 
        difference[1] , difference[0] } ) ,
    .SUM ( { Carry , N33 , N32 , N31 , N30 , N29 , N28 , N27 , N26 } ) ) ;
PE_7_DW01_sub_0 sub_46 ( .A ( R ) ,
    .B ( { N15 , N14 , N13 , N12 , N11 , N10 , N9 , N8 } ) ,
    .DIFF ( difference ) ) ;
SAEDSLVT14_TIE0_V1_2 U6 () ;
endmodule


module PE_7_DW01_add_0 ( A , B , CI , SUM , CO ) ;
input  [8:0] A ;
input  [8:0] B ;
input  CI ;
output [8:0] SUM ;
output CO ;

wire [7:1] carry ;

SAEDRVT14_ADDF_V1_0P5 U1_7 ( .A ( A[7] ) , .B ( B[7] ) , .CI ( carry[7] ) , 
    .CO ( SUM[8] ) , .S ( SUM[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_6 ( .A ( A[6] ) , .B ( B[6] ) , .CI ( carry[6] ) , 
    .CO ( carry[7] ) , .S ( SUM[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_5 ( .A ( A[5] ) , .B ( B[5] ) , .CI ( carry[5] ) , 
    .CO ( carry[6] ) , .S ( SUM[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_4 ( .A ( A[4] ) , .B ( B[4] ) , .CI ( carry[4] ) , 
    .CO ( carry[5] ) , .S ( SUM[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_3 ( .A ( A[3] ) , .B ( B[3] ) , .CI ( carry[3] ) , 
    .CO ( carry[4] ) , .S ( SUM[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_2 ( .A ( A[2] ) , .B ( B[2] ) , .CI ( carry[2] ) , 
    .CO ( carry[3] ) , .S ( SUM[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_1 ( .A ( A[1] ) , .B ( B[1] ) , .CI ( carry[1] ) , 
    .CO ( carry[2] ) , .S ( SUM[1] ) ) ;
SAEDRVT14_EO2_V1_0P75 U4 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .X ( SUM[0] ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_1_39 ( .A1 ( A[0] ) , .A2 ( B[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_7_DW01_sub_0 ( A , B , CI , DIFF , CO ) ;
input  [7:0] A ;
input  [7:0] B ;
input  CI ;
output [7:0] DIFF ;
output CO ;

wire [7:1] carry ;
wire [7:0] B_not ;

SAEDRVT14_ADDF_V1_0P5 U2_7 ( .A ( A[7] ) , .B ( B_not[7] ) , 
    .CI ( carry[7] ) , .S ( DIFF[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_6 ( .A ( A[6] ) , .B ( B_not[6] ) , 
    .CI ( carry[6] ) , .CO ( carry[7] ) , .S ( DIFF[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_5 ( .A ( A[5] ) , .B ( B_not[5] ) , 
    .CI ( carry[5] ) , .CO ( carry[6] ) , .S ( DIFF[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_4 ( .A ( A[4] ) , .B ( B_not[4] ) , 
    .CI ( carry[4] ) , .CO ( carry[5] ) , .S ( DIFF[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_3 ( .A ( A[3] ) , .B ( B_not[3] ) , 
    .CI ( carry[3] ) , .CO ( carry[4] ) , .S ( DIFF[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_2 ( .A ( A[2] ) , .B ( B_not[2] ) , 
    .CI ( carry[2] ) , .CO ( carry[3] ) , .S ( DIFF[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_1 ( .A ( A[1] ) , .B ( B_not[1] ) , 
    .CI ( carry[1] ) , .CO ( carry[2] ) , .S ( DIFF[1] ) ) ;
SAEDRVT14_EN2_0P5 U3 ( .A1 ( B_not[0] ) , .A2 ( A[0] ) , .X ( DIFF[0] ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( B[7] ) , .X ( B_not[7] ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( B[6] ) , .X ( B_not[6] ) ) ;
SAEDRVT14_INV_S_0P5 U6 ( .A ( B[5] ) , .X ( B_not[5] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( B[4] ) , .X ( B_not[4] ) ) ;
SAEDRVT14_INV_S_0P5 U8 ( .A ( B[3] ) , .X ( B_not[3] ) ) ;
SAEDRVT14_INV_S_0P5 U9 ( .A ( B[2] ) , .X ( B_not[2] ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( B[1] ) , .X ( B_not[1] ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( B[0] ) , .X ( B_not[0] ) ) ;
SAEDRVT14_OR2_0P5 ctmTdsLR_1_22 ( .A1 ( A[0] ) , .A2 ( B_not[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_6 ( clock , R , S1 , S2 , S1S2mux , newDist , Accumulate , Rpipe , 
    ZCTSNET_0 , ZCTSNET_1 ) ;
input  clock ;
input  [7:0] R ;
input  [7:0] S1 ;
input  [7:0] S2 ;
input  S1S2mux ;
input  newDist ;
output [7:0] Accumulate ;
output [7:0] Rpipe ;
input  ZCTSNET_0 ;
input  ZCTSNET_1 ;

wire [7:0] difference ;

SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0] ( .SD ( n2 ) , .D ( Carry ) , 
    .SI ( difference[0] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[0] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7] ( .SD ( n3 ) , .D ( Carry ) , 
    .SI ( difference[7] ) , .SE ( newDist ) , .CK ( ZCTSNET_1 ) , 
    .Q ( Accumulate[7] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6] ( .SD ( n5 ) , .D ( Carry ) , 
    .SI ( difference[6] ) , .SE ( newDist ) , .CK ( ZCTSNET_1 ) , 
    .Q ( Accumulate[6] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5] ( .SD ( n6 ) , .D ( Carry ) , 
    .SI ( difference[5] ) , .SE ( newDist ) , .CK ( ZCTSNET_1 ) , 
    .Q ( Accumulate[5] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4] ( .SD ( n7 ) , .D ( Carry ) , 
    .SI ( difference[4] ) , .SE ( newDist ) , .CK ( ZCTSNET_1 ) , 
    .Q ( Accumulate[4] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3] ( .SD ( n8 ) , .D ( Carry ) , 
    .SI ( difference[3] ) , .SE ( newDist ) , .CK ( ZCTSNET_1 ) , 
    .Q ( Accumulate[3] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2] ( .SD ( n11 ) , 
    .D ( Carry ) , .SI ( difference[2] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_1 ) , .Q ( Accumulate[2] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1] ( .SD ( n12 ) , 
    .D ( Carry ) , .SI ( difference[1] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_1 ) , .Q ( Accumulate[1] ) ) ;
SAEDRVT14_INV_S_0P5 U3 ( .A ( N27 ) , .X ( n12 ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( N28 ) , .X ( n11 ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( N29 ) , .X ( n8 ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( N30 ) , .X ( n7 ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( N31 ) , .X ( n6 ) ) ;
SAEDRVT14_INV_S_0P5 U12 ( .A ( N32 ) , .X ( n5 ) ) ;
SAEDRVT14_INV_S_0P5 U14 ( .A ( N26 ) , .X ( n2 ) ) ;
SAEDRVT14_AO22_0P5 U15 ( .A1 ( S1[1] ) , .A2 ( S1S2mux ) , .B1 ( S2[1] ) , 
    .B2 ( n1 ) , .X ( N9 ) ) ;
SAEDRVT14_AO22_0P75 U16 ( .A1 ( S1[0] ) , .A2 ( S1S2mux ) , .B1 ( S2[0] ) , 
    .B2 ( n1 ) , .X ( N8 ) ) ;
SAEDRVT14_AO22_0P75 U17 ( .A1 ( S1[7] ) , .A2 ( S1S2mux ) , .B1 ( S2[7] ) , 
    .B2 ( n1 ) , .X ( N15 ) ) ;
SAEDRVT14_AO22_0P75 U18 ( .A1 ( S1[6] ) , .A2 ( S1S2mux ) , .B1 ( S2[6] ) , 
    .B2 ( n1 ) , .X ( N14 ) ) ;
SAEDRVT14_AO22_0P75 U19 ( .A1 ( S1[5] ) , .A2 ( S1S2mux ) , .B1 ( S2[5] ) , 
    .B2 ( n1 ) , .X ( N13 ) ) ;
SAEDRVT14_AO22_0P75 U20 ( .A1 ( S1[4] ) , .A2 ( S1S2mux ) , .B1 ( S2[4] ) , 
    .B2 ( n1 ) , .X ( N12 ) ) ;
SAEDRVT14_AO22_0P75 U21 ( .A1 ( S1[3] ) , .A2 ( S1S2mux ) , .B1 ( S2[3] ) , 
    .B2 ( n1 ) , .X ( N11 ) ) ;
SAEDRVT14_AO22_0P75 U22 ( .A1 ( S1[2] ) , .A2 ( S1S2mux ) , .B1 ( S2[2] ) , 
    .B2 ( n1 ) , .X ( N10 ) ) ;
SAEDRVT14_INV_S_0P5 U23 ( .A ( S1S2mux ) , .X ( n1 ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[4] ( .D ( R[4] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[4] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[0] ( .D ( R[0] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[0] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[2] ( .D ( R[2] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[2] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[3] ( .D ( R[3] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[3] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[7] ( .D ( R[7] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[7] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[1] ( .D ( R[1] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[1] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[6] ( .D ( R[6] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[6] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[5] ( .D ( R[5] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[5] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( N33 ) , .X ( n3 ) ) ;
PE_6_DW01_add_0 add_52 (
    .A ( { SYNOPSYS_UNCONNECTED_1 , Accumulate[7] , Accumulate[6] , 
        Accumulate[5] , Accumulate[4] , Accumulate[3] , Accumulate[2] , 
        Accumulate[1] , Accumulate[0] } ) ,
    .B ( { SYNOPSYS_UNCONNECTED_2 , difference[7] , difference[6] , 
        difference[5] , difference[4] , difference[3] , difference[2] , 
        difference[1] , difference[0] } ) ,
    .SUM ( { Carry , N33 , N32 , N31 , N30 , N29 , N28 , N27 , N26 } ) ) ;
PE_6_DW01_sub_0 sub_46 ( .A ( R ) ,
    .B ( { N15 , N14 , N13 , N12 , N11 , N10 , N9 , N8 } ) ,
    .DIFF ( difference ) ) ;
SAEDSLVT14_TIE0_V1_2 U6 () ;
endmodule


module PE_6_DW01_add_0 ( A , B , CI , SUM , CO ) ;
input  [8:0] A ;
input  [8:0] B ;
input  CI ;
output [8:0] SUM ;
output CO ;

wire [7:1] carry ;

SAEDRVT14_ADDF_V1_0P5 U1_7 ( .A ( A[7] ) , .B ( B[7] ) , .CI ( carry[7] ) , 
    .CO ( SUM[8] ) , .S ( SUM[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_6 ( .A ( A[6] ) , .B ( B[6] ) , .CI ( carry[6] ) , 
    .CO ( carry[7] ) , .S ( SUM[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_5 ( .A ( A[5] ) , .B ( B[5] ) , .CI ( carry[5] ) , 
    .CO ( carry[6] ) , .S ( SUM[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_4 ( .A ( A[4] ) , .B ( B[4] ) , .CI ( carry[4] ) , 
    .CO ( carry[5] ) , .S ( SUM[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_3 ( .A ( A[3] ) , .B ( B[3] ) , .CI ( carry[3] ) , 
    .CO ( carry[4] ) , .S ( SUM[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_2 ( .A ( A[2] ) , .B ( B[2] ) , .CI ( carry[2] ) , 
    .CO ( carry[3] ) , .S ( SUM[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_1 ( .A ( A[1] ) , .B ( B[1] ) , .CI ( carry[1] ) , 
    .CO ( carry[2] ) , .S ( SUM[1] ) ) ;
SAEDRVT14_EO2_V1_0P75 U4 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .X ( SUM[0] ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_1_40 ( .A1 ( A[0] ) , .A2 ( B[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_6_DW01_sub_0 ( A , B , CI , DIFF , CO ) ;
input  [7:0] A ;
input  [7:0] B ;
input  CI ;
output [7:0] DIFF ;
output CO ;

wire [7:1] carry ;
wire [7:0] B_not ;

SAEDRVT14_ADDF_V1_0P5 U2_7 ( .A ( A[7] ) , .B ( B_not[7] ) , 
    .CI ( carry[7] ) , .S ( DIFF[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_6 ( .A ( A[6] ) , .B ( B_not[6] ) , 
    .CI ( carry[6] ) , .CO ( carry[7] ) , .S ( DIFF[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_5 ( .A ( A[5] ) , .B ( B_not[5] ) , 
    .CI ( carry[5] ) , .CO ( carry[6] ) , .S ( DIFF[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_4 ( .A ( A[4] ) , .B ( B_not[4] ) , 
    .CI ( carry[4] ) , .CO ( carry[5] ) , .S ( DIFF[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_3 ( .A ( A[3] ) , .B ( B_not[3] ) , 
    .CI ( carry[3] ) , .CO ( carry[4] ) , .S ( DIFF[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_2 ( .A ( A[2] ) , .B ( B_not[2] ) , 
    .CI ( carry[2] ) , .CO ( carry[3] ) , .S ( DIFF[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_1 ( .A ( A[1] ) , .B ( B_not[1] ) , 
    .CI ( carry[1] ) , .CO ( carry[2] ) , .S ( DIFF[1] ) ) ;
SAEDRVT14_EN2_0P5 U3 ( .A1 ( B_not[0] ) , .A2 ( A[0] ) , .X ( DIFF[0] ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( B[7] ) , .X ( B_not[7] ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( B[6] ) , .X ( B_not[6] ) ) ;
SAEDRVT14_INV_S_0P5 U6 ( .A ( B[5] ) , .X ( B_not[5] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( B[4] ) , .X ( B_not[4] ) ) ;
SAEDRVT14_INV_S_0P5 U8 ( .A ( B[3] ) , .X ( B_not[3] ) ) ;
SAEDRVT14_INV_S_0P5 U9 ( .A ( B[2] ) , .X ( B_not[2] ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( B[1] ) , .X ( B_not[1] ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( B[0] ) , .X ( B_not[0] ) ) ;
SAEDRVT14_OR2_MM_0P5 ctmTdsLR_1_23 ( .A1 ( A[0] ) , .A2 ( B_not[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_5 ( clock , R , S1 , S2 , S1S2mux , newDist , Accumulate , Rpipe , 
    ZCTSNET_0 ) ;
input  clock ;
input  [7:0] R ;
input  [7:0] S1 ;
input  [7:0] S2 ;
input  S1S2mux ;
input  newDist ;
output [7:0] Accumulate ;
output [7:0] Rpipe ;
input  ZCTSNET_0 ;

wire [7:0] difference ;

SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0] ( .SD ( n2 ) , .D ( Carry ) , 
    .SI ( difference[0] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[0] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7] ( .SD ( n3 ) , .D ( Carry ) , 
    .SI ( difference[7] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[7] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6] ( .SD ( n5 ) , .D ( Carry ) , 
    .SI ( difference[6] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[6] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5] ( .SD ( n6 ) , .D ( Carry ) , 
    .SI ( difference[5] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[5] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4] ( .SD ( n7 ) , .D ( Carry ) , 
    .SI ( difference[4] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[4] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3] ( .SD ( n8 ) , .D ( Carry ) , 
    .SI ( difference[3] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[3] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2] ( .SD ( n11 ) , 
    .D ( Carry ) , .SI ( difference[2] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[2] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1] ( .SD ( n12 ) , 
    .D ( Carry ) , .SI ( difference[1] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[1] ) ) ;
SAEDRVT14_INV_S_0P5 U3 ( .A ( N27 ) , .X ( n12 ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( N28 ) , .X ( n11 ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( N29 ) , .X ( n8 ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( N30 ) , .X ( n7 ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( N31 ) , .X ( n6 ) ) ;
SAEDRVT14_INV_S_0P5 U12 ( .A ( N32 ) , .X ( n5 ) ) ;
SAEDRVT14_INV_S_0P5 U13 ( .A ( N33 ) , .X ( n3 ) ) ;
SAEDRVT14_INV_S_0P5 U14 ( .A ( N26 ) , .X ( n2 ) ) ;
SAEDRVT14_AO22_0P75 U15 ( .A1 ( S1[1] ) , .A2 ( S1S2mux ) , .B1 ( S2[1] ) , 
    .B2 ( n1 ) , .X ( N9 ) ) ;
SAEDRVT14_AO22_0P75 U16 ( .A1 ( S1[0] ) , .A2 ( S1S2mux ) , .B1 ( S2[0] ) , 
    .B2 ( n1 ) , .X ( N8 ) ) ;
SAEDRVT14_AO22_0P75 U18 ( .A1 ( S1[6] ) , .A2 ( S1S2mux ) , .B1 ( S2[6] ) , 
    .B2 ( n1 ) , .X ( N14 ) ) ;
SAEDRVT14_AO22_0P75 U19 ( .A1 ( S1[5] ) , .A2 ( S1S2mux ) , .B1 ( S2[5] ) , 
    .B2 ( n1 ) , .X ( N13 ) ) ;
SAEDRVT14_AO22_0P75 U20 ( .A1 ( S1[4] ) , .A2 ( S1S2mux ) , .B1 ( S2[4] ) , 
    .B2 ( n1 ) , .X ( N12 ) ) ;
SAEDRVT14_AO22_0P75 U21 ( .A1 ( S1[3] ) , .A2 ( S1S2mux ) , .B1 ( S2[3] ) , 
    .B2 ( n1 ) , .X ( N11 ) ) ;
SAEDRVT14_AO22_0P75 U22 ( .A1 ( S1[2] ) , .A2 ( S1S2mux ) , .B1 ( S2[2] ) , 
    .B2 ( n1 ) , .X ( N10 ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[6] ( .D ( R[6] ) , .CK ( clock ) , 
    .Q ( Rpipe[6] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[4] ( .D ( R[4] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[4] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[0] ( .D ( R[0] ) , .CK ( clock ) , 
    .Q ( Rpipe[0] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[2] ( .D ( R[2] ) , .CK ( clock ) , 
    .Q ( Rpipe[2] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[7] ( .D ( R[7] ) , .CK ( clock ) , 
    .Q ( Rpipe[7] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[5] ( .D ( R[5] ) , .CK ( clock ) , 
    .Q ( Rpipe[5] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[3] ( .D ( R[3] ) , .CK ( clock ) , 
    .Q ( Rpipe[3] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[1] ( .D ( R[1] ) , .CK ( clock ) , 
    .Q ( Rpipe[1] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( S1S2mux ) , .X ( n1 ) ) ;
SAEDRVT14_AO22_0P5 U8 ( .A1 ( S1[7] ) , .A2 ( S1S2mux ) , .B1 ( S2[7] ) , 
    .B2 ( n1 ) , .X ( N15 ) ) ;
PE_5_DW01_add_0 add_52 (
    .A ( { SYNOPSYS_UNCONNECTED_1 , Accumulate[7] , Accumulate[6] , 
        Accumulate[5] , Accumulate[4] , Accumulate[3] , Accumulate[2] , 
        Accumulate[1] , Accumulate[0] } ) ,
    .B ( { SYNOPSYS_UNCONNECTED_2 , difference[7] , difference[6] , 
        difference[5] , difference[4] , difference[3] , difference[2] , 
        difference[1] , difference[0] } ) ,
    .SUM ( { Carry , N33 , N32 , N31 , N30 , N29 , N28 , N27 , N26 } ) ) ;
PE_5_DW01_sub_0 sub_46 ( .A ( R ) ,
    .B ( { N15 , N14 , N13 , N12 , N11 , N10 , N9 , N8 } ) ,
    .DIFF ( difference ) ) ;
SAEDSLVT14_TIE0_V1_2 U6 () ;
endmodule


module PE_5_DW01_add_0 ( A , B , CI , SUM , CO ) ;
input  [8:0] A ;
input  [8:0] B ;
input  CI ;
output [8:0] SUM ;
output CO ;

wire [7:1] carry ;

SAEDRVT14_ADDF_V1_0P5 U1_7 ( .A ( A[7] ) , .B ( B[7] ) , .CI ( carry[7] ) , 
    .CO ( SUM[8] ) , .S ( SUM[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_6 ( .A ( A[6] ) , .B ( B[6] ) , .CI ( carry[6] ) , 
    .CO ( carry[7] ) , .S ( SUM[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_5 ( .A ( A[5] ) , .B ( B[5] ) , .CI ( carry[5] ) , 
    .CO ( carry[6] ) , .S ( SUM[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_4 ( .A ( A[4] ) , .B ( B[4] ) , .CI ( carry[4] ) , 
    .CO ( carry[5] ) , .S ( SUM[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_3 ( .A ( A[3] ) , .B ( B[3] ) , .CI ( carry[3] ) , 
    .CO ( carry[4] ) , .S ( SUM[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_2 ( .A ( A[2] ) , .B ( B[2] ) , .CI ( carry[2] ) , 
    .CO ( carry[3] ) , .S ( SUM[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_1 ( .A ( A[1] ) , .B ( B[1] ) , .CI ( carry[1] ) , 
    .CO ( carry[2] ) , .S ( SUM[1] ) ) ;
SAEDRVT14_EO2_V1_0P75 U4 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .X ( SUM[0] ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_1_41 ( .A1 ( A[0] ) , .A2 ( B[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_5_DW01_sub_0 ( A , B , CI , DIFF , CO ) ;
input  [7:0] A ;
input  [7:0] B ;
input  CI ;
output [7:0] DIFF ;
output CO ;

wire [7:1] carry ;
wire [7:0] B_not ;

SAEDRVT14_ADDF_V1_0P5 U2_7 ( .A ( A[7] ) , .B ( B_not[7] ) , 
    .CI ( carry[7] ) , .S ( DIFF[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_6 ( .A ( A[6] ) , .B ( B_not[6] ) , 
    .CI ( carry[6] ) , .CO ( carry[7] ) , .S ( DIFF[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_5 ( .A ( A[5] ) , .B ( B_not[5] ) , 
    .CI ( carry[5] ) , .CO ( carry[6] ) , .S ( DIFF[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_4 ( .A ( A[4] ) , .B ( B_not[4] ) , 
    .CI ( carry[4] ) , .CO ( carry[5] ) , .S ( DIFF[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_3 ( .A ( A[3] ) , .B ( B_not[3] ) , 
    .CI ( carry[3] ) , .CO ( carry[4] ) , .S ( DIFF[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_2 ( .A ( A[2] ) , .B ( B_not[2] ) , 
    .CI ( carry[2] ) , .CO ( carry[3] ) , .S ( DIFF[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_1 ( .A ( A[1] ) , .B ( B_not[1] ) , 
    .CI ( carry[1] ) , .CO ( carry[2] ) , .S ( DIFF[1] ) ) ;
SAEDRVT14_EN2_0P5 U3 ( .A1 ( B_not[0] ) , .A2 ( A[0] ) , .X ( DIFF[0] ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( B[7] ) , .X ( B_not[7] ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( B[6] ) , .X ( B_not[6] ) ) ;
SAEDRVT14_INV_S_0P5 U6 ( .A ( B[5] ) , .X ( B_not[5] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( B[4] ) , .X ( B_not[4] ) ) ;
SAEDRVT14_INV_S_0P5 U8 ( .A ( B[3] ) , .X ( B_not[3] ) ) ;
SAEDRVT14_INV_S_0P5 U9 ( .A ( B[2] ) , .X ( B_not[2] ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( B[1] ) , .X ( B_not[1] ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( B[0] ) , .X ( B_not[0] ) ) ;
SAEDRVT14_OR2_0P5 ctmTdsLR_1_24 ( .A1 ( A[0] ) , .A2 ( B_not[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_4 ( clock , R , S1 , S2 , S1S2mux , newDist , Accumulate , Rpipe , 
    ZCTSNET_0 , ZCTSNET_1 ) ;
input  clock ;
input  [7:0] R ;
input  [7:0] S1 ;
input  [7:0] S2 ;
input  S1S2mux ;
input  newDist ;
output [7:0] Accumulate ;
output [7:0] Rpipe ;
input  ZCTSNET_0 ;
input  ZCTSNET_1 ;

wire [7:0] difference ;

SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0] ( .SD ( n5 ) , .D ( Carry ) , 
    .SI ( difference[0] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[0] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7] ( .SD ( n6 ) , .D ( Carry ) , 
    .SI ( difference[7] ) , .SE ( newDist ) , .CK ( ZCTSNET_1 ) , 
    .Q ( Accumulate[7] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6] ( .SD ( n7 ) , .D ( Carry ) , 
    .SI ( difference[6] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[6] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5] ( .SD ( n8 ) , .D ( Carry ) , 
    .SI ( difference[5] ) , .SE ( newDist ) , .CK ( ZCTSNET_1 ) , 
    .Q ( Accumulate[5] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4] ( .SD ( n13 ) , 
    .D ( Carry ) , .SI ( difference[4] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_1 ) , .Q ( Accumulate[4] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3] ( .SD ( n14 ) , 
    .D ( Carry ) , .SI ( difference[3] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_1 ) , .Q ( Accumulate[3] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2] ( .SD ( n15 ) , 
    .D ( Carry ) , .SI ( difference[2] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[2] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1] ( .SD ( n16 ) , 
    .D ( Carry ) , .SI ( difference[1] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[1] ) ) ;
SAEDRVT14_INV_S_0P5 U3 ( .A ( N27 ) , .X ( n16 ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( N28 ) , .X ( n15 ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( N29 ) , .X ( n14 ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( N30 ) , .X ( n13 ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( N31 ) , .X ( n8 ) ) ;
SAEDRVT14_INV_S_0P5 U12 ( .A ( N32 ) , .X ( n7 ) ) ;
SAEDRVT14_INV_S_0P5 U13 ( .A ( N33 ) , .X ( n6 ) ) ;
SAEDRVT14_INV_S_0P5 U14 ( .A ( N26 ) , .X ( n5 ) ) ;
SAEDRVT14_AO22_0P75 U15 ( .A1 ( S1[1] ) , .A2 ( S1S2mux ) , .B1 ( S2[1] ) , 
    .B2 ( n3 ) , .X ( N9 ) ) ;
SAEDRVT14_AO22_0P75 U16 ( .A1 ( S1[0] ) , .A2 ( S1S2mux ) , .B1 ( S2[0] ) , 
    .B2 ( n3 ) , .X ( N8 ) ) ;
SAEDRVT14_AO22_0P75 U17 ( .A1 ( S1[7] ) , .A2 ( S1S2mux ) , .B1 ( S2[7] ) , 
    .B2 ( n3 ) , .X ( N15 ) ) ;
SAEDRVT14_AO22_0P75 U18 ( .A1 ( S1[6] ) , .A2 ( S1S2mux ) , .B1 ( S2[6] ) , 
    .B2 ( n3 ) , .X ( N14 ) ) ;
SAEDRVT14_AO22_0P75 U19 ( .A1 ( S1[5] ) , .A2 ( S1S2mux ) , .B1 ( S2[5] ) , 
    .B2 ( n3 ) , .X ( N13 ) ) ;
SAEDRVT14_AO22_0P75 U20 ( .A1 ( S1[4] ) , .A2 ( S1S2mux ) , .B1 ( S2[4] ) , 
    .B2 ( n3 ) , .X ( N12 ) ) ;
SAEDRVT14_AO22_0P75 U21 ( .A1 ( S1[3] ) , .A2 ( S1S2mux ) , .B1 ( S2[3] ) , 
    .B2 ( n3 ) , .X ( N11 ) ) ;
SAEDRVT14_AO22_0P75 U22 ( .A1 ( S1[2] ) , .A2 ( S1S2mux ) , .B1 ( S2[2] ) , 
    .B2 ( n3 ) , .X ( N10 ) ) ;
SAEDRVT14_INV_S_0P5 U23 ( .A ( S1S2mux ) , .X ( n3 ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[2] ( .D ( R[2] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[2] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[1] ( .D ( R[1] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[1] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[7] ( .D ( R[7] ) , .CK ( clock ) , 
    .Q ( Rpipe[7] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[3] ( .D ( R[3] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[3] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[5] ( .D ( R[5] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[5] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[0] ( .D ( R[0] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[0] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[4] ( .D ( R[4] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[4] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[6] ( .D ( R[6] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[6] ) ) ;
PE_4_DW01_add_0 add_52 (
    .A ( { SYNOPSYS_UNCONNECTED_1 , Accumulate[7] , Accumulate[6] , 
        Accumulate[5] , Accumulate[4] , Accumulate[3] , Accumulate[2] , 
        Accumulate[1] , Accumulate[0] } ) ,
    .B ( { SYNOPSYS_UNCONNECTED_2 , difference[7] , difference[6] , 
        difference[5] , difference[4] , difference[3] , difference[2] , 
        difference[1] , difference[0] } ) ,
    .SUM ( { Carry , N33 , N32 , N31 , N30 , N29 , N28 , N27 , N26 } ) ) ;
PE_4_DW01_sub_0 sub_46 ( .A ( R ) ,
    .B ( { N15 , N14 , N13 , N12 , N11 , N10 , N9 , N8 } ) ,
    .DIFF ( difference ) ) ;
SAEDSLVT14_TIE0_V1_2 U6 () ;
endmodule


module PE_4_DW01_add_0 ( A , B , CI , SUM , CO ) ;
input  [8:0] A ;
input  [8:0] B ;
input  CI ;
output [8:0] SUM ;
output CO ;

wire [7:1] carry ;

SAEDRVT14_ADDF_V1_0P5 U1_7 ( .A ( A[7] ) , .B ( B[7] ) , .CI ( carry[7] ) , 
    .CO ( SUM[8] ) , .S ( SUM[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_6 ( .A ( A[6] ) , .B ( B[6] ) , .CI ( carry[6] ) , 
    .CO ( carry[7] ) , .S ( SUM[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_5 ( .A ( A[5] ) , .B ( B[5] ) , .CI ( carry[5] ) , 
    .CO ( carry[6] ) , .S ( SUM[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_4 ( .A ( A[4] ) , .B ( B[4] ) , .CI ( carry[4] ) , 
    .CO ( carry[5] ) , .S ( SUM[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_3 ( .A ( A[3] ) , .B ( B[3] ) , .CI ( carry[3] ) , 
    .CO ( carry[4] ) , .S ( SUM[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_2 ( .A ( A[2] ) , .B ( B[2] ) , .CI ( carry[2] ) , 
    .CO ( carry[3] ) , .S ( SUM[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_1 ( .A ( A[1] ) , .B ( B[1] ) , .CI ( carry[1] ) , 
    .CO ( carry[2] ) , .S ( SUM[1] ) ) ;
SAEDRVT14_EO2_V1_0P75 U4 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .X ( SUM[0] ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_1_42 ( .A1 ( A[0] ) , .A2 ( B[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_4_DW01_sub_0 ( A , B , CI , DIFF , CO ) ;
input  [7:0] A ;
input  [7:0] B ;
input  CI ;
output [7:0] DIFF ;
output CO ;

wire [7:1] carry ;
wire [7:0] B_not ;

SAEDRVT14_ADDF_V1_0P5 U2_7 ( .A ( A[7] ) , .B ( B_not[7] ) , 
    .CI ( carry[7] ) , .S ( DIFF[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_6 ( .A ( A[6] ) , .B ( B_not[6] ) , 
    .CI ( carry[6] ) , .CO ( carry[7] ) , .S ( DIFF[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_5 ( .A ( A[5] ) , .B ( B_not[5] ) , 
    .CI ( carry[5] ) , .CO ( carry[6] ) , .S ( DIFF[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_4 ( .A ( A[4] ) , .B ( B_not[4] ) , 
    .CI ( carry[4] ) , .CO ( carry[5] ) , .S ( DIFF[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_3 ( .A ( A[3] ) , .B ( B_not[3] ) , 
    .CI ( carry[3] ) , .CO ( carry[4] ) , .S ( DIFF[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_2 ( .A ( A[2] ) , .B ( B_not[2] ) , 
    .CI ( carry[2] ) , .CO ( carry[3] ) , .S ( DIFF[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_1 ( .A ( A[1] ) , .B ( B_not[1] ) , 
    .CI ( carry[1] ) , .CO ( carry[2] ) , .S ( DIFF[1] ) ) ;
SAEDRVT14_EN2_0P5 U3 ( .A1 ( B_not[0] ) , .A2 ( A[0] ) , .X ( DIFF[0] ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( B[7] ) , .X ( B_not[7] ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( B[6] ) , .X ( B_not[6] ) ) ;
SAEDRVT14_INV_S_0P5 U6 ( .A ( B[5] ) , .X ( B_not[5] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( B[4] ) , .X ( B_not[4] ) ) ;
SAEDRVT14_INV_S_0P5 U8 ( .A ( B[3] ) , .X ( B_not[3] ) ) ;
SAEDRVT14_INV_S_0P5 U9 ( .A ( B[2] ) , .X ( B_not[2] ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( B[1] ) , .X ( B_not[1] ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( B[0] ) , .X ( B_not[0] ) ) ;
SAEDRVT14_OR2_0P5 ctmTdsLR_1_25 ( .A1 ( A[0] ) , .A2 ( B_not[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_3 ( clock , R , S1 , S2 , S1S2mux , newDist , Accumulate , Rpipe , 
    ZCTSNET_0 , ZCTSNET_1 ) ;
input  clock ;
input  [7:0] R ;
input  [7:0] S1 ;
input  [7:0] S2 ;
input  S1S2mux ;
input  newDist ;
output [7:0] Accumulate ;
output [7:0] Rpipe ;
input  ZCTSNET_0 ;
input  ZCTSNET_1 ;

wire [7:0] difference ;

SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0] ( .SD ( n2 ) , .D ( Carry ) , 
    .SI ( difference[0] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[0] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7] ( .SD ( n3 ) , .D ( Carry ) , 
    .SI ( difference[7] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[7] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6] ( .SD ( n5 ) , .D ( Carry ) , 
    .SI ( difference[6] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[6] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5] ( .SD ( n6 ) , .D ( Carry ) , 
    .SI ( difference[5] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[5] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4] ( .SD ( n7 ) , .D ( Carry ) , 
    .SI ( difference[4] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[4] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3] ( .SD ( n8 ) , .D ( Carry ) , 
    .SI ( difference[3] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[3] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2] ( .SD ( n11 ) , 
    .D ( Carry ) , .SI ( difference[2] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[2] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1] ( .SD ( n12 ) , 
    .D ( Carry ) , .SI ( difference[1] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[1] ) ) ;
SAEDRVT14_INV_S_0P5 U3 ( .A ( N27 ) , .X ( n12 ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( N28 ) , .X ( n11 ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( N29 ) , .X ( n8 ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( N30 ) , .X ( n7 ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( N31 ) , .X ( n6 ) ) ;
SAEDRVT14_INV_S_0P5 U12 ( .A ( N32 ) , .X ( n5 ) ) ;
SAEDRVT14_INV_S_0P5 U14 ( .A ( N26 ) , .X ( n2 ) ) ;
SAEDRVT14_AO22_0P75 U15 ( .A1 ( S1[1] ) , .A2 ( S1S2mux ) , .B1 ( S2[1] ) , 
    .B2 ( n1 ) , .X ( N9 ) ) ;
SAEDRVT14_AO22_0P75 U16 ( .A1 ( S1[0] ) , .A2 ( S1S2mux ) , .B1 ( S2[0] ) , 
    .B2 ( n1 ) , .X ( N8 ) ) ;
SAEDRVT14_AO22_0P75 U17 ( .A1 ( S1[7] ) , .A2 ( S1S2mux ) , .B1 ( S2[7] ) , 
    .B2 ( n1 ) , .X ( N15 ) ) ;
SAEDRVT14_AO22_0P75 U18 ( .A1 ( S1[6] ) , .A2 ( S1S2mux ) , .B1 ( S2[6] ) , 
    .B2 ( n1 ) , .X ( N14 ) ) ;
SAEDRVT14_AO22_0P75 U19 ( .A1 ( S1[5] ) , .A2 ( S1S2mux ) , .B1 ( S2[5] ) , 
    .B2 ( n1 ) , .X ( N13 ) ) ;
SAEDRVT14_AO22_0P75 U20 ( .A1 ( S1[4] ) , .A2 ( S1S2mux ) , .B1 ( S2[4] ) , 
    .B2 ( n1 ) , .X ( N12 ) ) ;
SAEDRVT14_AO22_0P75 U21 ( .A1 ( S1[3] ) , .A2 ( S1S2mux ) , .B1 ( S2[3] ) , 
    .B2 ( n1 ) , .X ( N11 ) ) ;
SAEDRVT14_AO22_0P75 U22 ( .A1 ( S1[2] ) , .A2 ( S1S2mux ) , .B1 ( S2[2] ) , 
    .B2 ( n1 ) , .X ( N10 ) ) ;
SAEDRVT14_INV_S_0P5 U23 ( .A ( S1S2mux ) , .X ( n1 ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[0] ( .D ( R[0] ) , .CK ( clock ) , 
    .Q ( Rpipe[0] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[2] ( .D ( R[2] ) , .CK ( clock ) , 
    .Q ( Rpipe[2] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[3] ( .D ( R[3] ) , .CK ( clock ) , 
    .Q ( Rpipe[3] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[5] ( .D ( R[5] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[5] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[7] ( .D ( R[7] ) , .CK ( ZCTSNET_1 ) , 
    .Q ( Rpipe[7] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[4] ( .D ( R[4] ) , .CK ( clock ) , 
    .Q ( Rpipe[4] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[1] ( .D ( R[1] ) , .CK ( clock ) , 
    .Q ( Rpipe[1] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[6] ( .D ( R[6] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[6] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( N33 ) , .X ( n3 ) ) ;
PE_3_DW01_add_0 add_52 (
    .A ( { SYNOPSYS_UNCONNECTED_1 , Accumulate[7] , Accumulate[6] , 
        Accumulate[5] , Accumulate[4] , Accumulate[3] , Accumulate[2] , 
        Accumulate[1] , Accumulate[0] } ) ,
    .B ( { SYNOPSYS_UNCONNECTED_2 , difference[7] , difference[6] , 
        difference[5] , difference[4] , difference[3] , difference[2] , 
        difference[1] , difference[0] } ) ,
    .SUM ( { Carry , N33 , N32 , N31 , N30 , N29 , N28 , N27 , N26 } ) ) ;
PE_3_DW01_sub_0 sub_46 ( .A ( R ) ,
    .B ( { N15 , N14 , N13 , N12 , N11 , N10 , N9 , N8 } ) ,
    .DIFF ( difference ) ) ;
SAEDSLVT14_TIE0_V1_2 U6 () ;
endmodule


module PE_3_DW01_add_0 ( A , B , CI , SUM , CO ) ;
input  [8:0] A ;
input  [8:0] B ;
input  CI ;
output [8:0] SUM ;
output CO ;

wire [7:1] carry ;

SAEDRVT14_ADDF_V1_0P5 U1_7 ( .A ( A[7] ) , .B ( B[7] ) , .CI ( carry[7] ) , 
    .CO ( SUM[8] ) , .S ( SUM[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_6 ( .A ( A[6] ) , .B ( B[6] ) , .CI ( carry[6] ) , 
    .CO ( carry[7] ) , .S ( SUM[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_5 ( .A ( A[5] ) , .B ( B[5] ) , .CI ( carry[5] ) , 
    .CO ( carry[6] ) , .S ( SUM[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_4 ( .A ( A[4] ) , .B ( B[4] ) , .CI ( carry[4] ) , 
    .CO ( carry[5] ) , .S ( SUM[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_3 ( .A ( A[3] ) , .B ( B[3] ) , .CI ( carry[3] ) , 
    .CO ( carry[4] ) , .S ( SUM[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_2 ( .A ( A[2] ) , .B ( B[2] ) , .CI ( carry[2] ) , 
    .CO ( carry[3] ) , .S ( SUM[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_1 ( .A ( A[1] ) , .B ( B[1] ) , .CI ( carry[1] ) , 
    .CO ( carry[2] ) , .S ( SUM[1] ) ) ;
SAEDRVT14_EO2_V1_0P75 U4 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .X ( SUM[0] ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_1_43 ( .A1 ( A[0] ) , .A2 ( B[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_3_DW01_sub_0 ( A , B , CI , DIFF , CO ) ;
input  [7:0] A ;
input  [7:0] B ;
input  CI ;
output [7:0] DIFF ;
output CO ;

wire [7:1] carry ;
wire [7:0] B_not ;

SAEDRVT14_ADDF_V1_0P5 U2_7 ( .A ( A[7] ) , .B ( B_not[7] ) , 
    .CI ( carry[7] ) , .S ( DIFF[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_6 ( .A ( A[6] ) , .B ( B_not[6] ) , 
    .CI ( carry[6] ) , .CO ( carry[7] ) , .S ( DIFF[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_5 ( .A ( A[5] ) , .B ( B_not[5] ) , 
    .CI ( carry[5] ) , .CO ( carry[6] ) , .S ( DIFF[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_4 ( .A ( A[4] ) , .B ( B_not[4] ) , 
    .CI ( carry[4] ) , .CO ( carry[5] ) , .S ( DIFF[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_3 ( .A ( A[3] ) , .B ( B_not[3] ) , 
    .CI ( carry[3] ) , .CO ( carry[4] ) , .S ( DIFF[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_2 ( .A ( A[2] ) , .B ( B_not[2] ) , 
    .CI ( carry[2] ) , .CO ( carry[3] ) , .S ( DIFF[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_1 ( .A ( A[1] ) , .B ( B_not[1] ) , 
    .CI ( carry[1] ) , .CO ( carry[2] ) , .S ( DIFF[1] ) ) ;
SAEDRVT14_EN2_0P5 U3 ( .A1 ( B_not[0] ) , .A2 ( A[0] ) , .X ( DIFF[0] ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( B[7] ) , .X ( B_not[7] ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( B[6] ) , .X ( B_not[6] ) ) ;
SAEDRVT14_INV_S_0P5 U6 ( .A ( B[5] ) , .X ( B_not[5] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( B[4] ) , .X ( B_not[4] ) ) ;
SAEDRVT14_INV_S_0P5 U8 ( .A ( B[3] ) , .X ( B_not[3] ) ) ;
SAEDRVT14_INV_S_0P5 U9 ( .A ( B[2] ) , .X ( B_not[2] ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( B[1] ) , .X ( B_not[1] ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( B[0] ) , .X ( B_not[0] ) ) ;
SAEDRVT14_OR2_0P5 ctmTdsLR_1_26 ( .A1 ( A[0] ) , .A2 ( B_not[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_2 ( clock , R , S1 , S2 , S1S2mux , newDist , Accumulate , Rpipe , 
    ZCTSNET_0 , ZCTSNET_1 ) ;
input  clock ;
input  [7:0] R ;
input  [7:0] S1 ;
input  [7:0] S2 ;
input  S1S2mux ;
input  newDist ;
output [7:0] Accumulate ;
output [7:0] Rpipe ;
input  ZCTSNET_0 ;
input  ZCTSNET_1 ;

wire [7:0] difference ;

SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0] ( .SD ( n5 ) , .D ( Carry ) , 
    .SI ( difference[0] ) , .SE ( newDist ) , .CK ( ZCTSNET_1 ) , 
    .Q ( Accumulate[0] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7] ( .SD ( n6 ) , .D ( Carry ) , 
    .SI ( difference[7] ) , .SE ( newDist ) , .CK ( ZCTSNET_1 ) , 
    .Q ( Accumulate[7] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6] ( .SD ( n7 ) , .D ( Carry ) , 
    .SI ( difference[6] ) , .SE ( newDist ) , .CK ( ZCTSNET_1 ) , 
    .Q ( Accumulate[6] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5] ( .SD ( n8 ) , .D ( Carry ) , 
    .SI ( difference[5] ) , .SE ( newDist ) , .CK ( ZCTSNET_1 ) , 
    .Q ( Accumulate[5] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4] ( .SD ( n13 ) , 
    .D ( Carry ) , .SI ( difference[4] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_1 ) , .Q ( Accumulate[4] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3] ( .SD ( n14 ) , 
    .D ( Carry ) , .SI ( difference[3] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_1 ) , .Q ( Accumulate[3] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2] ( .SD ( n15 ) , 
    .D ( Carry ) , .SI ( difference[2] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_1 ) , .Q ( Accumulate[2] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1] ( .SD ( n16 ) , 
    .D ( Carry ) , .SI ( difference[1] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_1 ) , .Q ( Accumulate[1] ) ) ;
SAEDRVT14_INV_S_0P5 U3 ( .A ( N27 ) , .X ( n16 ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( N28 ) , .X ( n15 ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( N29 ) , .X ( n14 ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( N30 ) , .X ( n13 ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( N31 ) , .X ( n8 ) ) ;
SAEDRVT14_INV_S_0P5 U12 ( .A ( N32 ) , .X ( n7 ) ) ;
SAEDRVT14_INV_S_0P5 U14 ( .A ( N26 ) , .X ( n5 ) ) ;
SAEDRVT14_AO22_0P5 U15 ( .A1 ( S1[1] ) , .A2 ( S1S2mux ) , .B1 ( S2[1] ) , 
    .B2 ( n3 ) , .X ( N9 ) ) ;
SAEDRVT14_AO22_0P75 U16 ( .A1 ( S1[0] ) , .A2 ( S1S2mux ) , .B1 ( S2[0] ) , 
    .B2 ( n3 ) , .X ( N8 ) ) ;
SAEDRVT14_AO22_0P75 U17 ( .A1 ( S1[7] ) , .A2 ( S1S2mux ) , .B1 ( S2[7] ) , 
    .B2 ( n3 ) , .X ( N15 ) ) ;
SAEDRVT14_AO22_0P5 U18 ( .A1 ( S1[6] ) , .A2 ( S1S2mux ) , .B1 ( S2[6] ) , 
    .B2 ( n3 ) , .X ( N14 ) ) ;
SAEDRVT14_AO22_0P75 U19 ( .A1 ( S1[5] ) , .A2 ( S1S2mux ) , .B1 ( S2[5] ) , 
    .B2 ( n3 ) , .X ( N13 ) ) ;
SAEDRVT14_AO22_0P75 U20 ( .A1 ( S1[4] ) , .A2 ( S1S2mux ) , .B1 ( S2[4] ) , 
    .B2 ( n3 ) , .X ( N12 ) ) ;
SAEDRVT14_AO22_0P75 U21 ( .A1 ( S1[3] ) , .A2 ( S1S2mux ) , .B1 ( S2[3] ) , 
    .B2 ( n3 ) , .X ( N11 ) ) ;
SAEDRVT14_AO22_0P5 U22 ( .A1 ( S1[2] ) , .A2 ( S1S2mux ) , .B1 ( S2[2] ) , 
    .B2 ( n3 ) , .X ( N10 ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[4] ( .D ( R[4] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[4] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[0] ( .D ( R[0] ) , .CK ( clock ) , 
    .Q ( Rpipe[0] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[2] ( .D ( R[2] ) , .CK ( clock ) , 
    .Q ( Rpipe[2] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[6] ( .D ( R[6] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[6] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[5] ( .D ( R[5] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[5] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[1] ( .D ( R[1] ) , .CK ( clock ) , 
    .Q ( Rpipe[1] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[7] ( .D ( R[7] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[7] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[3] ( .D ( R[3] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[3] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( S1S2mux ) , .X ( n3 ) ) ;
SAEDRVT14_INV_S_0P5 U13 ( .A ( N33 ) , .X ( n6 ) ) ;
PE_2_DW01_add_0 add_52 (
    .A ( { SYNOPSYS_UNCONNECTED_1 , Accumulate[7] , Accumulate[6] , 
        Accumulate[5] , Accumulate[4] , Accumulate[3] , Accumulate[2] , 
        Accumulate[1] , Accumulate[0] } ) ,
    .B ( { SYNOPSYS_UNCONNECTED_2 , difference[7] , difference[6] , 
        difference[5] , difference[4] , difference[3] , difference[2] , 
        difference[1] , difference[0] } ) ,
    .SUM ( { Carry , N33 , N32 , N31 , N30 , N29 , N28 , N27 , N26 } ) ) ;
PE_2_DW01_sub_0 sub_46 ( .A ( R ) ,
    .B ( { N15 , N14 , N13 , N12 , N11 , N10 , N9 , N8 } ) ,
    .DIFF ( difference ) ) ;
SAEDSLVT14_TIE0_V1_2 U6 () ;
endmodule


module PE_2_DW01_add_0 ( A , B , CI , SUM , CO ) ;
input  [8:0] A ;
input  [8:0] B ;
input  CI ;
output [8:0] SUM ;
output CO ;

wire [7:1] carry ;

SAEDRVT14_ADDF_V1_0P5 U1_7 ( .A ( A[7] ) , .B ( B[7] ) , .CI ( carry[7] ) , 
    .CO ( SUM[8] ) , .S ( SUM[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_6 ( .A ( A[6] ) , .B ( B[6] ) , .CI ( carry[6] ) , 
    .CO ( carry[7] ) , .S ( SUM[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_5 ( .A ( A[5] ) , .B ( B[5] ) , .CI ( carry[5] ) , 
    .CO ( carry[6] ) , .S ( SUM[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_4 ( .A ( A[4] ) , .B ( B[4] ) , .CI ( carry[4] ) , 
    .CO ( carry[5] ) , .S ( SUM[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_3 ( .A ( A[3] ) , .B ( B[3] ) , .CI ( carry[3] ) , 
    .CO ( carry[4] ) , .S ( SUM[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_2 ( .A ( A[2] ) , .B ( B[2] ) , .CI ( carry[2] ) , 
    .CO ( carry[3] ) , .S ( SUM[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_1 ( .A ( A[1] ) , .B ( B[1] ) , .CI ( carry[1] ) , 
    .CO ( carry[2] ) , .S ( SUM[1] ) ) ;
SAEDRVT14_EO2_V1_0P75 U4 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .X ( SUM[0] ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_1_44 ( .A1 ( A[0] ) , .A2 ( B[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_2_DW01_sub_0 ( A , B , CI , DIFF , CO ) ;
input  [7:0] A ;
input  [7:0] B ;
input  CI ;
output [7:0] DIFF ;
output CO ;

wire [7:1] carry ;
wire [7:0] B_not ;

SAEDRVT14_ADDF_V1_0P5 U2_7 ( .A ( A[7] ) , .B ( B_not[7] ) , 
    .CI ( carry[7] ) , .S ( DIFF[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_6 ( .A ( A[6] ) , .B ( B_not[6] ) , 
    .CI ( carry[6] ) , .CO ( carry[7] ) , .S ( DIFF[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_5 ( .A ( A[5] ) , .B ( B_not[5] ) , 
    .CI ( carry[5] ) , .CO ( carry[6] ) , .S ( DIFF[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_4 ( .A ( A[4] ) , .B ( B_not[4] ) , 
    .CI ( carry[4] ) , .CO ( carry[5] ) , .S ( DIFF[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_3 ( .A ( A[3] ) , .B ( B_not[3] ) , 
    .CI ( carry[3] ) , .CO ( carry[4] ) , .S ( DIFF[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_2 ( .A ( A[2] ) , .B ( B_not[2] ) , 
    .CI ( carry[2] ) , .CO ( carry[3] ) , .S ( DIFF[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_1 ( .A ( A[1] ) , .B ( B_not[1] ) , 
    .CI ( carry[1] ) , .CO ( carry[2] ) , .S ( DIFF[1] ) ) ;
SAEDRVT14_EN2_0P5 U3 ( .A1 ( B_not[0] ) , .A2 ( A[0] ) , .X ( DIFF[0] ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( B[7] ) , .X ( B_not[7] ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( B[6] ) , .X ( B_not[6] ) ) ;
SAEDRVT14_INV_S_0P5 U6 ( .A ( B[5] ) , .X ( B_not[5] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( B[4] ) , .X ( B_not[4] ) ) ;
SAEDRVT14_INV_S_0P5 U8 ( .A ( B[3] ) , .X ( B_not[3] ) ) ;
SAEDRVT14_INV_S_0P5 U9 ( .A ( B[2] ) , .X ( B_not[2] ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( B[1] ) , .X ( B_not[1] ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( B[0] ) , .X ( B_not[0] ) ) ;
SAEDRVT14_OR2_0P5 ctmTdsLR_1_27 ( .A1 ( A[0] ) , .A2 ( B_not[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_1 ( clock , R , S1 , S2 , S1S2mux , newDist , Accumulate , Rpipe , 
    ZCTSNET_0 ) ;
input  clock ;
input  [7:0] R ;
input  [7:0] S1 ;
input  [7:0] S2 ;
input  S1S2mux ;
input  newDist ;
output [7:0] Accumulate ;
output [7:0] Rpipe ;
input  ZCTSNET_0 ;

wire [7:0] difference ;

SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0] ( .SD ( n2 ) , .D ( Carry ) , 
    .SI ( difference[0] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[0] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7] ( .SD ( n3 ) , .D ( Carry ) , 
    .SI ( difference[7] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[7] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6] ( .SD ( n5 ) , .D ( Carry ) , 
    .SI ( difference[6] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[6] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5] ( .SD ( n6 ) , .D ( Carry ) , 
    .SI ( difference[5] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[5] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4] ( .SD ( n7 ) , .D ( Carry ) , 
    .SI ( difference[4] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[4] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3] ( .SD ( n8 ) , .D ( Carry ) , 
    .SI ( difference[3] ) , .SE ( newDist ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Accumulate[3] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2] ( .SD ( n11 ) , 
    .D ( Carry ) , .SI ( difference[2] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_0 ) , .Q ( Accumulate[2] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1] ( .SD ( n12 ) , 
    .D ( Carry ) , .SI ( difference[1] ) , .SE ( newDist ) , 
    .CK ( ZCTSNET_0 ) , .Q ( Accumulate[1] ) ) ;
SAEDRVT14_INV_S_0P5 U3 ( .A ( N27 ) , .X ( n12 ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( N28 ) , .X ( n11 ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( N29 ) , .X ( n8 ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( N30 ) , .X ( n7 ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( N31 ) , .X ( n6 ) ) ;
SAEDRVT14_INV_S_0P5 U12 ( .A ( N32 ) , .X ( n5 ) ) ;
SAEDRVT14_INV_S_0P5 U14 ( .A ( N26 ) , .X ( n2 ) ) ;
SAEDRVT14_AO22_0P75 U15 ( .A1 ( S1[1] ) , .A2 ( S1S2mux ) , .B1 ( S2[1] ) , 
    .B2 ( n1 ) , .X ( N9 ) ) ;
SAEDRVT14_AO22_0P75 U16 ( .A1 ( S1[0] ) , .A2 ( S1S2mux ) , .B1 ( S2[0] ) , 
    .B2 ( n1 ) , .X ( N8 ) ) ;
SAEDRVT14_AO22_0P75 U17 ( .A1 ( S1[7] ) , .A2 ( S1S2mux ) , .B1 ( S2[7] ) , 
    .B2 ( n1 ) , .X ( N15 ) ) ;
SAEDRVT14_AO22_0P75 U18 ( .A1 ( S1[6] ) , .A2 ( S1S2mux ) , .B1 ( S2[6] ) , 
    .B2 ( n1 ) , .X ( N14 ) ) ;
SAEDRVT14_AO22_0P75 U19 ( .A1 ( S1[5] ) , .A2 ( S1S2mux ) , .B1 ( S2[5] ) , 
    .B2 ( n1 ) , .X ( N13 ) ) ;
SAEDRVT14_AO22_0P75 U20 ( .A1 ( S1[4] ) , .A2 ( S1S2mux ) , .B1 ( S2[4] ) , 
    .B2 ( n1 ) , .X ( N12 ) ) ;
SAEDRVT14_AO22_0P75 U21 ( .A1 ( S1[3] ) , .A2 ( S1S2mux ) , .B1 ( S2[3] ) , 
    .B2 ( n1 ) , .X ( N11 ) ) ;
SAEDRVT14_AO22_0P75 U22 ( .A1 ( S1[2] ) , .A2 ( S1S2mux ) , .B1 ( S2[2] ) , 
    .B2 ( n1 ) , .X ( N10 ) ) ;
SAEDRVT14_INV_S_0P5 U23 ( .A ( S1S2mux ) , .X ( n1 ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[4] ( .D ( R[4] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[4] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[1] ( .D ( R[1] ) , .CK ( clock ) , 
    .Q ( Rpipe[1] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[0] ( .D ( R[0] ) , .CK ( clock ) , 
    .Q ( Rpipe[0] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[7] ( .D ( R[7] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[7] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[3] ( .D ( R[3] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[3] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[2] ( .D ( R[2] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[2] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[5] ( .D ( R[5] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[5] ) ) ;
SAEDRVT14_FDP_V2LP_0P5 \Rpipe_reg[6] ( .D ( R[6] ) , .CK ( ZCTSNET_0 ) , 
    .Q ( Rpipe[6] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( N33 ) , .X ( n3 ) ) ;
PE_1_DW01_add_0 add_52 (
    .A ( { SYNOPSYS_UNCONNECTED_1 , Accumulate[7] , Accumulate[6] , 
        Accumulate[5] , Accumulate[4] , Accumulate[3] , Accumulate[2] , 
        Accumulate[1] , Accumulate[0] } ) ,
    .B ( { SYNOPSYS_UNCONNECTED_2 , difference[7] , difference[6] , 
        difference[5] , difference[4] , difference[3] , difference[2] , 
        difference[1] , difference[0] } ) ,
    .SUM ( { Carry , N33 , N32 , N31 , N30 , N29 , N28 , N27 , N26 } ) ) ;
PE_1_DW01_sub_0 sub_46 ( .A ( R ) ,
    .B ( { N15 , N14 , N13 , N12 , N11 , N10 , N9 , N8 } ) ,
    .DIFF ( difference ) ) ;
SAEDSLVT14_TIE0_V1_2 U6 () ;
endmodule


module PE_1_DW01_add_0 ( A , B , CI , SUM , CO ) ;
input  [8:0] A ;
input  [8:0] B ;
input  CI ;
output [8:0] SUM ;
output CO ;

wire [7:1] carry ;

SAEDRVT14_ADDF_V1_0P5 U1_7 ( .A ( A[7] ) , .B ( B[7] ) , .CI ( carry[7] ) , 
    .CO ( SUM[8] ) , .S ( SUM[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_6 ( .A ( A[6] ) , .B ( B[6] ) , .CI ( carry[6] ) , 
    .CO ( carry[7] ) , .S ( SUM[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_5 ( .A ( A[5] ) , .B ( B[5] ) , .CI ( carry[5] ) , 
    .CO ( carry[6] ) , .S ( SUM[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_4 ( .A ( A[4] ) , .B ( B[4] ) , .CI ( carry[4] ) , 
    .CO ( carry[5] ) , .S ( SUM[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_3 ( .A ( A[3] ) , .B ( B[3] ) , .CI ( carry[3] ) , 
    .CO ( carry[4] ) , .S ( SUM[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_2 ( .A ( A[2] ) , .B ( B[2] ) , .CI ( carry[2] ) , 
    .CO ( carry[3] ) , .S ( SUM[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_1 ( .A ( A[1] ) , .B ( B[1] ) , .CI ( carry[1] ) , 
    .CO ( carry[2] ) , .S ( SUM[1] ) ) ;
SAEDRVT14_EO2_V1_0P75 U4 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .X ( SUM[0] ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_1_45 ( .A1 ( A[0] ) , .A2 ( B[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PE_1_DW01_sub_0 ( A , B , CI , DIFF , CO ) ;
input  [7:0] A ;
input  [7:0] B ;
input  CI ;
output [7:0] DIFF ;
output CO ;

wire [7:1] carry ;
wire [7:0] B_not ;

SAEDRVT14_ADDF_V1_0P5 U2_7 ( .A ( A[7] ) , .B ( B_not[7] ) , 
    .CI ( carry[7] ) , .S ( DIFF[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_6 ( .A ( A[6] ) , .B ( B_not[6] ) , 
    .CI ( carry[6] ) , .CO ( carry[7] ) , .S ( DIFF[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_5 ( .A ( A[5] ) , .B ( B_not[5] ) , 
    .CI ( carry[5] ) , .CO ( carry[6] ) , .S ( DIFF[5] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_4 ( .A ( A[4] ) , .B ( B_not[4] ) , 
    .CI ( carry[4] ) , .CO ( carry[5] ) , .S ( DIFF[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_3 ( .A ( A[3] ) , .B ( B_not[3] ) , 
    .CI ( carry[3] ) , .CO ( carry[4] ) , .S ( DIFF[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_2 ( .A ( A[2] ) , .B ( B_not[2] ) , 
    .CI ( carry[2] ) , .CO ( carry[3] ) , .S ( DIFF[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_1 ( .A ( A[1] ) , .B ( B_not[1] ) , 
    .CI ( carry[1] ) , .CO ( carry[2] ) , .S ( DIFF[1] ) ) ;
SAEDRVT14_EN2_0P5 U3 ( .A1 ( B_not[0] ) , .A2 ( A[0] ) , .X ( DIFF[0] ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( B[7] ) , .X ( B_not[7] ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( B[6] ) , .X ( B_not[6] ) ) ;
SAEDRVT14_INV_S_0P5 U6 ( .A ( B[5] ) , .X ( B_not[5] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( B[4] ) , .X ( B_not[4] ) ) ;
SAEDRVT14_INV_S_0P5 U8 ( .A ( B[3] ) , .X ( B_not[3] ) ) ;
SAEDRVT14_INV_S_0P5 U9 ( .A ( B[2] ) , .X ( B_not[2] ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( B[1] ) , .X ( B_not[1] ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( B[0] ) , .X ( B_not[0] ) ) ;
SAEDRVT14_OR2_0P5 ctmTdsLR_1_28 ( .A1 ( A[0] ) , .A2 ( B_not[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PEend ( clock , R , S1 , S2 , S1S2mux , newDist , Accumulate ) ;
input  clock ;
input  [7:0] R ;
input  [7:0] S1 ;
input  [7:0] S2 ;
input  S1S2mux ;
input  newDist ;
output [7:0] Accumulate ;

wire [7:0] difference ;

SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0] ( .SD ( n16 ) , 
    .D ( Carry ) , .SI ( difference[0] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[0] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7] ( .SD ( n15 ) , 
    .D ( Carry ) , .SI ( difference[7] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[7] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6] ( .SD ( n14 ) , 
    .D ( Carry ) , .SI ( difference[6] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[6] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5] ( .SD ( n13 ) , 
    .D ( Carry ) , .SI ( difference[5] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[5] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4] ( .SD ( n12 ) , 
    .D ( Carry ) , .SI ( difference[4] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[4] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3] ( .SD ( n11 ) , 
    .D ( Carry ) , .SI ( difference[3] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[3] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2] ( .SD ( n10 ) , 
    .D ( Carry ) , .SI ( difference[2] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[2] ) ) ;
SAEDRVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1] ( .SD ( n9 ) , .D ( Carry ) , 
    .SI ( difference[1] ) , .SE ( newDist ) , .CK ( clock ) , 
    .Q ( Accumulate[1] ) ) ;
SAEDRVT14_INV_S_0P5 U3 ( .A ( N27 ) , .X ( n9 ) ) ;
SAEDRVT14_INV_S_0P5 U4 ( .A ( N28 ) , .X ( n10 ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( N29 ) , .X ( n11 ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( N30 ) , .X ( n12 ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( N31 ) , .X ( n13 ) ) ;
SAEDRVT14_INV_S_0P5 U12 ( .A ( N32 ) , .X ( n14 ) ) ;
SAEDRVT14_INV_S_0P5 U13 ( .A ( N33 ) , .X ( n15 ) ) ;
SAEDRVT14_INV_S_0P5 U14 ( .A ( N26 ) , .X ( n16 ) ) ;
SAEDRVT14_AO22_0P75 U15 ( .A1 ( S1[1] ) , .A2 ( S1S2mux ) , .B1 ( S2[1] ) , 
    .B2 ( n17 ) , .X ( N9 ) ) ;
SAEDRVT14_AO22_0P75 U16 ( .A1 ( S1[0] ) , .A2 ( S1S2mux ) , .B1 ( S2[0] ) , 
    .B2 ( n17 ) , .X ( N8 ) ) ;
SAEDRVT14_AO22_0P75 U17 ( .A1 ( S1[7] ) , .A2 ( S1S2mux ) , .B1 ( S2[7] ) , 
    .B2 ( n17 ) , .X ( N15 ) ) ;
SAEDRVT14_AO22_0P75 U18 ( .A1 ( S1[6] ) , .A2 ( S1S2mux ) , .B1 ( S2[6] ) , 
    .B2 ( n17 ) , .X ( N14 ) ) ;
SAEDRVT14_AO22_0P75 U19 ( .A1 ( S1[5] ) , .A2 ( S1S2mux ) , .B1 ( S2[5] ) , 
    .B2 ( n17 ) , .X ( N13 ) ) ;
SAEDRVT14_AO22_0P75 U20 ( .A1 ( S1[4] ) , .A2 ( S1S2mux ) , .B1 ( S2[4] ) , 
    .B2 ( n17 ) , .X ( N12 ) ) ;
SAEDRVT14_AO22_0P75 U21 ( .A1 ( S1[3] ) , .A2 ( S1S2mux ) , .B1 ( S2[3] ) , 
    .B2 ( n17 ) , .X ( N11 ) ) ;
SAEDRVT14_AO22_0P75 U22 ( .A1 ( S1[2] ) , .A2 ( S1S2mux ) , .B1 ( S2[2] ) , 
    .B2 ( n17 ) , .X ( N10 ) ) ;
SAEDRVT14_INV_S_0P5 U23 ( .A ( S1S2mux ) , .X ( n17 ) ) ;
PEend_DW01_add_0 add_77 (
    .A ( { SYNOPSYS_UNCONNECTED_1 , Accumulate[7] , Accumulate[6] , 
        Accumulate[5] , Accumulate[4] , Accumulate[3] , Accumulate[2] , 
        Accumulate[1] , Accumulate[0] } ) ,
    .B ( { SYNOPSYS_UNCONNECTED_2 , difference[7] , difference[6] , 
        difference[5] , difference[4] , difference[3] , difference[2] , 
        difference[1] , difference[0] } ) ,
    .SUM ( { Carry , N33 , N32 , N31 , N30 , N29 , N28 , N27 , N26 } ) ) ;
PEend_DW01_sub_1 sub_71 ( .A ( R ) ,
    .B ( { N15 , N14 , N13 , N12 , N11 , N10 , N9 , N8 } ) ,
    .DIFF ( difference ) ) ;
SAEDSLVT14_TIE0_V1_2 U6 () ;
endmodule


module PEend_DW01_add_0 ( A , B , CI , SUM , CO ) ;
input  [8:0] A ;
input  [8:0] B ;
input  CI ;
output [8:0] SUM ;
output CO ;

wire [7:1] carry ;

SAEDRVT14_ADDF_V1_0P5 U1_1 ( .A ( A[1] ) , .B ( B[1] ) , .CI ( carry[1] ) , 
    .CO ( carry[2] ) , .S ( SUM[1] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_3 ( .A ( A[3] ) , .B ( B[3] ) , .CI ( carry[3] ) , 
    .CO ( carry[4] ) , .S ( SUM[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_2 ( .A ( A[2] ) , .B ( B[2] ) , .CI ( carry[2] ) , 
    .CO ( carry[3] ) , .S ( SUM[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_4 ( .A ( A[4] ) , .B ( B[4] ) , .CI ( carry[4] ) , 
    .CO ( carry[5] ) , .S ( SUM[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_6 ( .A ( B[6] ) , .B ( A[6] ) , .CI ( carry[6] ) , 
    .CO ( carry[7] ) , .S ( SUM[6] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_7 ( .A ( A[7] ) , .B ( B[7] ) , .CI ( carry[7] ) , 
    .CO ( SUM[8] ) , .S ( SUM[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1_5 ( .A ( A[5] ) , .B ( B[5] ) , .CI ( carry[5] ) , 
    .CO ( carry[6] ) , .S ( SUM[5] ) ) ;
SAEDRVT14_EO2_V1_0P75 U4 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .X ( SUM[0] ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_1_46 ( .A1 ( B[0] ) , .A2 ( A[0] ) , 
    .X ( carry[1] ) ) ;
endmodule


module PEend_DW01_sub_1 ( A , B , CI , DIFF , CO ) ;
input  [7:0] A ;
input  [7:0] B ;
input  CI ;
output [7:0] DIFF ;
output CO ;

wire [7:1] carry ;
wire [7:0] B_not ;

SAEDRVT14_ADDF_V1_0P5 U2_4 ( .A ( A[4] ) , .B ( B_not[4] ) , 
    .CI ( carry[4] ) , .CO ( carry[5] ) , .S ( DIFF[4] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_6 ( .A ( A[6] ) , .B ( B_not[6] ) , 
    .CI ( carry[6] ) , .CO ( carry[7] ) , .S ( DIFF[6] ) ) ;
SAEDRVT14_EO3_0P5 U2_7 ( .A1 ( A[7] ) , .A2 ( B_not[7] ) , .A3 ( carry[7] ) , 
    .X ( DIFF[7] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_3 ( .A ( A[3] ) , .B ( B_not[3] ) , 
    .CI ( carry[3] ) , .CO ( carry[4] ) , .S ( DIFF[3] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_1 ( .A ( A[1] ) , .B ( B_not[1] ) , 
    .CI ( carry[1] ) , .CO ( carry[2] ) , .S ( DIFF[1] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_2 ( .A ( A[2] ) , .B ( B_not[2] ) , 
    .CI ( carry[2] ) , .CO ( carry[3] ) , .S ( DIFF[2] ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2_5 ( .A ( A[5] ) , .B ( B_not[5] ) , 
    .CI ( carry[5] ) , .CO ( carry[6] ) , .S ( DIFF[5] ) ) ;
SAEDRVT14_OR2_0P5 U3 ( .A1 ( B_not[0] ) , .A2 ( A[0] ) , .X ( carry[1] ) ) ;
SAEDRVT14_EN2_0P5 U4 ( .A1 ( A[0] ) , .A2 ( B_not[0] ) , .X ( DIFF[0] ) ) ;
SAEDRVT14_INV_S_0P5 U5 ( .A ( B[7] ) , .X ( B_not[7] ) ) ;
SAEDRVT14_INV_S_0P5 U6 ( .A ( B[6] ) , .X ( B_not[6] ) ) ;
SAEDRVT14_INV_S_0P5 U7 ( .A ( B[5] ) , .X ( B_not[5] ) ) ;
SAEDRVT14_INV_S_0P5 U8 ( .A ( B[4] ) , .X ( B_not[4] ) ) ;
SAEDRVT14_INV_S_0P5 U9 ( .A ( B[3] ) , .X ( B_not[3] ) ) ;
SAEDRVT14_INV_S_0P5 U10 ( .A ( B[2] ) , .X ( B_not[2] ) ) ;
SAEDRVT14_INV_S_0P5 U11 ( .A ( B[1] ) , .X ( B_not[1] ) ) ;
SAEDRVT14_INV_S_0P5 U12 ( .A ( B[0] ) , .X ( B_not[0] ) ) ;
endmodule


module Comparator ( clock , CompStart , PEout , PEready , vectorX , vectorY , 
    BestDist , motionX , motionY , ZCTSNET_0 ) ;
input  clock ;
input  CompStart ;
input  [127:0] PEout ;
input  [15:0] PEready ;
input  [3:0] vectorX ;
input  [3:0] vectorY ;
output [7:0] BestDist ;
output [3:0] motionX ;
output [3:0] motionY ;
input  ZCTSNET_0 ;

wire [7:0] newDist ;

SAEDRVT14_AO22_0P75 U3 ( .A1 ( vectorX[0] ) , .A2 ( n3 ) , 
    .B1 ( motionX[0] ) , .B2 ( n4 ) , .X ( n110 ) ) ;
SAEDRVT14_AO22_0P75 U5 ( .A1 ( vectorX[1] ) , .A2 ( n3 ) , 
    .B1 ( motionX[1] ) , .B2 ( n4 ) , .X ( n111 ) ) ;
SAEDRVT14_AO22_0P75 U6 ( .A1 ( vectorX[2] ) , .A2 ( n3 ) , 
    .B1 ( motionX[2] ) , .B2 ( n4 ) , .X ( n112 ) ) ;
SAEDRVT14_AO22_0P75 U7 ( .A1 ( vectorX[3] ) , .A2 ( n3 ) , 
    .B1 ( motionX[3] ) , .B2 ( n4 ) , .X ( n113 ) ) ;
SAEDRVT14_AO22_0P75 U8 ( .A1 ( vectorY[0] ) , .A2 ( n3 ) , 
    .B1 ( motionY[0] ) , .B2 ( n4 ) , .X ( n114 ) ) ;
SAEDRVT14_AO22_0P75 U9 ( .A1 ( vectorY[1] ) , .A2 ( n3 ) , 
    .B1 ( motionY[1] ) , .B2 ( n4 ) , .X ( n115 ) ) ;
SAEDRVT14_AO22_0P75 U10 ( .A1 ( vectorY[2] ) , .A2 ( n3 ) , 
    .B1 ( motionY[2] ) , .B2 ( n4 ) , .X ( n116 ) ) ;
SAEDRVT14_AO22_0P75 U11 ( .A1 ( vectorY[3] ) , .A2 ( n3 ) , 
    .B1 ( motionY[3] ) , .B2 ( n4 ) , .X ( n117 ) ) ;
SAEDRVT14_AO221_0P5 U18 ( .A1 ( PEout[41] ) , .A2 ( n18 ) , 
    .B1 ( PEout[33] ) , .B2 ( n19 ) , .C ( n20 ) , .X ( n16 ) ) ;
SAEDRVT14_AO22_0P75 U19 ( .A1 ( PEout[49] ) , .A2 ( PEready[6] ) , 
    .B1 ( PEout[25] ) , .B2 ( n21 ) , .X ( n20 ) ) ;
SAEDRVT14_AO221_0P5 U22 ( .A1 ( PEout[65] ) , .A2 ( n27 ) , 
    .B1 ( PEout[57] ) , .B2 ( n28 ) , .C ( n29 ) , .X ( n8 ) ) ;
SAEDRVT14_AO22_0P75 U23 ( .A1 ( PEout[97] ) , .A2 ( n30 ) , 
    .B1 ( PEout[81] ) , .B2 ( n31 ) , .X ( n29 ) ) ;
SAEDRVT14_AO221_0P5 U24 ( .A1 ( n3 ) , .A2 ( newDist[2] ) , 
    .B1 ( BestDist[2] ) , .B2 ( n4 ) , .C ( n5 ) , .X ( n119 ) ) ;
SAEDRVT14_OAI21_0P5 U29 ( .A1 ( n37 ) , .A2 ( n38 ) , .B ( n17 ) , 
    .X ( n36 ) ) ;
SAEDRVT14_AO221_0P5 U30 ( .A1 ( PEout[42] ) , .A2 ( n18 ) , 
    .B1 ( PEout[34] ) , .B2 ( n19 ) , .C ( n39 ) , .X ( n38 ) ) ;
SAEDRVT14_AO22_0P75 U31 ( .A1 ( PEout[50] ) , .A2 ( PEready[6] ) , 
    .B1 ( PEout[26] ) , .B2 ( n21 ) , .X ( n39 ) ) ;
SAEDRVT14_AO221_0P5 U32 ( .A1 ( PEout[2] ) , .A2 ( n22 ) , .B1 ( PEout[18] ) , 
    .B2 ( n23 ) , .C ( n40 ) , .X ( n37 ) ) ;
SAEDRVT14_AO21B_0P5 U33 ( .A1 ( PEout[10] ) , .A2 ( n25 ) , .B ( n26 ) , 
    .X ( n40 ) ) ;
SAEDRVT14_AO221_0P5 U34 ( .A1 ( PEout[66] ) , .A2 ( n27 ) , 
    .B1 ( PEout[58] ) , .B2 ( n28 ) , .C ( n41 ) , .X ( n33 ) ) ;
SAEDRVT14_AO22_0P75 U35 ( .A1 ( PEout[98] ) , .A2 ( n30 ) , 
    .B1 ( PEout[82] ) , .B2 ( n31 ) , .X ( n41 ) ) ;
SAEDRVT14_OA21B_1 U38 ( .A1 ( n43 ) , .A2 ( n44 ) , .B ( n10 ) , .X ( n42 ) ) ;
SAEDRVT14_AO221_0P5 U39 ( .A1 ( PEout[91] ) , .A2 ( n11 ) , 
    .B1 ( PEout[107] ) , .B2 ( PEready[13] ) , .C ( n45 ) , .X ( n44 ) ) ;
SAEDRVT14_AO21B_0P5 U40 ( .A1 ( PEout[75] ) , .A2 ( n13 ) , .B ( n46 ) , 
    .X ( n45 ) ) ;
SAEDRVT14_OAI21_0P5 U41 ( .A1 ( n47 ) , .A2 ( n48 ) , .B ( n17 ) , 
    .X ( n46 ) ) ;
SAEDRVT14_AO221_0P5 U42 ( .A1 ( PEout[43] ) , .A2 ( n18 ) , 
    .B1 ( PEout[35] ) , .B2 ( n19 ) , .C ( n49 ) , .X ( n48 ) ) ;
SAEDRVT14_AO22_0P75 U43 ( .A1 ( PEout[51] ) , .A2 ( PEready[6] ) , 
    .B1 ( PEout[27] ) , .B2 ( n21 ) , .X ( n49 ) ) ;
SAEDRVT14_AO221_0P5 U44 ( .A1 ( PEout[3] ) , .A2 ( n22 ) , .B1 ( PEout[19] ) , 
    .B2 ( n23 ) , .C ( n50 ) , .X ( n47 ) ) ;
SAEDRVT14_AO21B_0P5 U45 ( .A1 ( PEout[11] ) , .A2 ( n25 ) , .B ( n26 ) , 
    .X ( n50 ) ) ;
SAEDRVT14_AO221_0P5 U46 ( .A1 ( PEout[67] ) , .A2 ( n27 ) , 
    .B1 ( PEout[59] ) , .B2 ( n28 ) , .C ( n51 ) , .X ( n43 ) ) ;
SAEDRVT14_AO22_0P75 U47 ( .A1 ( PEout[99] ) , .A2 ( n30 ) , 
    .B1 ( PEout[83] ) , .B2 ( n31 ) , .X ( n51 ) ) ;
SAEDRVT14_AO221_0P5 U51 ( .A1 ( PEout[92] ) , .A2 ( n11 ) , 
    .B1 ( PEout[108] ) , .B2 ( PEready[13] ) , .C ( n55 ) , .X ( n54 ) ) ;
SAEDRVT14_AO21B_0P5 U52 ( .A1 ( PEout[76] ) , .A2 ( n13 ) , .B ( n56 ) , 
    .X ( n55 ) ) ;
SAEDRVT14_OAI21_0P5 U53 ( .A1 ( n57 ) , .A2 ( n58 ) , .B ( n17 ) , 
    .X ( n56 ) ) ;
SAEDRVT14_AO221_0P5 U54 ( .A1 ( PEout[44] ) , .A2 ( n18 ) , 
    .B1 ( PEout[36] ) , .B2 ( n19 ) , .C ( n59 ) , .X ( n58 ) ) ;
SAEDRVT14_AO22_0P75 U55 ( .A1 ( PEout[52] ) , .A2 ( PEready[6] ) , 
    .B1 ( PEout[28] ) , .B2 ( n21 ) , .X ( n59 ) ) ;
SAEDRVT14_AO221_0P5 U56 ( .A1 ( PEout[4] ) , .A2 ( n22 ) , .B1 ( PEout[20] ) , 
    .B2 ( n23 ) , .C ( n60 ) , .X ( n57 ) ) ;
SAEDRVT14_AO21B_0P5 U57 ( .A1 ( PEout[12] ) , .A2 ( n25 ) , .B ( n26 ) , 
    .X ( n60 ) ) ;
SAEDRVT14_AO221_0P5 U58 ( .A1 ( PEout[68] ) , .A2 ( n27 ) , 
    .B1 ( PEout[60] ) , .B2 ( n28 ) , .C ( n61 ) , .X ( n53 ) ) ;
SAEDRVT14_AO22_0P75 U59 ( .A1 ( PEout[100] ) , .A2 ( n30 ) , 
    .B1 ( PEout[84] ) , .B2 ( n31 ) , .X ( n61 ) ) ;
SAEDRVT14_OA21B_1 U62 ( .A1 ( n63 ) , .A2 ( n64 ) , .B ( n10 ) , .X ( n62 ) ) ;
SAEDRVT14_AO221_0P5 U66 ( .A1 ( PEout[45] ) , .A2 ( n18 ) , 
    .B1 ( PEout[37] ) , .B2 ( n19 ) , .C ( n69 ) , .X ( n68 ) ) ;
SAEDRVT14_AO22_0P75 U67 ( .A1 ( PEout[53] ) , .A2 ( PEready[6] ) , 
    .B1 ( PEout[29] ) , .B2 ( n21 ) , .X ( n69 ) ) ;
SAEDRVT14_AO221_0P5 U68 ( .A1 ( PEout[5] ) , .A2 ( n22 ) , .B1 ( PEout[21] ) , 
    .B2 ( n23 ) , .C ( n70 ) , .X ( n67 ) ) ;
SAEDRVT14_AO221_0P5 U70 ( .A1 ( PEout[69] ) , .A2 ( n27 ) , 
    .B1 ( PEout[61] ) , .B2 ( n28 ) , .C ( n71 ) , .X ( n63 ) ) ;
SAEDRVT14_AO22_0P75 U71 ( .A1 ( PEout[101] ) , .A2 ( n30 ) , 
    .B1 ( PEout[85] ) , .B2 ( n31 ) , .X ( n71 ) ) ;
SAEDRVT14_AO221_0P5 U72 ( .A1 ( n3 ) , .A2 ( newDist[6] ) , 
    .B1 ( BestDist[6] ) , .B2 ( n4 ) , .C ( n5 ) , .X ( n123 ) ) ;
SAEDRVT14_AO221_0P5 U73 ( .A1 ( PEout[118] ) , .A2 ( n6 ) , 
    .B1 ( PEout[126] ) , .B2 ( PEready[15] ) , .C ( n72 ) , 
    .X ( newDist[6] ) ) ;
SAEDRVT14_OA21B_1 U74 ( .A1 ( n73 ) , .A2 ( n74 ) , .B ( n10 ) , .X ( n72 ) ) ;
SAEDRVT14_AO221_0P5 U75 ( .A1 ( PEout[94] ) , .A2 ( n11 ) , 
    .B1 ( PEout[110] ) , .B2 ( PEready[13] ) , .C ( n75 ) , .X ( n74 ) ) ;
SAEDRVT14_AO21B_0P5 U76 ( .A1 ( PEout[78] ) , .A2 ( n13 ) , .B ( n76 ) , 
    .X ( n75 ) ) ;
SAEDRVT14_OAI21_0P5 U77 ( .A1 ( n77 ) , .A2 ( n78 ) , .B ( n17 ) , 
    .X ( n76 ) ) ;
SAEDRVT14_AO221_0P5 U78 ( .A1 ( PEout[46] ) , .A2 ( n18 ) , 
    .B1 ( PEout[38] ) , .B2 ( n19 ) , .C ( n79 ) , .X ( n78 ) ) ;
SAEDRVT14_AO22_0P75 U79 ( .A1 ( PEout[54] ) , .A2 ( PEready[6] ) , 
    .B1 ( PEout[30] ) , .B2 ( n21 ) , .X ( n79 ) ) ;
SAEDRVT14_AO221_0P5 U80 ( .A1 ( PEout[6] ) , .A2 ( n22 ) , .B1 ( PEout[22] ) , 
    .B2 ( n23 ) , .C ( n80 ) , .X ( n77 ) ) ;
SAEDRVT14_AO21B_0P5 U81 ( .A1 ( PEout[14] ) , .A2 ( n25 ) , .B ( n26 ) , 
    .X ( n80 ) ) ;
SAEDRVT14_AO221_0P5 U82 ( .A1 ( PEout[70] ) , .A2 ( n27 ) , 
    .B1 ( PEout[62] ) , .B2 ( n28 ) , .C ( n81 ) , .X ( n73 ) ) ;
SAEDRVT14_AO22_0P75 U83 ( .A1 ( PEout[102] ) , .A2 ( n30 ) , 
    .B1 ( PEout[86] ) , .B2 ( n31 ) , .X ( n81 ) ) ;
SAEDRVT14_AO221_0P5 U84 ( .A1 ( n3 ) , .A2 ( newDist[7] ) , 
    .B1 ( BestDist[7] ) , .B2 ( n4 ) , .C ( n5 ) , .X ( n124 ) ) ;
SAEDRVT14_AO221_0P5 U85 ( .A1 ( PEout[119] ) , .A2 ( n6 ) , 
    .B1 ( PEready[15] ) , .B2 ( PEout[127] ) , .C ( n82 ) , 
    .X ( newDist[7] ) ) ;
SAEDRVT14_OA21B_1 U86 ( .A1 ( n83 ) , .A2 ( n84 ) , .B ( n10 ) , .X ( n82 ) ) ;
SAEDRVT14_AO221_0P5 U87 ( .A1 ( PEout[95] ) , .A2 ( n11 ) , 
    .B1 ( PEready[13] ) , .B2 ( PEout[111] ) , .C ( n85 ) , .X ( n84 ) ) ;
SAEDRVT14_AO21B_0P5 U88 ( .A1 ( PEout[79] ) , .A2 ( n13 ) , .B ( n86 ) , 
    .X ( n85 ) ) ;
SAEDRVT14_OAI21_0P5 U89 ( .A1 ( n87 ) , .A2 ( n88 ) , .B ( n17 ) , 
    .X ( n86 ) ) ;
SAEDRVT14_AO221_0P5 U90 ( .A1 ( PEout[47] ) , .A2 ( n18 ) , 
    .B1 ( PEout[39] ) , .B2 ( n19 ) , .C ( n89 ) , .X ( n88 ) ) ;
SAEDRVT14_AO22_0P75 U91 ( .A1 ( PEready[6] ) , .A2 ( PEout[55] ) , 
    .B1 ( PEout[31] ) , .B2 ( n21 ) , .X ( n89 ) ) ;
SAEDRVT14_AO221_0P5 U92 ( .A1 ( PEout[7] ) , .A2 ( n22 ) , .B1 ( PEout[23] ) , 
    .B2 ( n23 ) , .C ( n90 ) , .X ( n87 ) ) ;
SAEDRVT14_AO21B_0P5 U93 ( .A1 ( PEout[15] ) , .A2 ( n25 ) , .B ( n26 ) , 
    .X ( n90 ) ) ;
SAEDRVT14_AO221_0P5 U94 ( .A1 ( PEout[71] ) , .A2 ( n27 ) , 
    .B1 ( PEout[63] ) , .B2 ( n28 ) , .C ( n91 ) , .X ( n83 ) ) ;
SAEDRVT14_AO22_0P75 U95 ( .A1 ( PEout[103] ) , .A2 ( n30 ) , 
    .B1 ( PEout[87] ) , .B2 ( n31 ) , .X ( n91 ) ) ;
SAEDRVT14_INV_0P5 U97 ( .A ( CompStart ) , .X ( n5 ) ) ;
SAEDRVT14_INV_0P5 U103 ( .A ( n99 ) , .X ( n17 ) ) ;
SAEDRVT14_AO221_0P5 U104 ( .A1 ( PEout[40] ) , .A2 ( n18 ) , 
    .B1 ( PEout[32] ) , .B2 ( n19 ) , .C ( n100 ) , .X ( n98 ) ) ;
SAEDRVT14_AO22_0P75 U105 ( .A1 ( PEout[48] ) , .A2 ( PEready[6] ) , 
    .B1 ( PEout[24] ) , .B2 ( n21 ) , .X ( n100 ) ) ;
SAEDRVT14_INV_0P5 U107 ( .A ( PEready[4] ) , .X ( n101 ) ) ;
SAEDRVT14_AN2_MM_0P5 U108 ( .A1 ( PEready[4] ) , .A2 ( n102 ) , .X ( n19 ) ) ;
SAEDLVT14_NR2B_U_0P5 U109 ( .A ( PEready[5] ) , .B ( PEready[6] ) , 
    .X ( n18 ) ) ;
SAEDLVT14_NR2B_U_0P5 U112 ( .A ( PEready[1] ) , .B ( n104 ) , .X ( n25 ) ) ;
SAEDRVT14_AN2_MM_0P5 U113 ( .A1 ( PEready[2] ) , .A2 ( n105 ) , .X ( n23 ) ) ;
SAEDRVT14_NR3B_1 U114 ( .A ( PEready[9] ) , .B1 ( PEready[10] ) , 
    .B2 ( n106 ) , .X ( n13 ) ) ;
SAEDRVT14_NR3B_1 U115 ( .A ( PEready[11] ) , .B1 ( PEready[13] ) , 
    .B2 ( PEready[12] ) , .X ( n11 ) ) ;
SAEDRVT14_AO221_0P5 U116 ( .A1 ( PEout[64] ) , .A2 ( n27 ) , 
    .B1 ( PEout[56] ) , .B2 ( n28 ) , .C ( n107 ) , .X ( n93 ) ) ;
SAEDRVT14_AO22_0P75 U117 ( .A1 ( PEout[96] ) , .A2 ( n30 ) , 
    .B1 ( PEout[80] ) , .B2 ( n31 ) , .X ( n107 ) ) ;
SAEDLVT14_NR2B_U_0P5 U118 ( .A ( PEready[10] ) , .B ( n106 ) , .X ( n31 ) ) ;
SAEDLVT14_NR2B_U_0P5 U119 ( .A ( PEready[12] ) , .B ( PEready[13] ) , 
    .X ( n30 ) ) ;
SAEDRVT14_AN2_MM_0P5 U120 ( .A1 ( PEready[7] ) , .A2 ( n108 ) , .X ( n28 ) ) ;
SAEDLVT14_NR2B_U_0P5 U121 ( .A ( PEready[8] ) , .B ( n109 ) , .X ( n27 ) ) ;
SAEDLVT14_NR2B_U_0P5 U122 ( .A ( PEready[14] ) , .B ( PEready[15] ) , 
    .X ( n6 ) ) ;
SAEDRVT14_OR2_0P5 U125 ( .A1 ( PEready[15] ) , .A2 ( PEready[14] ) , 
    .X ( n10 ) ) ;
SAEDRVT14_ND2B_U_0P5 U126 ( .A ( PEready[7] ) , .B ( n108 ) , .X ( n99 ) ) ;
SAEDRVT14_NR2_1 U127 ( .A1 ( n109 ) , .A2 ( PEready[8] ) , .X ( n108 ) ) ;
SAEDRVT14_OR3_0P5 U128 ( .A1 ( PEready[9] ) , .A2 ( PEready[10] ) , 
    .A3 ( n106 ) , .X ( n109 ) ) ;
SAEDRVT14_OR3_0P5 U129 ( .A1 ( PEready[13] ) , .A2 ( PEready[12] ) , 
    .A3 ( PEready[11] ) , .X ( n106 ) ) ;
SAEDRVT14_LSRDPQ_1 \BestDist_reg[6] ( .D ( n123 ) , .CK ( ZCTSNET_0 ) , 
    .Q ( BestDist[6] ) ) ;
SAEDRVT14_LSRDPQ_1 \BestDist_reg[7] ( .D ( n124 ) , .CK ( ZCTSNET_0 ) , 
    .Q ( BestDist[7] ) ) ;
SAEDRVT14_FDP_V2LP_1 \BestDist_reg[0] ( .D ( n125 ) , .CK ( ZCTSNET_0 ) , 
    .Q ( BestDist[0] ) ) ;
SAEDRVT14_FDP_V2LP_1 \BestDist_reg[1] ( .D ( n118 ) , .CK ( ZCTSNET_0 ) , 
    .Q ( BestDist[1] ) ) ;
SAEDRVT14_FDP_V2LP_1 \BestDist_reg[2] ( .D ( n119 ) , .CK ( ZCTSNET_0 ) , 
    .Q ( BestDist[2] ) , .QN ( n146 ) ) ;
SAEDRVT14_FDP_V2LP_1 \BestDist_reg[4] ( .D ( n121 ) , .CK ( ZCTSNET_0 ) , 
    .Q ( BestDist[4] ) ) ;
SAEDRVT14_FDP_V2LP_1 \BestDist_reg[3] ( .D ( n120 ) , .CK ( ZCTSNET_0 ) , 
    .Q ( BestDist[3] ) ) ;
SAEDRVT14_FDP_V2LP_1 \BestDist_reg[5] ( .D ( n122 ) , .CK ( ZCTSNET_0 ) , 
    .Q ( BestDist[5] ) , .QN ( n148 ) ) ;
SAEDRVT14_FDP_V2LP_1 \motionY_reg[0] ( .D ( n114 ) , .CK ( ZCTSNET_0 ) , 
    .Q ( motionY[0] ) ) ;
SAEDRVT14_FDP_V2LP_1 \motionX_reg[0] ( .D ( n110 ) , .CK ( clock ) , 
    .Q ( motionX[0] ) ) ;
SAEDRVT14_FDP_V2LP_1 \motionY_reg[3] ( .D ( n117 ) , .CK ( clock ) , 
    .Q ( motionY[3] ) ) ;
SAEDRVT14_FDP_V2LP_1 \motionY_reg[2] ( .D ( n116 ) , .CK ( clock ) , 
    .Q ( motionY[2] ) ) ;
SAEDRVT14_FDP_V2LP_1 \motionY_reg[1] ( .D ( n115 ) , .CK ( clock ) , 
    .Q ( motionY[1] ) ) ;
SAEDRVT14_FDP_V2LP_1 \motionX_reg[3] ( .D ( n113 ) , .CK ( clock ) , 
    .Q ( motionX[3] ) ) ;
SAEDRVT14_FDP_V2LP_1 \motionX_reg[2] ( .D ( n112 ) , .CK ( clock ) , 
    .Q ( motionX[2] ) ) ;
SAEDRVT14_FDP_V2LP_1 \motionX_reg[1] ( .D ( n111 ) , .CK ( clock ) , 
    .Q ( motionX[1] ) ) ;
SAEDRVT14_AO221_0P5 U4 ( .A1 ( PEout[1] ) , .A2 ( n22 ) , .B1 ( PEout[17] ) , 
    .B2 ( n23 ) , .C ( n24 ) , .X ( n15 ) ) ;
SAEDRVT14_NR2_1 U12 ( .A1 ( n104 ) , .A2 ( PEready[1] ) , .X ( n22 ) ) ;
SAEDRVT14_AO21B_0P5 U13 ( .A1 ( PEout[9] ) , .A2 ( n25 ) , .B ( n26 ) , 
    .X ( n24 ) ) ;
SAEDRVT14_ND2B_U_0P5 U14 ( .A ( PEready[2] ) , .B ( n105 ) , .X ( n104 ) ) ;
SAEDRVT14_NR3B_1 U15 ( .A ( n102 ) , .B1 ( PEready[4] ) , .B2 ( PEready[3] ) , 
    .X ( n105 ) ) ;
SAEDRVT14_OR2B_PSECO_1 U16 ( .B ( newDist[0] ) , .A ( BestDist[0] ) , 
    .X ( n145 ) ) ;
SAEDRVT14_AO221_0P5 U17 ( .A1 ( PEout[0] ) , .A2 ( n22 ) , .B1 ( PEout[16] ) , 
    .B2 ( n23 ) , .C ( n103 ) , .X ( n97 ) ) ;
SAEDRVT14_AO21B_0P5 U20 ( .A1 ( PEout[8] ) , .A2 ( n25 ) , .B ( n26 ) , 
    .X ( n103 ) ) ;
SAEDRVT14_OA21B_1 U21 ( .A1 ( n93 ) , .A2 ( n94 ) , .B ( n10 ) , .X ( n92 ) ) ;
SAEDRVT14_AN3_0P5 U25 ( .A1 ( n102 ) , .A2 ( n101 ) , .A3 ( PEready[3] ) , 
    .X ( n21 ) ) ;
SAEDRVT14_ND2B_U_0P5 U26 ( .A ( PEready[0] ) , .B ( n22 ) , .X ( n26 ) ) ;
SAEDRVT14_AO221_0P5 U27 ( .A1 ( PEout[88] ) , .A2 ( n11 ) , 
    .B1 ( PEout[104] ) , .B2 ( PEready[13] ) , .C ( n95 ) , .X ( n94 ) ) ;
SAEDRVT14_AO21B_0P5 U28 ( .A1 ( PEout[72] ) , .A2 ( n13 ) , .B ( n96 ) , 
    .X ( n95 ) ) ;
SAEDRVT14_OAI21_0P5 U36 ( .A1 ( n97 ) , .A2 ( n98 ) , .B ( n17 ) , 
    .X ( n96 ) ) ;
SAEDRVT14_OAI21_0P5 U37 ( .A1 ( newDist[7] ) , .A2 ( n153 ) , .B ( n152 ) , 
    .X ( N169 ) ) ;
SAEDRVT14_AO221_0P5 U48 ( .A1 ( PEout[89] ) , .A2 ( n11 ) , 
    .B1 ( PEout[105] ) , .B2 ( PEready[13] ) , .C ( n12 ) , .X ( n9 ) ) ;
SAEDRVT14_AO21B_0P5 U49 ( .A1 ( PEout[73] ) , .A2 ( n13 ) , .B ( n14 ) , 
    .X ( n12 ) ) ;
SAEDRVT14_OAI21_0P5 U50 ( .A1 ( n15 ) , .A2 ( n16 ) , .B ( n17 ) , 
    .X ( n14 ) ) ;
SAEDRVT14_AO221_0P5 U60 ( .A1 ( PEout[113] ) , .A2 ( n6 ) , 
    .B1 ( PEout[121] ) , .B2 ( PEready[15] ) , .C ( n7 ) , .X ( newDist[1] ) ) ;
SAEDRVT14_OA21B_1 U61 ( .A1 ( n8 ) , .A2 ( n9 ) , .B ( n10 ) , .X ( n7 ) ) ;
SAEDRVT14_AO221_0P5 U63 ( .A1 ( n3 ) , .A2 ( newDist[0] ) , 
    .B1 ( BestDist[0] ) , .B2 ( n4 ) , .C ( n5 ) , .X ( n125 ) ) ;
SAEDRVT14_AO221_0P5 U64 ( .A1 ( PEout[112] ) , .A2 ( n6 ) , 
    .B1 ( PEout[120] ) , .B2 ( PEready[15] ) , .C ( n92 ) , 
    .X ( newDist[0] ) ) ;
SAEDRVT14_AO21B_0P5 U65 ( .A1 ( PEout[74] ) , .A2 ( n13 ) , .B ( n36 ) , 
    .X ( n35 ) ) ;
SAEDRVT14_AO221_0P5 U69 ( .A1 ( PEout[90] ) , .A2 ( n11 ) , 
    .B1 ( PEout[106] ) , .B2 ( PEready[13] ) , .C ( n35 ) , .X ( n34 ) ) ;
SAEDRVT14_OA21B_1 U96 ( .A1 ( n33 ) , .A2 ( n34 ) , .B ( n10 ) , .X ( n32 ) ) ;
SAEDRVT14_OAI22_0P5 ctmTdsLR_1_48 ( .A1 ( BestDist[3] ) , .A2 ( n141 ) , 
    .B1 ( BestDist[4] ) , .B2 ( n139 ) , .X ( tmp_net4 ) ) ;
SAEDRVT14_AO221_0P5 U99 ( .A1 ( PEout[114] ) , .A2 ( n6 ) , 
    .B1 ( PEout[122] ) , .B2 ( PEready[15] ) , .C ( n32 ) , 
    .X ( newDist[2] ) ) ;
SAEDRVT14_OA21B_1 U100 ( .A1 ( newDist[1] ) , .A2 ( n145 ) , 
    .B ( BestDist[1] ) , .X ( n144 ) ) ;
SAEDRVT14_AO221_0P5 U101 ( .A1 ( n3 ) , .A2 ( newDist[1] ) , 
    .B1 ( BestDist[1] ) , .B2 ( n4 ) , .C ( n5 ) , .X ( n118 ) ) ;
SAEDRVT14_NR2_1 U102 ( .A1 ( PEready[5] ) , .A2 ( PEready[6] ) , .X ( n102 ) ) ;
SAEDRVT14_AO221_0P5 U106 ( .A1 ( n3 ) , .A2 ( newDist[4] ) , 
    .B1 ( BestDist[4] ) , .B2 ( n4 ) , .C ( n5 ) , .X ( n121 ) ) ;
SAEDRVT14_AO221_0P5 U110 ( .A1 ( n3 ) , .A2 ( newDist[3] ) , 
    .B1 ( BestDist[3] ) , .B2 ( n4 ) , .C ( n5 ) , .X ( n120 ) ) ;
SAEDRVT14_AO21B_0P5 U111 ( .A1 ( PEout[13] ) , .A2 ( n25 ) , .B ( n26 ) , 
    .X ( n70 ) ) ;
SAEDRVT14_OA21_U_0P5 ctmTdsLR_1_2615 ( .A1 ( tmp_net5 ) , .A2 ( tmp_net4 ) , 
    .B ( tmp_net26 ) , .X ( n147 ) ) ;
SAEDRVT14_AO21B_0P5 U124 ( .A1 ( PEout[77] ) , .A2 ( n13 ) , .B ( n66 ) , 
    .X ( n65 ) ) ;
SAEDRVT14_OAI21_0P5 U130 ( .A1 ( n67 ) , .A2 ( n68 ) , .B ( n17 ) , 
    .X ( n66 ) ) ;
SAEDRVT14_AO221_0P5 U131 ( .A1 ( n3 ) , .A2 ( newDist[5] ) , 
    .B1 ( BestDist[5] ) , .B2 ( n4 ) , .C ( n5 ) , .X ( n122 ) ) ;
SAEDRVT14_INV_0P5 U132 ( .A ( n4 ) , .X ( n3 ) ) ;
SAEDRVT14_AO221_0P5 U133 ( .A1 ( PEout[93] ) , .A2 ( n11 ) , 
    .B1 ( PEout[109] ) , .B2 ( PEready[13] ) , .C ( n65 ) , .X ( n64 ) ) ;
SAEDRVT14_OA21B_1 U134 ( .A1 ( n53 ) , .A2 ( n54 ) , .B ( n10 ) , .X ( n52 ) ) ;
SAEDRVT14_INV_0P5 U135 ( .A ( newDist[4] ) , .X ( n139 ) ) ;
SAEDRVT14_AO221_0P5 U136 ( .A1 ( PEout[116] ) , .A2 ( n6 ) , 
    .B1 ( PEout[124] ) , .B2 ( PEready[15] ) , .C ( n52 ) , 
    .X ( newDist[4] ) ) ;
SAEDRVT14_OA21_U_0P5 ctmTdsLR_2_2616 ( .A1 ( tmp_net23 ) , .A2 ( tmp_net24 ) , 
    .B ( tmp_net3 ) , .X ( tmp_net5 ) ) ;
SAEDRVT14_AO221_0P5 ctmTdsLR_2_60 ( .A1 ( n150 ) , .A2 ( newDist[6] ) , 
    .B1 ( n148 ) , .B2 ( newDist[5] ) , .C ( n147 ) , .X ( n149 ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_66 ( .A1 ( newDist[7] ) , .A2 ( n153 ) , 
    .B ( n151 ) , .X ( n152 ) ) ;
SAEDRVT14_AO221_0P5 U140 ( .A1 ( PEout[117] ) , .A2 ( n6 ) , 
    .B1 ( PEout[125] ) , .B2 ( PEready[15] ) , .C ( n62 ) , 
    .X ( newDist[5] ) ) ;
SAEDLVT14_OA22_U_0P5 ctmTdsLR_2_30_roptpi_2638 ( .A1 ( newDist[2] ) , 
    .A2 ( tmp_net2 ) , .B1 ( tmp_net1 ) , .B2 ( n144 ) , .X ( tmp_net3 ) ) ;
SAEDRVT14_INV_0P5 U142 ( .A ( newDist[3] ) , .X ( n141 ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_1_53 ( .A ( BestDist[5] ) , .X ( tmp_net6 ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_3_2617 ( .A ( BestDist[3] ) , .X ( tmp_net23 ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_4_2618 ( .A ( n141 ) , .X ( tmp_net24 ) ) ;
SAEDRVT14_AO221_0P5 U147 ( .A1 ( PEout[115] ) , .A2 ( n6 ) , 
    .B1 ( PEout[123] ) , .B2 ( PEready[15] ) , .C ( n42 ) , 
    .X ( newDist[3] ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_1_29 ( .A ( BestDist[2] ) , .X ( tmp_net2 ) ) ;
SAEDRVT14_OA21_U_0P5 ctmTdsLR_6_2620 ( .A1 ( newDist[5] ) , .A2 ( tmp_net6 ) , 
    .B ( tmp_net7 ) , .X ( tmp_net26 ) ) ;
SAEDRVT14_OAI21_0P5 U150 ( .A1 ( newDist[6] ) , .A2 ( n150 ) , .B ( n149 ) , 
    .X ( n151 ) ) ;
SAEDRVT14_OAI311_0P5 U151 ( .A1 ( n26 ) , .A2 ( n99 ) , .A3 ( n10 ) , 
    .B1 ( CompStart ) , .B2 ( N169 ) , .X ( n4 ) ) ;
SAEDRVT14_INV_0P5 U152 ( .A ( BestDist[7] ) , .X ( n153 ) ) ;
SAEDRVT14_INV_0P5 U153 ( .A ( BestDist[6] ) , .X ( n150 ) ) ;
SAEDRVT14_AO22_0P5 ctmTdsLR_1_14 ( .A1 ( newDist[1] ) , .A2 ( n145 ) , 
    .B1 ( n146 ) , .B2 ( newDist[2] ) , .X ( tmp_net1 ) ) ;
SAEDHVT14_ND2_MM_0P5 ctmTdsLR_2_54 ( .A1 ( BestDist[4] ) , .A2 ( n139 ) , 
    .X ( tmp_net7 ) ) ;
endmodule


