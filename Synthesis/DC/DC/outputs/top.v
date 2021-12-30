/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Thu Dec 30 20:16:37 2021
/////////////////////////////////////////////////////////////


module enc_dec_rgf_AMBA_ADDR_WIDTH32_AMBA_WORD32 ( clk, rstn, paddr, pwdata, 
        penable, psel, pwrite, prdata, regs_wr_en, ctrl, data_in, 
        codeword_width, noise );
  input [31:0] paddr;
  input [31:0] pwdata;
  output [31:0] prdata;
  output [31:0] ctrl;
  output [31:0] data_in;
  output [31:0] codeword_width;
  output [31:0] noise;
  input clk, rstn, penable, psel, pwrite;
  output regs_wr_en;
  wire   n339, n340, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60,
         N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74,
         N75, N76, N77, N78, N79, N80, N81, N82, n37, n70, n71, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n2, n3, n4, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n63, n64, n65, n66, n67,
         n68, n69, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n118, n151, n152, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n338;

  DFFRHQX4 \data_in_reg[2]  ( .D(n220), .CK(clk), .RN(rstn), .Q(data_in[2]) );
  DFFRHQX4 \codeword_width_reg[1]  ( .D(n187), .CK(clk), .RN(rstn), .Q(n339)
         );
  DFFRHQX4 \codeword_width_reg[0]  ( .D(n186), .CK(clk), .RN(rstn), .Q(n340)
         );
  DFFRX4 \ctrl_reg[0]  ( .D(n250), .CK(clk), .RN(rstn), .Q(ctrl[0]), .QN(n96)
         );
  DFFRHQX1 \ctrl_reg[31]  ( .D(n281), .CK(clk), .RN(rstn), .Q(ctrl[31]) );
  DFFRHQX1 \ctrl_reg[30]  ( .D(n280), .CK(clk), .RN(rstn), .Q(ctrl[30]) );
  DFFRHQX1 \ctrl_reg[29]  ( .D(n279), .CK(clk), .RN(rstn), .Q(ctrl[29]) );
  DFFRHQX1 \ctrl_reg[28]  ( .D(n278), .CK(clk), .RN(rstn), .Q(ctrl[28]) );
  DFFRHQX1 \ctrl_reg[27]  ( .D(n277), .CK(clk), .RN(rstn), .Q(ctrl[27]) );
  DFFRHQX1 \ctrl_reg[26]  ( .D(n276), .CK(clk), .RN(rstn), .Q(ctrl[26]) );
  DFFRHQX1 \ctrl_reg[25]  ( .D(n275), .CK(clk), .RN(rstn), .Q(ctrl[25]) );
  DFFRHQX1 \ctrl_reg[24]  ( .D(n274), .CK(clk), .RN(rstn), .Q(ctrl[24]) );
  DFFRHQX1 \ctrl_reg[23]  ( .D(n273), .CK(clk), .RN(rstn), .Q(ctrl[23]) );
  DFFRHQX1 \ctrl_reg[22]  ( .D(n272), .CK(clk), .RN(rstn), .Q(ctrl[22]) );
  DFFRHQX1 \ctrl_reg[21]  ( .D(n271), .CK(clk), .RN(rstn), .Q(ctrl[21]) );
  DFFRHQX1 \ctrl_reg[20]  ( .D(n270), .CK(clk), .RN(rstn), .Q(ctrl[20]) );
  DFFRHQX1 \ctrl_reg[19]  ( .D(n269), .CK(clk), .RN(rstn), .Q(ctrl[19]) );
  DFFRHQX1 \ctrl_reg[18]  ( .D(n268), .CK(clk), .RN(rstn), .Q(ctrl[18]) );
  DFFRHQX1 \ctrl_reg[17]  ( .D(n267), .CK(clk), .RN(rstn), .Q(ctrl[17]) );
  DFFRHQX1 \ctrl_reg[16]  ( .D(n266), .CK(clk), .RN(rstn), .Q(ctrl[16]) );
  DFFRHQX1 \ctrl_reg[15]  ( .D(n265), .CK(clk), .RN(rstn), .Q(ctrl[15]) );
  DFFRHQX1 \ctrl_reg[14]  ( .D(n264), .CK(clk), .RN(rstn), .Q(ctrl[14]) );
  DFFRHQX1 \ctrl_reg[13]  ( .D(n263), .CK(clk), .RN(rstn), .Q(ctrl[13]) );
  DFFRHQX1 \ctrl_reg[12]  ( .D(n262), .CK(clk), .RN(rstn), .Q(ctrl[12]) );
  DFFRHQX1 \ctrl_reg[11]  ( .D(n261), .CK(clk), .RN(rstn), .Q(ctrl[11]) );
  DFFRHQX1 \ctrl_reg[10]  ( .D(n260), .CK(clk), .RN(rstn), .Q(ctrl[10]) );
  DFFRHQX1 \ctrl_reg[9]  ( .D(n259), .CK(clk), .RN(rstn), .Q(ctrl[9]) );
  DFFRHQX1 \ctrl_reg[8]  ( .D(n258), .CK(clk), .RN(rstn), .Q(ctrl[8]) );
  DFFRHQX1 \ctrl_reg[7]  ( .D(n257), .CK(clk), .RN(rstn), .Q(ctrl[7]) );
  DFFRHQX1 \ctrl_reg[6]  ( .D(n256), .CK(clk), .RN(rstn), .Q(ctrl[6]) );
  DFFRHQX1 \ctrl_reg[5]  ( .D(n255), .CK(clk), .RN(rstn), .Q(ctrl[5]) );
  DFFRHQX1 \ctrl_reg[4]  ( .D(n254), .CK(clk), .RN(rstn), .Q(ctrl[4]) );
  DFFRHQX1 \ctrl_reg[3]  ( .D(n253), .CK(clk), .RN(rstn), .Q(ctrl[3]) );
  DFFRHQX1 \ctrl_reg[2]  ( .D(n252), .CK(clk), .RN(rstn), .Q(ctrl[2]) );
  DFFRHQX1 \codeword_width_reg[31]  ( .D(n217), .CK(clk), .RN(rstn), .Q(
        codeword_width[31]) );
  DFFRHQX1 \codeword_width_reg[30]  ( .D(n216), .CK(clk), .RN(rstn), .Q(
        codeword_width[30]) );
  DFFRHQX1 \codeword_width_reg[29]  ( .D(n215), .CK(clk), .RN(rstn), .Q(
        codeword_width[29]) );
  DFFRHQX1 \codeword_width_reg[28]  ( .D(n214), .CK(clk), .RN(rstn), .Q(
        codeword_width[28]) );
  DFFRHQX1 \codeword_width_reg[27]  ( .D(n213), .CK(clk), .RN(rstn), .Q(
        codeword_width[27]) );
  DFFRHQX1 \codeword_width_reg[26]  ( .D(n212), .CK(clk), .RN(rstn), .Q(
        codeword_width[26]) );
  DFFRHQX1 \codeword_width_reg[25]  ( .D(n211), .CK(clk), .RN(rstn), .Q(
        codeword_width[25]) );
  DFFRHQX1 \codeword_width_reg[24]  ( .D(n210), .CK(clk), .RN(rstn), .Q(
        codeword_width[24]) );
  DFFRHQX1 \codeword_width_reg[23]  ( .D(n209), .CK(clk), .RN(rstn), .Q(
        codeword_width[23]) );
  DFFRHQX1 \codeword_width_reg[22]  ( .D(n208), .CK(clk), .RN(rstn), .Q(
        codeword_width[22]) );
  DFFRHQX1 \codeword_width_reg[21]  ( .D(n207), .CK(clk), .RN(rstn), .Q(
        codeword_width[21]) );
  DFFRHQX1 \codeword_width_reg[20]  ( .D(n206), .CK(clk), .RN(rstn), .Q(
        codeword_width[20]) );
  DFFRHQX1 \codeword_width_reg[19]  ( .D(n205), .CK(clk), .RN(rstn), .Q(
        codeword_width[19]) );
  DFFRHQX1 \codeword_width_reg[18]  ( .D(n204), .CK(clk), .RN(rstn), .Q(
        codeword_width[18]) );
  DFFRHQX1 \codeword_width_reg[17]  ( .D(n203), .CK(clk), .RN(rstn), .Q(
        codeword_width[17]) );
  DFFRHQX1 \codeword_width_reg[16]  ( .D(n202), .CK(clk), .RN(rstn), .Q(
        codeword_width[16]) );
  DFFRHQX1 \codeword_width_reg[15]  ( .D(n201), .CK(clk), .RN(rstn), .Q(
        codeword_width[15]) );
  DFFRHQX1 \codeword_width_reg[14]  ( .D(n200), .CK(clk), .RN(rstn), .Q(
        codeword_width[14]) );
  DFFRHQX1 \codeword_width_reg[13]  ( .D(n199), .CK(clk), .RN(rstn), .Q(
        codeword_width[13]) );
  DFFRHQX1 \codeword_width_reg[12]  ( .D(n198), .CK(clk), .RN(rstn), .Q(
        codeword_width[12]) );
  DFFRHQX1 \codeword_width_reg[11]  ( .D(n197), .CK(clk), .RN(rstn), .Q(
        codeword_width[11]) );
  DFFRHQX1 \codeword_width_reg[10]  ( .D(n196), .CK(clk), .RN(rstn), .Q(
        codeword_width[10]) );
  DFFRHQX1 \codeword_width_reg[9]  ( .D(n195), .CK(clk), .RN(rstn), .Q(
        codeword_width[9]) );
  DFFRHQX1 \codeword_width_reg[8]  ( .D(n194), .CK(clk), .RN(rstn), .Q(
        codeword_width[8]) );
  DFFRHQX1 \codeword_width_reg[7]  ( .D(n193), .CK(clk), .RN(rstn), .Q(
        codeword_width[7]) );
  DFFRHQX1 \codeword_width_reg[6]  ( .D(n192), .CK(clk), .RN(rstn), .Q(
        codeword_width[6]) );
  DFFRHQX1 \codeword_width_reg[5]  ( .D(n191), .CK(clk), .RN(rstn), .Q(
        codeword_width[5]) );
  DFFRHQX1 \codeword_width_reg[4]  ( .D(n190), .CK(clk), .RN(rstn), .Q(
        codeword_width[4]) );
  DFFRHQX1 \codeword_width_reg[3]  ( .D(n189), .CK(clk), .RN(rstn), .Q(
        codeword_width[3]) );
  DFFRHQX1 \codeword_width_reg[2]  ( .D(n188), .CK(clk), .RN(rstn), .Q(
        codeword_width[2]) );
  DFFRHQX2 \data_in_reg[18]  ( .D(n236), .CK(clk), .RN(rstn), .Q(data_in[18])
         );
  DFFRHQX2 \data_in_reg[24]  ( .D(n242), .CK(clk), .RN(rstn), .Q(data_in[24])
         );
  DFFRHQX2 \data_in_reg[20]  ( .D(n238), .CK(clk), .RN(rstn), .Q(data_in[20])
         );
  DFFRHQX2 \data_in_reg[25]  ( .D(n243), .CK(clk), .RN(rstn), .Q(data_in[25])
         );
  DFFRHQX2 \data_in_reg[9]  ( .D(n227), .CK(clk), .RN(rstn), .Q(data_in[9]) );
  TLATX1 \read_reg_reg[31]  ( .G(n59), .D(N82), .Q(prdata[31]) );
  TLATX1 \read_reg_reg[30]  ( .G(n60), .D(N81), .Q(prdata[30]) );
  TLATX1 \read_reg_reg[29]  ( .G(n59), .D(N80), .Q(prdata[29]) );
  TLATX1 \read_reg_reg[28]  ( .G(n60), .D(N79), .Q(prdata[28]) );
  TLATX1 \read_reg_reg[27]  ( .G(N50), .D(N78), .Q(prdata[27]) );
  TLATX1 \read_reg_reg[26]  ( .G(N50), .D(N77), .Q(prdata[26]) );
  TLATX1 \read_reg_reg[25]  ( .G(N50), .D(N76), .Q(prdata[25]) );
  TLATX1 \read_reg_reg[24]  ( .G(N50), .D(N75), .Q(prdata[24]) );
  TLATX1 \read_reg_reg[23]  ( .G(n60), .D(N74), .Q(prdata[23]) );
  TLATX1 \read_reg_reg[22]  ( .G(n60), .D(N73), .Q(prdata[22]) );
  TLATX1 \read_reg_reg[21]  ( .G(n60), .D(N72), .Q(prdata[21]) );
  TLATX1 \read_reg_reg[20]  ( .G(n60), .D(N71), .Q(prdata[20]) );
  TLATX1 \read_reg_reg[19]  ( .G(n60), .D(N70), .Q(prdata[19]) );
  TLATX1 \read_reg_reg[18]  ( .G(n60), .D(N69), .Q(prdata[18]) );
  TLATX1 \read_reg_reg[17]  ( .G(n60), .D(N68), .Q(prdata[17]) );
  TLATX1 \read_reg_reg[16]  ( .G(n60), .D(N67), .Q(prdata[16]) );
  TLATX1 \read_reg_reg[15]  ( .G(n60), .D(N66), .Q(prdata[15]) );
  TLATX1 \read_reg_reg[14]  ( .G(n60), .D(N65), .Q(prdata[14]) );
  TLATX1 \read_reg_reg[13]  ( .G(n60), .D(N64), .Q(prdata[13]) );
  TLATX1 \read_reg_reg[12]  ( .G(n60), .D(N63), .Q(prdata[12]) );
  TLATX1 \read_reg_reg[11]  ( .G(n59), .D(N62), .Q(prdata[11]) );
  TLATX1 \read_reg_reg[10]  ( .G(n59), .D(N61), .Q(prdata[10]) );
  TLATX1 \read_reg_reg[9]  ( .G(n59), .D(N60), .Q(prdata[9]) );
  TLATX1 \read_reg_reg[8]  ( .G(n59), .D(N59), .Q(prdata[8]) );
  TLATX1 \read_reg_reg[7]  ( .G(n59), .D(N58), .Q(prdata[7]) );
  TLATX1 \read_reg_reg[6]  ( .G(n59), .D(N57), .Q(prdata[6]) );
  TLATX1 \read_reg_reg[5]  ( .G(n59), .D(N56), .Q(prdata[5]) );
  TLATX1 \read_reg_reg[4]  ( .G(n59), .D(N55), .Q(prdata[4]) );
  TLATX1 \read_reg_reg[3]  ( .G(n59), .D(N54), .Q(prdata[3]) );
  TLATX1 \read_reg_reg[2]  ( .G(n59), .D(N53), .Q(prdata[2]) );
  TLATX1 \read_reg_reg[1]  ( .G(n59), .D(N52), .Q(prdata[1]) );
  TLATX1 \read_reg_reg[0]  ( .G(n59), .D(N51), .Q(prdata[0]) );
  DFFRHQX2 \noise_reg[19]  ( .D(n173), .CK(clk), .RN(rstn), .Q(noise[19]) );
  DFFRHQX2 \noise_reg[9]  ( .D(n163), .CK(clk), .RN(rstn), .Q(noise[9]) );
  DFFRHQX2 \noise_reg[21]  ( .D(n175), .CK(clk), .RN(rstn), .Q(noise[21]) );
  DFFRHQX2 \noise_reg[25]  ( .D(n179), .CK(clk), .RN(rstn), .Q(noise[25]) );
  DFFRHQX2 \noise_reg[23]  ( .D(n177), .CK(clk), .RN(rstn), .Q(noise[23]) );
  DFFRHQX4 \ctrl_reg[1]  ( .D(n251), .CK(clk), .RN(rstn), .Q(n6) );
  DFFRHQX2 \noise_reg[22]  ( .D(n176), .CK(clk), .RN(rstn), .Q(noise[22]) );
  DFFRHQX2 \noise_reg[30]  ( .D(n184), .CK(clk), .RN(rstn), .Q(noise[30]) );
  DFFRX1 \data_in_reg[22]  ( .D(n240), .CK(clk), .RN(rstn), .Q(data_in[22]), 
        .QN(n151) );
  DFFRHQX2 \data_in_reg[23]  ( .D(n241), .CK(clk), .RN(rstn), .Q(data_in[23])
         );
  DFFRHQX2 \data_in_reg[21]  ( .D(n239), .CK(clk), .RN(rstn), .Q(data_in[21])
         );
  DFFRHQX2 \data_in_reg[19]  ( .D(n237), .CK(clk), .RN(rstn), .Q(data_in[19])
         );
  DFFRHQX2 \data_in_reg[17]  ( .D(n235), .CK(clk), .RN(rstn), .Q(data_in[17])
         );
  DFFRHQX2 \data_in_reg[16]  ( .D(n234), .CK(clk), .RN(rstn), .Q(data_in[16])
         );
  DFFRHQX2 \data_in_reg[15]  ( .D(n233), .CK(clk), .RN(rstn), .Q(data_in[15])
         );
  DFFRHQX2 \data_in_reg[14]  ( .D(n232), .CK(clk), .RN(rstn), .Q(data_in[14])
         );
  DFFRHQX2 \data_in_reg[13]  ( .D(n231), .CK(clk), .RN(rstn), .Q(data_in[13])
         );
  DFFRHQX2 \data_in_reg[12]  ( .D(n230), .CK(clk), .RN(rstn), .Q(data_in[12])
         );
  DFFRHQX2 \data_in_reg[11]  ( .D(n229), .CK(clk), .RN(rstn), .Q(data_in[11])
         );
  DFFRHQX2 \data_in_reg[10]  ( .D(n228), .CK(clk), .RN(rstn), .Q(data_in[10])
         );
  DFFRHQX2 \data_in_reg[8]  ( .D(n226), .CK(clk), .RN(rstn), .Q(data_in[8]) );
  DFFRHQX2 \data_in_reg[7]  ( .D(n225), .CK(clk), .RN(rstn), .Q(data_in[7]) );
  DFFRHQX2 \data_in_reg[6]  ( .D(n224), .CK(clk), .RN(rstn), .Q(data_in[6]) );
  DFFRHQX2 \data_in_reg[5]  ( .D(n223), .CK(clk), .RN(rstn), .Q(data_in[5]) );
  DFFRHQX2 \data_in_reg[4]  ( .D(n222), .CK(clk), .RN(rstn), .Q(data_in[4]) );
  DFFRHQX2 \data_in_reg[3]  ( .D(n221), .CK(clk), .RN(rstn), .Q(data_in[3]) );
  DFFRHQX2 \data_in_reg[1]  ( .D(n219), .CK(clk), .RN(rstn), .Q(data_in[1]) );
  DFFRHQX2 \data_in_reg[0]  ( .D(n218), .CK(clk), .RN(rstn), .Q(data_in[0]) );
  DFFRHQX2 \noise_reg[31]  ( .D(n185), .CK(clk), .RN(rstn), .Q(noise[31]) );
  DFFRHQX2 \noise_reg[29]  ( .D(n183), .CK(clk), .RN(rstn), .Q(noise[29]) );
  DFFRHQX2 \noise_reg[28]  ( .D(n182), .CK(clk), .RN(rstn), .Q(noise[28]) );
  DFFRHQX2 \noise_reg[27]  ( .D(n181), .CK(clk), .RN(rstn), .Q(noise[27]) );
  DFFRHQX2 \noise_reg[17]  ( .D(n171), .CK(clk), .RN(rstn), .Q(noise[17]) );
  DFFRHQX2 \noise_reg[16]  ( .D(n170), .CK(clk), .RN(rstn), .Q(noise[16]) );
  DFFRHQX2 \noise_reg[14]  ( .D(n168), .CK(clk), .RN(rstn), .Q(noise[14]) );
  DFFRHQX2 \noise_reg[13]  ( .D(n167), .CK(clk), .RN(rstn), .Q(noise[13]) );
  DFFRHQX2 \noise_reg[12]  ( .D(n166), .CK(clk), .RN(rstn), .Q(noise[12]) );
  DFFRHQX2 \noise_reg[11]  ( .D(n165), .CK(clk), .RN(rstn), .Q(noise[11]) );
  DFFRHQX2 \noise_reg[10]  ( .D(n164), .CK(clk), .RN(rstn), .Q(noise[10]) );
  DFFRHQX2 \noise_reg[8]  ( .D(n162), .CK(clk), .RN(rstn), .Q(noise[8]) );
  DFFRHQX2 \noise_reg[7]  ( .D(n161), .CK(clk), .RN(rstn), .Q(noise[7]) );
  DFFRHQX2 \noise_reg[6]  ( .D(n160), .CK(clk), .RN(rstn), .Q(noise[6]) );
  DFFRHQX2 \noise_reg[5]  ( .D(n159), .CK(clk), .RN(rstn), .Q(noise[5]) );
  DFFRHQX2 \noise_reg[4]  ( .D(n158), .CK(clk), .RN(rstn), .Q(noise[4]) );
  DFFRHQX2 \noise_reg[3]  ( .D(n157), .CK(clk), .RN(rstn), .Q(noise[3]) );
  DFFRHQX2 \noise_reg[2]  ( .D(n156), .CK(clk), .RN(rstn), .Q(noise[2]) );
  DFFRHQX1 \data_in_reg[28]  ( .D(n246), .CK(clk), .RN(rstn), .Q(data_in[28])
         );
  DFFRHQX1 \data_in_reg[27]  ( .D(n245), .CK(clk), .RN(rstn), .Q(data_in[27])
         );
  DFFRHQX1 \data_in_reg[29]  ( .D(n247), .CK(clk), .RN(rstn), .Q(data_in[29])
         );
  DFFRHQX2 \noise_reg[0]  ( .D(n154), .CK(clk), .RN(rstn), .Q(noise[0]) );
  DFFRHQX1 \data_in_reg[31]  ( .D(n249), .CK(clk), .RN(rstn), .Q(data_in[31])
         );
  DFFRHQX1 \data_in_reg[26]  ( .D(n244), .CK(clk), .RN(rstn), .Q(data_in[26])
         );
  DFFRHQX2 \noise_reg[18]  ( .D(n172), .CK(clk), .RN(rstn), .Q(noise[18]) );
  DFFRHQX2 \noise_reg[24]  ( .D(n178), .CK(clk), .RN(rstn), .Q(noise[24]) );
  DFFRHQX1 \data_in_reg[30]  ( .D(n248), .CK(clk), .RN(rstn), .Q(data_in[30])
         );
  DFFRHQX2 \noise_reg[20]  ( .D(n174), .CK(clk), .RN(rstn), .Q(noise[20]) );
  DFFRHQX2 \noise_reg[26]  ( .D(n180), .CK(clk), .RN(rstn), .Q(noise[26]) );
  DFFRHQX2 \noise_reg[1]  ( .D(n155), .CK(clk), .RN(rstn), .Q(noise[1]) );
  DFFRHQX2 \noise_reg[15]  ( .D(n169), .CK(clk), .RN(rstn), .Q(noise[15]) );
  BUFX4 U3 ( .A(n340), .Y(codeword_width[0]) );
  CLKINVXL U4 ( .A(ctrl[1]), .Y(n7) );
  BUFX16 U5 ( .A(n6), .Y(ctrl[1]) );
  AND3X2 U6 ( .A(regs_wr_en), .B(n304), .C(paddr[3]), .Y(n2) );
  AND3X2 U7 ( .A(paddr[2]), .B(regs_wr_en), .C(paddr[3]), .Y(n3) );
  OR3XL U8 ( .A(n303), .B(paddr[2]), .C(n338), .Y(n4) );
  CLKINVX8 U9 ( .A(n339), .Y(n63) );
  INVX8 U10 ( .A(n63), .Y(codeword_width[1]) );
  INVXL U11 ( .A(data_in[18]), .Y(n284) );
  INVXL U12 ( .A(data_in[20]), .Y(n282) );
  INVXL U13 ( .A(data_in[24]), .Y(n104) );
  INVXL U14 ( .A(data_in[9]), .Y(n293) );
  INVXL U15 ( .A(data_in[1]), .Y(n301) );
  INVXL U16 ( .A(data_in[26]), .Y(n102) );
  INVXL U17 ( .A(data_in[27]), .Y(n101) );
  INVXL U18 ( .A(data_in[29]), .Y(n99) );
  INVXL U19 ( .A(data_in[30]), .Y(n98) );
  INVXL U20 ( .A(data_in[31]), .Y(n97) );
  INVXL U21 ( .A(data_in[28]), .Y(n100) );
  INVXL U22 ( .A(data_in[0]), .Y(n302) );
  INVXL U23 ( .A(data_in[4]), .Y(n298) );
  INVXL U24 ( .A(data_in[6]), .Y(n296) );
  INVXL U25 ( .A(data_in[7]), .Y(n295) );
  INVXL U26 ( .A(data_in[23]), .Y(n118) );
  INVXL U27 ( .A(data_in[5]), .Y(n297) );
  INVXL U28 ( .A(data_in[13]), .Y(n289) );
  INVXL U29 ( .A(data_in[14]), .Y(n288) );
  NOR3BX1 U30 ( .AN(psel), .B(penable), .C(pwrite), .Y(n153) );
  AOI22XL U31 ( .A0(n12), .A1(codeword_width[18]), .B0(n9), .B1(noise[18]), 
        .Y(n132) );
  AOI22XL U32 ( .A0(n11), .A1(codeword_width[20]), .B0(n8), .B1(noise[20]), 
        .Y(n130) );
  AOI22XL U33 ( .A0(n11), .A1(codeword_width[22]), .B0(n8), .B1(noise[22]), 
        .Y(n128) );
  AOI22XL U34 ( .A0(n11), .A1(codeword_width[23]), .B0(n8), .B1(noise[23]), 
        .Y(n127) );
  AOI22XL U35 ( .A0(n11), .A1(codeword_width[24]), .B0(n8), .B1(noise[24]), 
        .Y(n126) );
  AOI22XL U36 ( .A0(n12), .A1(codeword_width[6]), .B0(n119), .B1(noise[6]), 
        .Y(n144) );
  AOI22XL U37 ( .A0(n11), .A1(codeword_width[7]), .B0(n119), .B1(noise[7]), 
        .Y(n143) );
  CLKINVX3 U38 ( .A(n30), .Y(n22) );
  CLKINVX3 U39 ( .A(n46), .Y(n35) );
  CLKINVX3 U40 ( .A(n46), .Y(n36) );
  CLKINVX3 U41 ( .A(n30), .Y(n23) );
  CLKINVX3 U42 ( .A(n61), .Y(n60) );
  INVX1 U43 ( .A(n32), .Y(n30) );
  CLKINVX3 U44 ( .A(n31), .Y(n24) );
  INVX1 U45 ( .A(n32), .Y(n31) );
  INVX1 U46 ( .A(n33), .Y(n29) );
  INVX1 U47 ( .A(n33), .Y(n28) );
  INVX1 U48 ( .A(n33), .Y(n27) );
  INVX1 U49 ( .A(n33), .Y(n26) );
  INVX1 U50 ( .A(n33), .Y(n25) );
  INVX1 U51 ( .A(n47), .Y(n46) );
  INVX1 U52 ( .A(n48), .Y(n45) );
  INVX1 U53 ( .A(n48), .Y(n44) );
  INVX1 U54 ( .A(n49), .Y(n43) );
  INVX1 U55 ( .A(n48), .Y(n42) );
  INVX1 U56 ( .A(n48), .Y(n41) );
  INVX1 U57 ( .A(n35), .Y(n40) );
  INVX1 U58 ( .A(n49), .Y(n39) );
  INVX1 U59 ( .A(n49), .Y(n38) );
  CLKINVX3 U60 ( .A(n10), .Y(n9) );
  CLKINVX3 U61 ( .A(n18), .Y(n17) );
  CLKINVX3 U62 ( .A(n61), .Y(n59) );
  INVX1 U63 ( .A(N50), .Y(n61) );
  INVX1 U64 ( .A(n19), .Y(n32) );
  INVX1 U65 ( .A(n34), .Y(n47) );
  INVX1 U66 ( .A(n20), .Y(n33) );
  CLKINVX3 U67 ( .A(n3), .Y(n55) );
  CLKINVX3 U68 ( .A(n3), .Y(n56) );
  CLKINVX3 U69 ( .A(n3), .Y(n57) );
  CLKINVX3 U70 ( .A(n2), .Y(n53) );
  CLKINVX3 U71 ( .A(n2), .Y(n52) );
  CLKINVX3 U72 ( .A(n2), .Y(n51) );
  CLKINVX3 U73 ( .A(n2), .Y(n54) );
  CLKINVX3 U74 ( .A(n3), .Y(n58) );
  INVX1 U75 ( .A(n50), .Y(n48) );
  INVX1 U76 ( .A(n50), .Y(n49) );
  NAND2X1 U77 ( .A(rstn), .B(n338), .Y(N50) );
  CLKINVX3 U78 ( .A(n4), .Y(n12) );
  CLKINVX3 U79 ( .A(n10), .Y(n8) );
  INVX1 U80 ( .A(n119), .Y(n10) );
  CLKINVX3 U81 ( .A(n18), .Y(n16) );
  INVX1 U82 ( .A(n115), .Y(n18) );
  CLKINVX3 U83 ( .A(n15), .Y(n14) );
  INVX1 U84 ( .A(n70), .Y(regs_wr_en) );
  INVX1 U85 ( .A(n21), .Y(n19) );
  OAI22X1 U86 ( .A0(n334), .A1(n45), .B0(n35), .B1(n300), .Y(n220) );
  OAI22X1 U87 ( .A0(n335), .A1(n40), .B0(n35), .B1(n301), .Y(n219) );
  OAI22X1 U88 ( .A0(n336), .A1(n43), .B0(n35), .B1(n302), .Y(n218) );
  OAI22X1 U89 ( .A0(n333), .A1(n42), .B0(n35), .B1(n299), .Y(n221) );
  OAI22X1 U90 ( .A0(n327), .A1(n44), .B0(n35), .B1(n293), .Y(n227) );
  OAI22X1 U91 ( .A0(n320), .A1(n41), .B0(n36), .B1(n286), .Y(n234) );
  OAI22X1 U92 ( .A0(n317), .A1(n41), .B0(n36), .B1(n283), .Y(n237) );
  OAI22X1 U93 ( .A0(n311), .A1(n50), .B0(n35), .B1(n103), .Y(n243) );
  OAI22X1 U94 ( .A0(n330), .A1(n45), .B0(n35), .B1(n296), .Y(n224) );
  OAI22X1 U95 ( .A0(n326), .A1(n43), .B0(n35), .B1(n292), .Y(n228) );
  OAI22X1 U96 ( .A0(n325), .A1(n43), .B0(n35), .B1(n291), .Y(n229) );
  OAI22X1 U97 ( .A0(n316), .A1(n50), .B0(n36), .B1(n282), .Y(n238) );
  OAI22X1 U98 ( .A0(n312), .A1(n50), .B0(n36), .B1(n104), .Y(n242) );
  OAI22X1 U99 ( .A0(n329), .A1(n45), .B0(n35), .B1(n295), .Y(n225) );
  OAI22X1 U100 ( .A0(n318), .A1(n46), .B0(n36), .B1(n284), .Y(n236) );
  OAI22X1 U101 ( .A0(n324), .A1(n44), .B0(n36), .B1(n290), .Y(n230) );
  OAI22X1 U102 ( .A0(n321), .A1(n42), .B0(n36), .B1(n287), .Y(n233) );
  OAI22X1 U103 ( .A0(n315), .A1(n41), .B0(n36), .B1(n152), .Y(n239) );
  OAI22X1 U104 ( .A0(n313), .A1(n40), .B0(n36), .B1(n118), .Y(n241) );
  OAI22X1 U105 ( .A0(n328), .A1(n44), .B0(n35), .B1(n294), .Y(n226) );
  OAI22X1 U106 ( .A0(n332), .A1(n44), .B0(n35), .B1(n298), .Y(n222) );
  OAI22X1 U107 ( .A0(n319), .A1(n41), .B0(n36), .B1(n285), .Y(n235) );
  OAI22X1 U108 ( .A0(n314), .A1(n40), .B0(n36), .B1(n151), .Y(n240) );
  OAI22X1 U109 ( .A0(n322), .A1(n42), .B0(n36), .B1(n288), .Y(n232) );
  OAI22X1 U110 ( .A0(n323), .A1(n42), .B0(n36), .B1(n289), .Y(n231) );
  OAI22X1 U111 ( .A0(n331), .A1(n45), .B0(n35), .B1(n297), .Y(n223) );
  OAI22X1 U112 ( .A0(n324), .A1(n28), .B0(n23), .B1(n85), .Y(n262) );
  OAI22X1 U113 ( .A0(n323), .A1(n28), .B0(n23), .B1(n84), .Y(n263) );
  OAI22X1 U114 ( .A0(n322), .A1(n28), .B0(n23), .B1(n83), .Y(n264) );
  OAI22X1 U115 ( .A0(n321), .A1(n26), .B0(n23), .B1(n82), .Y(n265) );
  OAI22X1 U116 ( .A0(n320), .A1(n29), .B0(n23), .B1(n81), .Y(n266) );
  OAI22X1 U117 ( .A0(n319), .A1(n28), .B0(n23), .B1(n80), .Y(n267) );
  OAI22X1 U118 ( .A0(n318), .A1(n29), .B0(n23), .B1(n79), .Y(n268) );
  OAI22X1 U119 ( .A0(n317), .A1(n25), .B0(n23), .B1(n78), .Y(n269) );
  OAI22X1 U120 ( .A0(n316), .A1(n27), .B0(n23), .B1(n77), .Y(n270) );
  OAI22X1 U121 ( .A0(n315), .A1(n27), .B0(n23), .B1(n76), .Y(n271) );
  OAI22X1 U122 ( .A0(n314), .A1(n26), .B0(n23), .B1(n75), .Y(n272) );
  OAI22X1 U123 ( .A0(n313), .A1(n26), .B0(n23), .B1(n74), .Y(n273) );
  OAI22X1 U124 ( .A0(n334), .A1(n30), .B0(n22), .B1(n95), .Y(n252) );
  OAI22X1 U125 ( .A0(n333), .A1(n19), .B0(n22), .B1(n94), .Y(n253) );
  OAI22X1 U126 ( .A0(n332), .A1(n31), .B0(n22), .B1(n93), .Y(n254) );
  OAI22X1 U127 ( .A0(n331), .A1(n31), .B0(n22), .B1(n92), .Y(n255) );
  OAI22X1 U128 ( .A0(n330), .A1(n20), .B0(n22), .B1(n91), .Y(n256) );
  OAI22X1 U129 ( .A0(n329), .A1(n31), .B0(n22), .B1(n90), .Y(n257) );
  OAI22X1 U130 ( .A0(n328), .A1(n29), .B0(n22), .B1(n89), .Y(n258) );
  OAI22X1 U131 ( .A0(n327), .A1(n29), .B0(n22), .B1(n88), .Y(n259) );
  OAI22X1 U132 ( .A0(n326), .A1(n29), .B0(n22), .B1(n87), .Y(n260) );
  OAI22X1 U133 ( .A0(n325), .A1(n28), .B0(n22), .B1(n86), .Y(n261) );
  OAI22X1 U134 ( .A0(n310), .A1(n39), .B0(n47), .B1(n102), .Y(n244) );
  OAI22X1 U135 ( .A0(n309), .A1(n39), .B0(n47), .B1(n101), .Y(n245) );
  OAI22X1 U136 ( .A0(n307), .A1(n39), .B0(n49), .B1(n99), .Y(n247) );
  OAI22X1 U137 ( .A0(n306), .A1(n38), .B0(n48), .B1(n98), .Y(n248) );
  OAI22X1 U138 ( .A0(n305), .A1(n38), .B0(n47), .B1(n97), .Y(n249) );
  OAI22X1 U139 ( .A0(n308), .A1(n38), .B0(n49), .B1(n100), .Y(n246) );
  OAI22X1 U140 ( .A0(n312), .A1(n26), .B0(n24), .B1(n73), .Y(n274) );
  OAI22X1 U141 ( .A0(n311), .A1(n26), .B0(n24), .B1(n72), .Y(n275) );
  OAI22X1 U142 ( .A0(n310), .A1(n25), .B0(n24), .B1(n69), .Y(n276) );
  OAI22X1 U143 ( .A0(n309), .A1(n25), .B0(n24), .B1(n68), .Y(n277) );
  OAI22X1 U144 ( .A0(n308), .A1(n30), .B0(n24), .B1(n67), .Y(n278) );
  OAI22X1 U145 ( .A0(n307), .A1(n27), .B0(n24), .B1(n66), .Y(n279) );
  OAI22X1 U146 ( .A0(n306), .A1(n25), .B0(n24), .B1(n65), .Y(n280) );
  OAI22X1 U147 ( .A0(n305), .A1(n25), .B0(n24), .B1(n64), .Y(n281) );
  INVX1 U148 ( .A(n21), .Y(n20) );
  OAI2BB2X1 U149 ( .B0(n335), .B1(n52), .A0N(n54), .A1N(codeword_width[1]), 
        .Y(n187) );
  OAI2BB2X1 U150 ( .B0(n336), .B1(n52), .A0N(n54), .A1N(codeword_width[0]), 
        .Y(n186) );
  INVX1 U151 ( .A(n37), .Y(n50) );
  NOR3X1 U152 ( .A(n303), .B(n304), .C(n338), .Y(n119) );
  NAND3X1 U153 ( .A(n304), .B(n303), .C(n153), .Y(n115) );
  INVX1 U154 ( .A(n153), .Y(n338) );
  CLKINVX3 U155 ( .A(n4), .Y(n11) );
  CLKINVX3 U156 ( .A(n15), .Y(n13) );
  INVX1 U157 ( .A(n116), .Y(n15) );
  NAND3X1 U158 ( .A(psel), .B(penable), .C(pwrite), .Y(n70) );
  NOR4BX1 U159 ( .AN(regs_wr_en), .B(paddr[11]), .C(paddr[10]), .D(paddr[0]), 
        .Y(n109) );
  AND4X2 U160 ( .A(n109), .B(n110), .C(n111), .D(n112), .Y(n108) );
  NOR4X1 U161 ( .A(paddr[22]), .B(paddr[21]), .C(paddr[20]), .D(paddr[1]), .Y(
        n112) );
  NOR4X1 U162 ( .A(paddr[15]), .B(paddr[14]), .C(paddr[13]), .D(paddr[12]), 
        .Y(n110) );
  NOR4X1 U163 ( .A(paddr[19]), .B(paddr[18]), .C(paddr[17]), .D(paddr[16]), 
        .Y(n111) );
  INVX1 U164 ( .A(n71), .Y(n21) );
  NAND4X1 U165 ( .A(n105), .B(n106), .C(n107), .D(n108), .Y(n71) );
  NOR4X1 U166 ( .A(paddr[26]), .B(paddr[25]), .C(paddr[24]), .D(paddr[23]), 
        .Y(n105) );
  NOR4BX1 U167 ( .AN(n304), .B(paddr[29]), .C(paddr[28]), .D(paddr[27]), .Y(
        n106) );
  NOR4BX1 U168 ( .AN(n113), .B(n114), .C(paddr[6]), .D(paddr[5]), .Y(n107) );
  NOR3X1 U169 ( .A(paddr[7]), .B(paddr[9]), .C(paddr[8]), .Y(n113) );
  OR4X2 U170 ( .A(paddr[31]), .B(paddr[30]), .C(paddr[4]), .D(paddr[3]), .Y(
        n114) );
  INVX1 U171 ( .A(paddr[2]), .Y(n304) );
  OAI22X1 U172 ( .A0(n335), .A1(n27), .B0(n22), .B1(n7), .Y(n251) );
  INVX1 U173 ( .A(n37), .Y(n34) );
  NOR3X1 U174 ( .A(n70), .B(paddr[3]), .C(n304), .Y(n37) );
  INVXL U175 ( .A(data_in[2]), .Y(n300) );
  INVXL U176 ( .A(data_in[3]), .Y(n299) );
  INVXL U177 ( .A(data_in[16]), .Y(n286) );
  INVXL U178 ( .A(data_in[19]), .Y(n283) );
  INVXL U179 ( .A(data_in[25]), .Y(n103) );
  INVXL U180 ( .A(data_in[10]), .Y(n292) );
  INVXL U181 ( .A(data_in[11]), .Y(n291) );
  INVXL U182 ( .A(data_in[12]), .Y(n290) );
  INVXL U183 ( .A(data_in[15]), .Y(n287) );
  INVXL U184 ( .A(data_in[21]), .Y(n152) );
  INVXL U185 ( .A(data_in[8]), .Y(n294) );
  INVXL U186 ( .A(data_in[17]), .Y(n285) );
  OAI2BB2X1 U187 ( .B0(n56), .B1(n335), .A0N(n58), .A1N(noise[1]), .Y(n155) );
  OAI2BB2X1 U188 ( .B0(n56), .B1(n334), .A0N(n58), .A1N(noise[2]), .Y(n156) );
  OAI2BB2X1 U189 ( .B0(n56), .B1(n333), .A0N(n58), .A1N(noise[3]), .Y(n157) );
  OAI2BB2X1 U190 ( .B0(n55), .B1(n332), .A0N(n57), .A1N(noise[4]), .Y(n158) );
  OAI2BB2X1 U191 ( .B0(n56), .B1(n331), .A0N(n57), .A1N(noise[5]), .Y(n159) );
  OAI2BB2X1 U192 ( .B0(n56), .B1(n330), .A0N(n57), .A1N(noise[6]), .Y(n160) );
  OAI2BB2X1 U193 ( .B0(n55), .B1(n329), .A0N(n57), .A1N(noise[7]), .Y(n161) );
  OAI2BB2X1 U194 ( .B0(n55), .B1(n328), .A0N(n56), .A1N(noise[8]), .Y(n162) );
  OAI2BB2X1 U195 ( .B0(n55), .B1(n327), .A0N(n57), .A1N(noise[9]), .Y(n163) );
  OAI2BB2X1 U196 ( .B0(n55), .B1(n326), .A0N(n56), .A1N(noise[10]), .Y(n164)
         );
  OAI2BB2X1 U197 ( .B0(n55), .B1(n325), .A0N(n56), .A1N(noise[11]), .Y(n165)
         );
  OAI2BB2X1 U198 ( .B0(n55), .B1(n324), .A0N(n56), .A1N(noise[12]), .Y(n166)
         );
  OAI2BB2X1 U199 ( .B0(n55), .B1(n323), .A0N(n56), .A1N(noise[13]), .Y(n167)
         );
  OAI2BB2X1 U200 ( .B0(n55), .B1(n322), .A0N(n56), .A1N(noise[14]), .Y(n168)
         );
  OAI2BB2X1 U201 ( .B0(n55), .B1(n321), .A0N(n57), .A1N(noise[15]), .Y(n169)
         );
  OAI2BB2X1 U202 ( .B0(n55), .B1(n320), .A0N(n56), .A1N(noise[16]), .Y(n170)
         );
  OAI2BB2X1 U203 ( .B0(n55), .B1(n319), .A0N(n56), .A1N(noise[17]), .Y(n171)
         );
  OAI2BB2X1 U204 ( .B0(n58), .B1(n318), .A0N(n57), .A1N(noise[18]), .Y(n172)
         );
  OAI2BB2X1 U205 ( .B0(n58), .B1(n317), .A0N(n57), .A1N(noise[19]), .Y(n173)
         );
  OAI2BB2X1 U206 ( .B0(n56), .B1(n316), .A0N(n57), .A1N(noise[20]), .Y(n174)
         );
  OAI2BB2X1 U207 ( .B0(n58), .B1(n315), .A0N(n57), .A1N(noise[21]), .Y(n175)
         );
  OAI2BB2X1 U208 ( .B0(n58), .B1(n314), .A0N(n57), .A1N(noise[22]), .Y(n176)
         );
  OAI2BB2X1 U209 ( .B0(n58), .B1(n313), .A0N(n57), .A1N(noise[23]), .Y(n177)
         );
  OAI2BB2X1 U210 ( .B0(n55), .B1(n312), .A0N(n57), .A1N(noise[24]), .Y(n178)
         );
  OAI2BB2X1 U211 ( .B0(n58), .B1(n311), .A0N(n57), .A1N(noise[25]), .Y(n179)
         );
  OAI2BB2X1 U212 ( .B0(n57), .B1(n310), .A0N(n57), .A1N(noise[26]), .Y(n180)
         );
  OAI2BB2X1 U213 ( .B0(n58), .B1(n309), .A0N(n58), .A1N(noise[27]), .Y(n181)
         );
  OAI2BB2X1 U214 ( .B0(n56), .B1(n308), .A0N(n58), .A1N(noise[28]), .Y(n182)
         );
  OAI2BB2X1 U215 ( .B0(n55), .B1(n307), .A0N(n58), .A1N(noise[29]), .Y(n183)
         );
  OAI2BB2X1 U216 ( .B0(n55), .B1(n306), .A0N(n58), .A1N(noise[30]), .Y(n184)
         );
  OAI2BB2X1 U217 ( .B0(n55), .B1(n305), .A0N(n58), .A1N(noise[31]), .Y(n185)
         );
  OAI2BB2X1 U218 ( .B0(n334), .B1(n52), .A0N(n54), .A1N(codeword_width[2]), 
        .Y(n188) );
  OAI2BB2X1 U219 ( .B0(n333), .B1(n52), .A0N(n54), .A1N(codeword_width[3]), 
        .Y(n189) );
  OAI2BB2X1 U220 ( .B0(n332), .B1(n52), .A0N(n53), .A1N(codeword_width[4]), 
        .Y(n190) );
  OAI2BB2X1 U221 ( .B0(n331), .B1(n52), .A0N(n53), .A1N(codeword_width[5]), 
        .Y(n191) );
  OAI2BB2X1 U222 ( .B0(n330), .B1(n52), .A0N(n53), .A1N(codeword_width[6]), 
        .Y(n192) );
  OAI2BB2X1 U223 ( .B0(n329), .B1(n51), .A0N(n53), .A1N(codeword_width[7]), 
        .Y(n193) );
  OAI2BB2X1 U224 ( .B0(n328), .B1(n52), .A0N(n52), .A1N(codeword_width[8]), 
        .Y(n194) );
  OAI2BB2X1 U225 ( .B0(n327), .B1(n51), .A0N(n53), .A1N(codeword_width[9]), 
        .Y(n195) );
  OAI2BB2X1 U226 ( .B0(n326), .B1(n51), .A0N(n52), .A1N(codeword_width[10]), 
        .Y(n196) );
  OAI2BB2X1 U227 ( .B0(n325), .B1(n51), .A0N(n52), .A1N(codeword_width[11]), 
        .Y(n197) );
  OAI2BB2X1 U228 ( .B0(n324), .B1(n51), .A0N(n53), .A1N(codeword_width[12]), 
        .Y(n198) );
  OAI2BB2X1 U229 ( .B0(n323), .B1(n51), .A0N(n52), .A1N(codeword_width[13]), 
        .Y(n199) );
  OAI2BB2X1 U230 ( .B0(n322), .B1(n51), .A0N(n52), .A1N(codeword_width[14]), 
        .Y(n200) );
  OAI2BB2X1 U231 ( .B0(n321), .B1(n51), .A0N(n53), .A1N(codeword_width[15]), 
        .Y(n201) );
  OAI2BB2X1 U232 ( .B0(n320), .B1(n51), .A0N(n53), .A1N(codeword_width[16]), 
        .Y(n202) );
  OAI2BB2X1 U233 ( .B0(n319), .B1(n51), .A0N(n53), .A1N(codeword_width[17]), 
        .Y(n203) );
  OAI2BB2X1 U234 ( .B0(n318), .B1(n51), .A0N(n53), .A1N(codeword_width[18]), 
        .Y(n204) );
  OAI2BB2X1 U235 ( .B0(n317), .B1(n54), .A0N(n53), .A1N(codeword_width[19]), 
        .Y(n205) );
  OAI2BB2X1 U236 ( .B0(n316), .B1(n51), .A0N(n53), .A1N(codeword_width[20]), 
        .Y(n206) );
  OAI2BB2X1 U237 ( .B0(n315), .B1(n54), .A0N(n53), .A1N(codeword_width[21]), 
        .Y(n207) );
  OAI2BB2X1 U238 ( .B0(n314), .B1(n51), .A0N(n53), .A1N(codeword_width[22]), 
        .Y(n208) );
  OAI2BB2X1 U239 ( .B0(n313), .B1(n52), .A0N(n53), .A1N(codeword_width[23]), 
        .Y(n209) );
  OAI2BB2X1 U240 ( .B0(n312), .B1(n54), .A0N(n54), .A1N(codeword_width[24]), 
        .Y(n210) );
  OAI2BB2X1 U241 ( .B0(n311), .B1(n51), .A0N(n54), .A1N(codeword_width[25]), 
        .Y(n211) );
  OAI2BB2X1 U242 ( .B0(n310), .B1(n52), .A0N(n54), .A1N(codeword_width[26]), 
        .Y(n212) );
  OAI2BB2X1 U243 ( .B0(n309), .B1(n54), .A0N(n54), .A1N(codeword_width[27]), 
        .Y(n213) );
  OAI2BB2X1 U244 ( .B0(n308), .B1(n51), .A0N(n54), .A1N(codeword_width[28]), 
        .Y(n214) );
  OAI2BB2X1 U245 ( .B0(n307), .B1(n53), .A0N(n54), .A1N(codeword_width[29]), 
        .Y(n215) );
  OAI2BB2X1 U246 ( .B0(n306), .B1(n52), .A0N(n54), .A1N(codeword_width[30]), 
        .Y(n216) );
  OAI2BB2X1 U247 ( .B0(n305), .B1(n51), .A0N(n54), .A1N(codeword_width[31]), 
        .Y(n217) );
  OAI2BB2X1 U248 ( .B0(n56), .B1(n336), .A0N(n58), .A1N(noise[0]), .Y(n154) );
  INVX1 U249 ( .A(pwdata[1]), .Y(n335) );
  INVX1 U250 ( .A(pwdata[2]), .Y(n334) );
  INVX1 U251 ( .A(pwdata[3]), .Y(n333) );
  INVX1 U252 ( .A(pwdata[4]), .Y(n332) );
  INVX1 U253 ( .A(pwdata[5]), .Y(n331) );
  INVX1 U254 ( .A(pwdata[6]), .Y(n330) );
  INVX1 U255 ( .A(pwdata[7]), .Y(n329) );
  INVX1 U256 ( .A(pwdata[8]), .Y(n328) );
  INVX1 U257 ( .A(pwdata[9]), .Y(n327) );
  INVX1 U258 ( .A(pwdata[10]), .Y(n326) );
  INVX1 U259 ( .A(pwdata[11]), .Y(n325) );
  INVX1 U260 ( .A(pwdata[12]), .Y(n324) );
  INVX1 U261 ( .A(pwdata[13]), .Y(n323) );
  INVX1 U262 ( .A(pwdata[14]), .Y(n322) );
  INVX1 U263 ( .A(pwdata[15]), .Y(n321) );
  INVX1 U264 ( .A(pwdata[16]), .Y(n320) );
  INVX1 U265 ( .A(pwdata[17]), .Y(n319) );
  INVX1 U266 ( .A(pwdata[18]), .Y(n318) );
  INVX1 U267 ( .A(pwdata[19]), .Y(n317) );
  INVX1 U268 ( .A(pwdata[20]), .Y(n316) );
  INVX1 U269 ( .A(pwdata[21]), .Y(n315) );
  INVX1 U270 ( .A(pwdata[22]), .Y(n314) );
  INVX1 U271 ( .A(pwdata[23]), .Y(n313) );
  INVX1 U272 ( .A(pwdata[24]), .Y(n312) );
  INVX1 U273 ( .A(pwdata[25]), .Y(n311) );
  INVX1 U274 ( .A(pwdata[26]), .Y(n310) );
  INVX1 U275 ( .A(pwdata[27]), .Y(n309) );
  INVX1 U276 ( .A(pwdata[28]), .Y(n308) );
  INVX1 U277 ( .A(pwdata[29]), .Y(n307) );
  INVX1 U278 ( .A(pwdata[30]), .Y(n306) );
  INVX1 U279 ( .A(pwdata[31]), .Y(n305) );
  INVX1 U280 ( .A(pwdata[0]), .Y(n336) );
  INVX1 U281 ( .A(ctrl[2]), .Y(n95) );
  INVX1 U282 ( .A(ctrl[3]), .Y(n94) );
  INVX1 U283 ( .A(ctrl[4]), .Y(n93) );
  INVX1 U284 ( .A(ctrl[5]), .Y(n92) );
  INVX1 U285 ( .A(ctrl[6]), .Y(n91) );
  INVX1 U286 ( .A(ctrl[7]), .Y(n90) );
  INVX1 U287 ( .A(ctrl[8]), .Y(n89) );
  INVX1 U288 ( .A(ctrl[9]), .Y(n88) );
  INVX1 U289 ( .A(ctrl[10]), .Y(n87) );
  INVX1 U290 ( .A(ctrl[11]), .Y(n86) );
  INVX1 U291 ( .A(ctrl[12]), .Y(n85) );
  INVX1 U292 ( .A(ctrl[13]), .Y(n84) );
  INVX1 U293 ( .A(ctrl[14]), .Y(n83) );
  INVX1 U294 ( .A(ctrl[15]), .Y(n82) );
  INVX1 U295 ( .A(ctrl[16]), .Y(n81) );
  INVX1 U296 ( .A(ctrl[17]), .Y(n80) );
  INVX1 U297 ( .A(ctrl[18]), .Y(n79) );
  INVX1 U298 ( .A(ctrl[19]), .Y(n78) );
  INVX1 U299 ( .A(ctrl[20]), .Y(n77) );
  INVX1 U300 ( .A(ctrl[21]), .Y(n76) );
  INVX1 U301 ( .A(ctrl[22]), .Y(n75) );
  INVX1 U302 ( .A(ctrl[23]), .Y(n74) );
  INVX1 U303 ( .A(ctrl[24]), .Y(n73) );
  INVX1 U304 ( .A(ctrl[25]), .Y(n72) );
  INVX1 U305 ( .A(ctrl[26]), .Y(n69) );
  INVX1 U306 ( .A(ctrl[27]), .Y(n68) );
  INVX1 U307 ( .A(ctrl[28]), .Y(n67) );
  INVX1 U308 ( .A(ctrl[29]), .Y(n66) );
  INVX1 U309 ( .A(ctrl[30]), .Y(n65) );
  INVX1 U310 ( .A(ctrl[31]), .Y(n64) );
  OAI221XL U311 ( .A0(n89), .A1(n17), .B0(n294), .B1(n14), .C0(n142), .Y(N59)
         );
  AOI22XL U312 ( .A0(n12), .A1(codeword_width[8]), .B0(n9), .B1(noise[8]), .Y(
        n142) );
  OAI221XL U313 ( .A0(n88), .A1(n17), .B0(n293), .B1(n14), .C0(n141), .Y(N60)
         );
  AOI22XL U314 ( .A0(n12), .A1(codeword_width[9]), .B0(n9), .B1(noise[9]), .Y(
        n141) );
  OAI221XL U315 ( .A0(n87), .A1(n17), .B0(n292), .B1(n14), .C0(n140), .Y(N61)
         );
  AOI22XL U316 ( .A0(n12), .A1(codeword_width[10]), .B0(n9), .B1(noise[10]), 
        .Y(n140) );
  OAI221XL U317 ( .A0(n86), .A1(n17), .B0(n291), .B1(n14), .C0(n139), .Y(N62)
         );
  AOI22XL U318 ( .A0(n12), .A1(codeword_width[11]), .B0(n9), .B1(noise[11]), 
        .Y(n139) );
  OAI221XL U319 ( .A0(n85), .A1(n17), .B0(n290), .B1(n14), .C0(n138), .Y(N63)
         );
  AOI22XL U320 ( .A0(n12), .A1(codeword_width[12]), .B0(n9), .B1(noise[12]), 
        .Y(n138) );
  OAI221XL U321 ( .A0(n84), .A1(n17), .B0(n289), .B1(n14), .C0(n137), .Y(N64)
         );
  AOI22XL U322 ( .A0(n12), .A1(codeword_width[13]), .B0(n9), .B1(noise[13]), 
        .Y(n137) );
  OAI221XL U323 ( .A0(n83), .A1(n17), .B0(n288), .B1(n14), .C0(n136), .Y(N65)
         );
  AOI22XL U324 ( .A0(n12), .A1(codeword_width[14]), .B0(n9), .B1(noise[14]), 
        .Y(n136) );
  OAI221XL U325 ( .A0(n82), .A1(n17), .B0(n287), .B1(n14), .C0(n135), .Y(N66)
         );
  AOI22XL U326 ( .A0(n12), .A1(codeword_width[15]), .B0(n9), .B1(noise[15]), 
        .Y(n135) );
  OAI221XL U327 ( .A0(n81), .A1(n17), .B0(n286), .B1(n14), .C0(n134), .Y(N67)
         );
  AOI22XL U328 ( .A0(n12), .A1(codeword_width[16]), .B0(n9), .B1(noise[16]), 
        .Y(n134) );
  OAI221XL U329 ( .A0(n80), .A1(n17), .B0(n285), .B1(n14), .C0(n133), .Y(N68)
         );
  AOI22XL U330 ( .A0(n12), .A1(codeword_width[17]), .B0(n9), .B1(noise[17]), 
        .Y(n133) );
  OAI221XL U331 ( .A0(n79), .A1(n17), .B0(n284), .B1(n14), .C0(n132), .Y(N69)
         );
  OAI221XL U332 ( .A0(n78), .A1(n16), .B0(n283), .B1(n14), .C0(n131), .Y(N70)
         );
  AOI22XL U333 ( .A0(n12), .A1(codeword_width[19]), .B0(n9), .B1(noise[19]), 
        .Y(n131) );
  OAI221XL U334 ( .A0(n77), .A1(n16), .B0(n282), .B1(n13), .C0(n130), .Y(N71)
         );
  OAI221XL U335 ( .A0(n76), .A1(n16), .B0(n152), .B1(n13), .C0(n129), .Y(N72)
         );
  AOI22XL U336 ( .A0(n11), .A1(codeword_width[21]), .B0(n8), .B1(noise[21]), 
        .Y(n129) );
  OAI221XL U337 ( .A0(n75), .A1(n16), .B0(n151), .B1(n13), .C0(n128), .Y(N73)
         );
  OAI221XL U338 ( .A0(n74), .A1(n16), .B0(n118), .B1(n13), .C0(n127), .Y(N74)
         );
  OAI221XL U339 ( .A0(n73), .A1(n16), .B0(n104), .B1(n13), .C0(n126), .Y(N75)
         );
  OAI221XL U340 ( .A0(n72), .A1(n16), .B0(n103), .B1(n13), .C0(n125), .Y(N76)
         );
  AOI22XL U341 ( .A0(n11), .A1(codeword_width[25]), .B0(n8), .B1(noise[25]), 
        .Y(n125) );
  OAI221XL U342 ( .A0(n69), .A1(n16), .B0(n102), .B1(n13), .C0(n124), .Y(N77)
         );
  AOI22XL U343 ( .A0(n11), .A1(codeword_width[26]), .B0(n8), .B1(noise[26]), 
        .Y(n124) );
  OAI221XL U344 ( .A0(n68), .A1(n16), .B0(n101), .B1(n13), .C0(n123), .Y(N78)
         );
  AOI22XL U345 ( .A0(n11), .A1(codeword_width[27]), .B0(n8), .B1(noise[27]), 
        .Y(n123) );
  OAI221XL U346 ( .A0(n67), .A1(n16), .B0(n100), .B1(n13), .C0(n122), .Y(N79)
         );
  AOI22XL U347 ( .A0(n11), .A1(codeword_width[28]), .B0(n8), .B1(noise[28]), 
        .Y(n122) );
  OAI221XL U348 ( .A0(n66), .A1(n16), .B0(n99), .B1(n13), .C0(n121), .Y(N80)
         );
  AOI22XL U349 ( .A0(n11), .A1(codeword_width[29]), .B0(n8), .B1(noise[29]), 
        .Y(n121) );
  OAI221XL U350 ( .A0(n65), .A1(n16), .B0(n98), .B1(n13), .C0(n120), .Y(N81)
         );
  AOI22XL U351 ( .A0(n11), .A1(codeword_width[30]), .B0(n8), .B1(noise[30]), 
        .Y(n120) );
  OAI221XL U352 ( .A0(n64), .A1(n16), .B0(n97), .B1(n13), .C0(n117), .Y(N82)
         );
  AOI22XL U353 ( .A0(n11), .A1(codeword_width[31]), .B0(n8), .B1(noise[31]), 
        .Y(n117) );
  OAI221XL U354 ( .A0(n96), .A1(n115), .B0(n302), .B1(n116), .C0(n150), .Y(N51) );
  AOI22XL U355 ( .A0(n12), .A1(codeword_width[0]), .B0(n9), .B1(noise[0]), .Y(
        n150) );
  OAI221XL U356 ( .A0(n7), .A1(n115), .B0(n301), .B1(n116), .C0(n149), .Y(N52)
         );
  AOI22XL U357 ( .A0(n11), .A1(codeword_width[1]), .B0(n8), .B1(noise[1]), .Y(
        n149) );
  OAI221XL U358 ( .A0(n95), .A1(n115), .B0(n300), .B1(n116), .C0(n148), .Y(N53) );
  AOI22XL U359 ( .A0(n12), .A1(codeword_width[2]), .B0(n9), .B1(noise[2]), .Y(
        n148) );
  OAI221XL U360 ( .A0(n94), .A1(n16), .B0(n299), .B1(n116), .C0(n147), .Y(N54)
         );
  AOI22XL U361 ( .A0(n11), .A1(codeword_width[3]), .B0(n8), .B1(noise[3]), .Y(
        n147) );
  OAI221XL U362 ( .A0(n93), .A1(n17), .B0(n298), .B1(n14), .C0(n146), .Y(N55)
         );
  AOI22XL U363 ( .A0(n12), .A1(codeword_width[4]), .B0(n9), .B1(noise[4]), .Y(
        n146) );
  OAI221XL U364 ( .A0(n92), .A1(n16), .B0(n297), .B1(n13), .C0(n145), .Y(N56)
         );
  AOI22XL U365 ( .A0(n11), .A1(codeword_width[5]), .B0(n8), .B1(noise[5]), .Y(
        n145) );
  OAI221XL U366 ( .A0(n91), .A1(n17), .B0(n296), .B1(n14), .C0(n144), .Y(N57)
         );
  OAI221XL U367 ( .A0(n90), .A1(n17), .B0(n295), .B1(n13), .C0(n143), .Y(N58)
         );
  NAND3X1 U368 ( .A(paddr[2]), .B(n303), .C(n153), .Y(n116) );
  INVX1 U369 ( .A(paddr[3]), .Y(n303) );
  OAI22X1 U370 ( .A0(n336), .A1(n31), .B0(n22), .B1(n96), .Y(n250) );
endmodule


module enc_dec_ctrl_AMBA_ADDR_WIDTH32_AMBA_WORD32 ( clk, rst, paddr, 
        regs_wr_en, ctrl_reg, enc_ena, dec_ena, dec_in_sel, data_out_sel, 
        operation_done );
  input [31:0] paddr;
  input [31:0] ctrl_reg;
  input clk, rst, regs_wr_en;
  output enc_ena, dec_ena, dec_in_sel, data_out_sel, operation_done;
  wire   start, N4, flagClock2, n1, n2, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n3, data_out_sel, n17, n18;
  assign dec_ena = data_out_sel;

  DFFTRX1 flagClock2_reg ( .D(n1), .RN(rst), .CK(clk), .Q(flagClock2) );
  DFFHQX1 start_reg ( .D(N4), .CK(clk), .Q(start) );
  DFFTRXL flagClock1_reg ( .D(start), .RN(rst), .CK(clk), .Q(n1), .QN(n2) );
  BUFX20 U3 ( .A(ctrl_reg[1]), .Y(n3) );
  XOR2X4 U4 ( .A(ctrl_reg[0]), .B(n3), .Y(n17) );
  INVX20 U5 ( .A(ctrl_reg[0]), .Y(enc_ena) );
  OAI2BB2X1 U6 ( .B0(n3), .B1(n2), .A0N(dec_in_sel), .A1N(flagClock2), .Y(
        operation_done) );
  XNOR2X1 U7 ( .A(enc_ena), .B(n3), .Y(data_out_sel) );
  AND2X4 U8 ( .A(n17), .B(enc_ena), .Y(dec_in_sel) );
  NOR4BX1 U9 ( .AN(regs_wr_en), .B(paddr[10]), .C(paddr[0]), .D(n18), .Y(n9)
         );
  NOR4BX1 U10 ( .AN(n5), .B(n6), .C(n7), .D(n8), .Y(N4) );
  OR4X2 U11 ( .A(paddr[28]), .B(paddr[27]), .C(paddr[2]), .D(paddr[29]), .Y(n7) );
  OR4X2 U12 ( .A(paddr[24]), .B(paddr[23]), .C(paddr[26]), .D(paddr[25]), .Y(
        n8) );
  NOR4BX1 U13 ( .AN(n14), .B(n15), .C(paddr[6]), .D(paddr[5]), .Y(n5) );
  NAND4X1 U14 ( .A(n9), .B(n10), .C(n11), .D(n12), .Y(n6) );
  NOR4X1 U15 ( .A(paddr[18]), .B(paddr[17]), .C(paddr[16]), .D(paddr[15]), .Y(
        n11) );
  NOR4X1 U16 ( .A(paddr[14]), .B(paddr[13]), .C(paddr[12]), .D(paddr[11]), .Y(
        n10) );
  NOR4BX1 U17 ( .AN(n13), .B(paddr[1]), .C(paddr[19]), .D(paddr[20]), .Y(n12)
         );
  INVX1 U18 ( .A(rst), .Y(n18) );
  NOR3X1 U19 ( .A(paddr[7]), .B(paddr[9]), .C(paddr[8]), .Y(n14) );
  NOR2X1 U20 ( .A(paddr[22]), .B(paddr[21]), .Y(n13) );
  OR4X2 U21 ( .A(paddr[31]), .B(paddr[30]), .C(paddr[4]), .D(paddr[3]), .Y(n15) );
endmodule


module enc_parity_32 ( en, data_in, parity_16, parity_32 );
  input [14:0] data_in;
  input [4:0] parity_16;
  output [5:0] parity_32;
  input en;
  wire   n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n22, n23, n24, n25, n26, n28, n29, n30, n31, n32, n34, n35,
         n36, n37, n1, n2, n6, n21, n27, n33;

  NOR2X1 U2 ( .A(n3), .B(n33), .Y(parity_32[5]) );
  XOR2X1 U3 ( .A(data_in[0]), .B(data_in[4]), .Y(n15) );
  XNOR2X1 U4 ( .A(data_in[10]), .B(n1), .Y(n5) );
  XNOR2XL U5 ( .A(parity_16[4]), .B(data_in[1]), .Y(n1) );
  XNOR2X1 U6 ( .A(n20), .B(n2), .Y(n19) );
  XNOR2XL U7 ( .A(parity_16[3]), .B(data_in[7]), .Y(n2) );
  XOR2X1 U8 ( .A(data_in[12]), .B(n6), .Y(n37) );
  XOR2XL U9 ( .A(parity_16[0]), .B(data_in[8]), .Y(n6) );
  XOR2X1 U10 ( .A(data_in[4]), .B(n21), .Y(n26) );
  XOR2XL U11 ( .A(parity_16[2]), .B(data_in[5]), .Y(n21) );
  XOR2XL U12 ( .A(n22), .B(data_in[2]), .Y(n11) );
  XNOR2XL U13 ( .A(data_in[6]), .B(data_in[3]), .Y(n29) );
  CLKINVX3 U14 ( .A(en), .Y(n33) );
  NOR2X1 U15 ( .A(n35), .B(n33), .Y(parity_32[0]) );
  XOR2X1 U16 ( .A(n36), .B(n37), .Y(n35) );
  NOR2X1 U17 ( .A(n30), .B(n33), .Y(parity_32[1]) );
  XOR2X1 U18 ( .A(n31), .B(n32), .Y(n30) );
  NOR2X1 U19 ( .A(n24), .B(n33), .Y(parity_32[2]) );
  XOR2X1 U20 ( .A(n25), .B(n26), .Y(n24) );
  NOR2X1 U21 ( .A(n17), .B(n33), .Y(parity_32[3]) );
  XOR2X1 U22 ( .A(n18), .B(n19), .Y(n17) );
  XOR2X1 U23 ( .A(n34), .B(n15), .Y(n36) );
  XOR2X1 U24 ( .A(n34), .B(n14), .Y(n31) );
  XOR2X1 U25 ( .A(n13), .B(n14), .Y(n9) );
  XOR2X1 U26 ( .A(n7), .B(n15), .Y(n13) );
  XNOR2X1 U27 ( .A(n12), .B(n11), .Y(n10) );
  XOR2X1 U28 ( .A(n12), .B(n22), .Y(n18) );
  XOR2X1 U29 ( .A(n4), .B(n5), .Y(n3) );
  XNOR2X1 U30 ( .A(data_in[13]), .B(n27), .Y(n32) );
  XNOR2XL U31 ( .A(parity_16[1]), .B(data_in[9]), .Y(n27) );
  NOR2X1 U32 ( .A(n8), .B(n33), .Y(parity_32[4]) );
  XOR2X1 U33 ( .A(n9), .B(n10), .Y(n8) );
  XNOR2X1 U34 ( .A(n29), .B(n20), .Y(n16) );
  XOR2XL U35 ( .A(data_in[10]), .B(data_in[14]), .Y(n22) );
  XOR2X1 U36 ( .A(data_in[12]), .B(data_in[13]), .Y(n20) );
  XNOR2X1 U37 ( .A(data_in[7]), .B(n16), .Y(n7) );
  XNOR2X1 U38 ( .A(data_in[6]), .B(n11), .Y(n34) );
  XOR2XL U39 ( .A(n7), .B(data_in[0]), .Y(n4) );
  XNOR2X1 U40 ( .A(data_in[11]), .B(n23), .Y(n12) );
  XOR2X1 U41 ( .A(data_in[9]), .B(data_in[8]), .Y(n23) );
  XOR2X1 U42 ( .A(n28), .B(n16), .Y(n25) );
  XNOR2XL U43 ( .A(data_in[11]), .B(data_in[14]), .Y(n28) );
  XOR2XL U44 ( .A(data_in[1]), .B(data_in[5]), .Y(n14) );
endmodule


module enc_parity_16 ( en, data_in, parity_8, parity_16 );
  input [6:0] data_in;
  input [3:0] parity_8;
  output [4:0] parity_16;
  input en;
  wire   n3, n4, n5, n7, n8, n9, n10, n13, n14, n15, n16, n1, n2, n6, n11, n12,
         n17;

  INVX1 U2 ( .A(en), .Y(n17) );
  XNOR2XL U3 ( .A(data_in[0]), .B(data_in[3]), .Y(n8) );
  NOR2XL U4 ( .A(n14), .B(n17), .Y(parity_16[1]) );
  XOR2X1 U5 ( .A(n1), .B(n2), .Y(n16) );
  XOR2X1 U6 ( .A(data_in[0]), .B(n13), .Y(n1) );
  XNOR2XL U7 ( .A(parity_8[0]), .B(data_in[2]), .Y(n2) );
  XOR2X1 U8 ( .A(n6), .B(n11), .Y(n10) );
  XOR2X1 U9 ( .A(data_in[3]), .B(n13), .Y(n6) );
  XNOR2XL U10 ( .A(parity_8[2]), .B(data_in[5]), .Y(n11) );
  XNOR2X1 U11 ( .A(n12), .B(n7), .Y(n5) );
  XOR2X1 U12 ( .A(data_in[4]), .B(n4), .Y(n12) );
  XNOR2X1 U13 ( .A(n7), .B(n15), .Y(n14) );
  XOR2X1 U14 ( .A(parity_8[1]), .B(n9), .Y(n15) );
  NOR2X1 U15 ( .A(n3), .B(n17), .Y(parity_16[4]) );
  XNOR2X1 U16 ( .A(n4), .B(parity_8[3]), .Y(n3) );
  NOR2X1 U17 ( .A(n16), .B(n17), .Y(parity_16[0]) );
  NOR2X1 U18 ( .A(n10), .B(n17), .Y(parity_16[2]) );
  NOR2X1 U19 ( .A(n5), .B(n17), .Y(parity_16[3]) );
  XOR2X1 U20 ( .A(data_in[6]), .B(data_in[1]), .Y(n9) );
  XOR2X1 U21 ( .A(data_in[4]), .B(data_in[6]), .Y(n13) );
  XNOR2X1 U22 ( .A(n8), .B(n9), .Y(n4) );
  XOR2XL U23 ( .A(data_in[2]), .B(data_in[5]), .Y(n7) );
endmodule


module enc_parity_8 ( en, data_in, parity_8 );
  input [3:0] data_in;
  output [3:0] parity_8;
  input en;
  wire   n2, n3, n4, n6, n7, n8, n1, n5;

  INVX1 U2 ( .A(en), .Y(n5) );
  XNOR2X1 U3 ( .A(data_in[3]), .B(data_in[2]), .Y(n1) );
  XOR2X1 U4 ( .A(data_in[1]), .B(n1), .Y(n4) );
  NOR2X1 U5 ( .A(n2), .B(n5), .Y(parity_8[3]) );
  XNOR2X1 U6 ( .A(data_in[0]), .B(n3), .Y(n2) );
  XOR2X1 U7 ( .A(data_in[2]), .B(data_in[1]), .Y(n3) );
  NOR2X1 U8 ( .A(n8), .B(n5), .Y(parity_8[0]) );
  XNOR2X1 U9 ( .A(data_in[1]), .B(n7), .Y(n8) );
  NOR2X1 U10 ( .A(n6), .B(n5), .Y(parity_8[1]) );
  XNOR2X1 U11 ( .A(data_in[2]), .B(n7), .Y(n6) );
  NOR2X1 U12 ( .A(n4), .B(n5), .Y(parity_8[2]) );
  XOR2XL U13 ( .A(data_in[0]), .B(data_in[3]), .Y(n7) );
endmodule


module encoder_DATA_WIDTH32 ( ena, codeword_width, data_in, data_out );
  input [1:0] codeword_width;
  input [31:0] data_in;
  output [31:0] data_out;
  input ena;
  wire   n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n1, n2, n3, n4, n5, n6, n7, n8, n15, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n53, n54, n55, n56, n57;
  wire   [1:0] u_ena;
  wire   [4:0] parity16;
  wire   [5:0] parity32;
  wire   [3:0] parity8;

  enc_parity_32 \genblk1.P32  ( .en(u_ena[1]), .data_in(data_in[25:11]), 
        .parity_16(parity16), .parity_32(parity32) );
  enc_parity_16 \genblk1.P16  ( .en(u_ena[0]), .data_in(data_in[10:4]), 
        .parity_8(parity8), .parity_16(parity16) );
  enc_parity_8 \genblk1.P8  ( .en(ena), .data_in(data_in[3:0]), .parity_8(
        parity8) );
  INVX1 U2 ( .A(ena), .Y(n18) );
  AOI222X1 U3 ( .A0(n2), .A1(data_in[0]), .B0(n19), .B1(data_in[1]), .C0(n1), 
        .C1(parity32[5]), .Y(n45) );
  NAND2XL U4 ( .A(n50), .B(ena), .Y(n40) );
  NOR2X1 U5 ( .A(n39), .B(n18), .Y(u_ena[0]) );
  NOR3XL U6 ( .A(n8), .B(codeword_width[0]), .C(n18), .Y(n43) );
  NOR2XL U7 ( .A(codeword_width[0]), .B(codeword_width[1]), .Y(n39) );
  NOR3XL U8 ( .A(n18), .B(codeword_width[1]), .C(n7), .Y(n42) );
  AOI222XL U9 ( .A0(parity32[4]), .A1(n1), .B0(data_in[0]), .B1(n19), .C0(
        parity16[4]), .C1(n2), .Y(n46) );
  INVXL U10 ( .A(data_in[18]), .Y(n27) );
  INVXL U11 ( .A(data_in[12]), .Y(n33) );
  INVXL U12 ( .A(data_in[23]), .Y(n22) );
  INVXL U13 ( .A(data_in[13]), .Y(n32) );
  INVXL U14 ( .A(data_in[14]), .Y(n31) );
  CLKINVX3 U15 ( .A(n1), .Y(n5) );
  CLKINVX3 U16 ( .A(n43), .Y(n6) );
  INVX1 U17 ( .A(codeword_width[0]), .Y(n7) );
  NOR2BX1 U18 ( .AN(codeword_width[0]), .B(n8), .Y(n50) );
  CLKINVX3 U19 ( .A(n2), .Y(n15) );
  INVX1 U20 ( .A(codeword_width[1]), .Y(n8) );
  BUFX3 U21 ( .A(n43), .Y(n1) );
  BUFX3 U22 ( .A(n42), .Y(n2) );
  BUFX3 U23 ( .A(n40), .Y(n3) );
  BUFX3 U24 ( .A(n40), .Y(n4) );
  NOR2X1 U25 ( .A(n8), .B(n18), .Y(u_ena[1]) );
  CLKINVX3 U26 ( .A(n52), .Y(n19) );
  INVX1 U27 ( .A(n51), .Y(data_out[0]) );
  AOI222X1 U28 ( .A0(parity32[0]), .A1(n1), .B0(parity8[0]), .B1(n19), .C0(
        parity16[0]), .C1(n2), .Y(n51) );
  INVX1 U29 ( .A(n49), .Y(data_out[1]) );
  AOI222X1 U30 ( .A0(parity32[1]), .A1(n1), .B0(parity8[1]), .B1(n19), .C0(
        parity16[1]), .C1(n2), .Y(n49) );
  INVX1 U31 ( .A(n48), .Y(data_out[2]) );
  AOI222X1 U32 ( .A0(parity32[2]), .A1(n1), .B0(parity8[2]), .B1(n19), .C0(
        parity16[2]), .C1(n2), .Y(n48) );
  INVX1 U33 ( .A(n47), .Y(data_out[3]) );
  AOI222X1 U34 ( .A0(parity32[3]), .A1(n1), .B0(parity8[3]), .B1(n19), .C0(
        parity16[3]), .C1(n2), .Y(n47) );
  OAI222XL U35 ( .A0(n4), .A1(n54), .B0(n15), .B1(n55), .C0(n6), .C1(n56), .Y(
        data_out[9]) );
  OAI222XL U36 ( .A0(n3), .A1(n53), .B0(n15), .B1(n54), .C0(n55), .C1(n6), .Y(
        data_out[10]) );
  OAI222XL U37 ( .A0(n3), .A1(n38), .B0(n15), .B1(n53), .C0(n54), .C1(n6), .Y(
        data_out[11]) );
  OAI222XL U38 ( .A0(n3), .A1(n37), .B0(n15), .B1(n38), .C0(n6), .C1(n53), .Y(
        data_out[12]) );
  OAI222XL U39 ( .A0(n4), .A1(n36), .B0(n15), .B1(n37), .C0(n6), .C1(n38), .Y(
        data_out[13]) );
  OAI222XL U40 ( .A0(n4), .A1(n35), .B0(n15), .B1(n36), .C0(n6), .C1(n37), .Y(
        data_out[14]) );
  OAI222XL U41 ( .A0(n4), .A1(n34), .B0(n15), .B1(n35), .C0(n6), .C1(n36), .Y(
        data_out[15]) );
  OAI22X1 U42 ( .A0(n6), .A1(n31), .B0(n4), .B1(n29), .Y(data_out[20]) );
  OAI22X1 U43 ( .A0(n5), .A1(n28), .B0(n3), .B1(n26), .Y(data_out[23]) );
  OAI22X1 U44 ( .A0(n5), .A1(n22), .B0(n4), .B1(n20), .Y(data_out[29]) );
  OAI22X1 U45 ( .A0(n5), .A1(n27), .B0(n3), .B1(n25), .Y(data_out[24]) );
  OAI22X1 U46 ( .A0(n5), .A1(n29), .B0(n4), .B1(n27), .Y(data_out[22]) );
  OAI22X1 U47 ( .A0(n5), .A1(n35), .B0(n4), .B1(n33), .Y(data_out[16]) );
  OAI22X1 U48 ( .A0(n5), .A1(n32), .B0(n3), .B1(n30), .Y(data_out[19]) );
  OAI22X1 U49 ( .A0(n5), .A1(n23), .B0(n4), .B1(n21), .Y(data_out[28]) );
  OAI22X1 U50 ( .A0(n5), .A1(n26), .B0(n3), .B1(n24), .Y(data_out[25]) );
  OAI22X1 U51 ( .A0(n5), .A1(n24), .B0(n3), .B1(n22), .Y(data_out[27]) );
  OAI22X1 U52 ( .A0(n6), .A1(n30), .B0(n4), .B1(n28), .Y(data_out[21]) );
  OAI22X1 U53 ( .A0(n5), .A1(n25), .B0(n3), .B1(n23), .Y(data_out[26]) );
  OAI22X1 U54 ( .A0(n5), .A1(n33), .B0(n4), .B1(n31), .Y(data_out[18]) );
  OAI22X1 U55 ( .A0(n5), .A1(n34), .B0(n3), .B1(n32), .Y(data_out[17]) );
  NOR2X1 U56 ( .A(n6), .B(n20), .Y(data_out[31]) );
  NOR2X1 U57 ( .A(n6), .B(n21), .Y(data_out[30]) );
  INVX1 U58 ( .A(n45), .Y(data_out[5]) );
  INVX1 U59 ( .A(n46), .Y(data_out[4]) );
  INVX1 U60 ( .A(n44), .Y(data_out[6]) );
  AOI222XL U61 ( .A0(n2), .A1(data_in[1]), .B0(data_in[2]), .B1(n19), .C0(n1), 
        .C1(data_in[0]), .Y(n44) );
  INVX1 U62 ( .A(n41), .Y(data_out[7]) );
  AOI222XL U63 ( .A0(n2), .A1(data_in[2]), .B0(data_in[3]), .B1(n19), .C0(n1), 
        .C1(data_in[1]), .Y(n41) );
  OAI222XL U64 ( .A0(n55), .A1(n3), .B0(n15), .B1(n56), .C0(n6), .C1(n57), .Y(
        data_out[8]) );
  INVXL U65 ( .A(data_in[2]), .Y(n57) );
  INVX1 U66 ( .A(data_in[10]), .Y(n35) );
  INVX1 U67 ( .A(data_in[9]), .Y(n36) );
  INVX1 U68 ( .A(data_in[6]), .Y(n53) );
  INVX1 U69 ( .A(data_in[7]), .Y(n38) );
  INVX1 U70 ( .A(data_in[8]), .Y(n37) );
  INVX1 U71 ( .A(data_in[4]), .Y(n55) );
  INVX1 U72 ( .A(data_in[5]), .Y(n54) );
  INVXL U73 ( .A(data_in[16]), .Y(n29) );
  INVXL U74 ( .A(data_in[19]), .Y(n26) );
  INVXL U75 ( .A(data_in[25]), .Y(n20) );
  INVXL U76 ( .A(data_in[20]), .Y(n25) );
  INVXL U77 ( .A(data_in[3]), .Y(n56) );
  INVXL U78 ( .A(data_in[15]), .Y(n30) );
  INVXL U79 ( .A(data_in[24]), .Y(n21) );
  INVXL U80 ( .A(data_in[21]), .Y(n24) );
  INVXL U81 ( .A(data_in[17]), .Y(n28) );
  INVXL U82 ( .A(data_in[22]), .Y(n23) );
  INVXL U83 ( .A(data_in[11]), .Y(n34) );
  OAI21XL U84 ( .A0(n50), .A1(n39), .B0(ena), .Y(n52) );
endmodule


module dec_mat_multiplier_8bit ( codeword_with_errors, mul_result );
  input [7:0] codeword_with_errors;
  output [3:0] mul_result;
  wire   n2, n3, n4, n5, n6, n1, n7;

  XOR2X4 U2 ( .A(n3), .B(n4), .Y(n2) );
  XOR2X4 U7 ( .A(n5), .B(codeword_with_errors[1]), .Y(n3) );
  XOR2X4 U8 ( .A(codeword_with_errors[7]), .B(codeword_with_errors[6]), .Y(n5)
         );
  XNOR2X2 U1 ( .A(n7), .B(n2), .Y(mul_result[3]) );
  XNOR2X4 U3 ( .A(codeword_with_errors[4]), .B(codeword_with_errors[5]), .Y(n1) );
  XNOR2X1 U4 ( .A(codeword_with_errors[3]), .B(codeword_with_errors[2]), .Y(n7) );
  XNOR2X4 U5 ( .A(n1), .B(codeword_with_errors[0]), .Y(n4) );
  XOR2X1 U6 ( .A(codeword_with_errors[4]), .B(n3), .Y(mul_result[1]) );
  XOR2X1 U9 ( .A(n5), .B(n6), .Y(mul_result[2]) );
  XOR2X1 U10 ( .A(codeword_with_errors[5]), .B(codeword_with_errors[2]), .Y(n6) );
  XOR2X2 U11 ( .A(codeword_with_errors[7]), .B(n4), .Y(mul_result[0]) );
endmodule


module dec_mat_multiplier_16bit ( codeword_with_errors, mul_result );
  input [15:0] codeword_with_errors;
  output [4:0] mul_result;
  wire   n1, n2, n3, n4, n5, n7, n8, n11, n12, n14, n15, n16, n17, n18, n19,
         n20, n21, n6, n9, n10, n13;

  XOR2X4 U1 ( .A(n1), .B(n2), .Y(mul_result[4]) );
  XOR2X4 U5 ( .A(n7), .B(n8), .Y(mul_result[3]) );
  XOR2X4 U6 ( .A(n5), .B(codeword_with_errors[11]), .Y(n8) );
  XOR2X4 U15 ( .A(n16), .B(n17), .Y(mul_result[1]) );
  XOR2X4 U21 ( .A(n11), .B(n3), .Y(n21) );
  XOR2X4 U22 ( .A(n19), .B(codeword_with_errors[0]), .Y(n3) );
  XOR2X4 U23 ( .A(codeword_with_errors[11]), .B(codeword_with_errors[5]), .Y(
        n19) );
  XOR2X4 U24 ( .A(codeword_with_errors[13]), .B(codeword_with_errors[9]), .Y(
        n11) );
  XOR2X4 U26 ( .A(codeword_with_errors[15]), .B(codeword_with_errors[8]), .Y(
        n18) );
  XOR2X2 U2 ( .A(n3), .B(n4), .Y(n2) );
  XOR2X2 U3 ( .A(n14), .B(n21), .Y(mul_result[0]) );
  XOR2X1 U4 ( .A(codeword_with_errors[1]), .B(codeword_with_errors[10]), .Y(
        n20) );
  XNOR2X1 U7 ( .A(codeword_with_errors[1]), .B(codeword_with_errors[4]), .Y(
        n10) );
  XOR2X4 U8 ( .A(n18), .B(codeword_with_errors[6]), .Y(n14) );
  XOR2X2 U9 ( .A(n5), .B(n10), .Y(n1) );
  XNOR2X4 U10 ( .A(n15), .B(codeword_with_errors[2]), .Y(n6) );
  XNOR2X4 U11 ( .A(n6), .B(n14), .Y(n4) );
  XOR2X4 U12 ( .A(n4), .B(n12), .Y(mul_result[2]) );
  XOR2X4 U13 ( .A(codeword_with_errors[14]), .B(codeword_with_errors[7]), .Y(
        n15) );
  XNOR2X4 U14 ( .A(n13), .B(n9), .Y(n5) );
  XOR2X1 U16 ( .A(codeword_with_errors[3]), .B(codeword_with_errors[12]), .Y(
        n9) );
  XOR2X4 U17 ( .A(codeword_with_errors[10]), .B(n11), .Y(n13) );
  XOR2X1 U18 ( .A(codeword_with_errors[13]), .B(codeword_with_errors[12]), .Y(
        n12) );
  XNOR2XL U19 ( .A(codeword_with_errors[14]), .B(codeword_with_errors[15]), 
        .Y(n7) );
  XOR2XL U20 ( .A(n15), .B(n18), .Y(n17) );
  XOR2X1 U25 ( .A(n19), .B(n20), .Y(n16) );
endmodule


module dec_mat_multiplier_32bit ( codeword_with_errors, mul_result );
  input [31:0] codeword_with_errors;
  output [5:0] mul_result;
  wire   n2, n3, n4, n6, n8, n9, n10, n11, n12, n13, n14, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n31, n32, n34, n35, n36, n37, n39,
         n40, n41, n42, n43, n47, n48, n49, n1, n5, n7, n15, n16, n28, n29,
         n30, n33, n38, n44, n45, n46, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59;

  XOR2X4 U1 ( .A(n2), .B(n3), .Y(mul_result[5]) );
  XOR2X4 U3 ( .A(n59), .B(n45), .Y(n4) );
  XOR2X4 U6 ( .A(n10), .B(n11), .Y(mul_result[4]) );
  XOR2X4 U7 ( .A(n52), .B(n12), .Y(n11) );
  XOR2X4 U14 ( .A(n20), .B(n19), .Y(mul_result[3]) );
  XOR2X4 U15 ( .A(n21), .B(codeword_with_errors[14]), .Y(n20) );
  XOR2X4 U16 ( .A(n22), .B(n23), .Y(n21) );
  XOR2X4 U17 ( .A(n24), .B(n25), .Y(n23) );
  XOR2X4 U25 ( .A(n31), .B(n32), .Y(mul_result[2]) );
  XOR2X4 U29 ( .A(n8), .B(codeword_with_errors[22]), .Y(n37) );
  XOR2X4 U30 ( .A(n40), .B(n39), .Y(n8) );
  XOR2X4 U31 ( .A(n13), .B(n41), .Y(n40) );
  XOR2X4 U32 ( .A(codeword_with_errors[28]), .B(codeword_with_errors[20]), .Y(
        n13) );
  XOR2X4 U35 ( .A(n59), .B(n5), .Y(n43) );
  XOR2X4 U39 ( .A(codeword_with_errors[22]), .B(codeword_with_errors[18]), .Y(
        n14) );
  XNOR2X4 U47 ( .A(codeword_with_errors[27]), .B(codeword_with_errors[19]), 
        .Y(n42) );
  XOR2X4 U48 ( .A(codeword_with_errors[29]), .B(codeword_with_errors[21]), .Y(
        n34) );
  XNOR2X4 U49 ( .A(codeword_with_errors[25]), .B(codeword_with_errors[17]), 
        .Y(n49) );
  XOR2X4 U57 ( .A(codeword_with_errors[14]), .B(codeword_with_errors[7]), .Y(
        n41) );
  XNOR2X2 U2 ( .A(codeword_with_errors[23]), .B(codeword_with_errors[9]), .Y(
        n35) );
  BUFX16 U4 ( .A(n6), .Y(n59) );
  XOR2X1 U5 ( .A(n17), .B(n18), .Y(n10) );
  XOR2X2 U8 ( .A(n47), .B(n48), .Y(mul_result[0]) );
  XOR2XL U9 ( .A(codeword_with_errors[31]), .B(codeword_with_errors[16]), .Y(
        n15) );
  XOR2X4 U10 ( .A(n49), .B(n1), .Y(n46) );
  XOR2X4 U11 ( .A(n34), .B(n42), .Y(n1) );
  CLKBUFX4 U12 ( .A(n28), .Y(n16) );
  XOR2X1 U13 ( .A(codeword_with_errors[31]), .B(codeword_with_errors[30]), .Y(
        n17) );
  BUFX3 U18 ( .A(n44), .Y(n5) );
  XOR2X4 U19 ( .A(codeword_with_errors[4]), .B(codeword_with_errors[24]), .Y(
        n53) );
  XOR2X2 U20 ( .A(codeword_with_errors[10]), .B(codeword_with_errors[0]), .Y(
        n55) );
  BUFX20 U21 ( .A(n54), .Y(n7) );
  BUFX20 U22 ( .A(n51), .Y(n28) );
  XOR2X2 U23 ( .A(n38), .B(n34), .Y(n32) );
  XOR2X1 U24 ( .A(codeword_with_errors[26]), .B(codeword_with_errors[23]), .Y(
        n18) );
  INVXL U26 ( .A(codeword_with_errors[1]), .Y(n29) );
  XOR2XL U27 ( .A(codeword_with_errors[5]), .B(codeword_with_errors[0]), .Y(n9) );
  XOR2X4 U28 ( .A(n7), .B(n29), .Y(n56) );
  XOR2X4 U33 ( .A(n28), .B(n30), .Y(n33) );
  CLKINVX20 U34 ( .A(codeword_with_errors[6]), .Y(n30) );
  XOR2X2 U36 ( .A(n36), .B(n14), .Y(n57) );
  XNOR2X4 U37 ( .A(codeword_with_errors[13]), .B(codeword_with_errors[2]), .Y(
        n39) );
  XOR2X4 U38 ( .A(n33), .B(n35), .Y(n54) );
  XOR2X4 U40 ( .A(n43), .B(n42), .Y(mul_result[1]) );
  XOR2X2 U41 ( .A(n13), .B(n14), .Y(n12) );
  XOR2X4 U42 ( .A(n4), .B(n52), .Y(n3) );
  XOR2X4 U43 ( .A(n16), .B(n45), .Y(n27) );
  XOR2X4 U44 ( .A(n27), .B(n26), .Y(n22) );
  XOR2X1 U45 ( .A(codeword_with_errors[27]), .B(codeword_with_errors[13]), .Y(
        n25) );
  XOR2X4 U46 ( .A(n35), .B(n36), .Y(n38) );
  XOR2X4 U50 ( .A(codeword_with_errors[11]), .B(codeword_with_errors[26]), .Y(
        n44) );
  XNOR2X4 U51 ( .A(n26), .B(codeword_with_errors[8]), .Y(n36) );
  XOR2X1 U52 ( .A(codeword_with_errors[29]), .B(codeword_with_errors[28]), .Y(
        n24) );
  XNOR2X4 U53 ( .A(codeword_with_errors[30]), .B(codeword_with_errors[15]), 
        .Y(n26) );
  XOR2X4 U54 ( .A(n58), .B(n44), .Y(n45) );
  XNOR2X1 U55 ( .A(codeword_with_errors[24]), .B(codeword_with_errors[25]), 
        .Y(n19) );
  XOR2X4 U56 ( .A(codeword_with_errors[31]), .B(codeword_with_errors[16]), .Y(
        n50) );
  XOR2X4 U58 ( .A(n50), .B(codeword_with_errors[12]), .Y(n51) );
  XOR2X4 U59 ( .A(n46), .B(n53), .Y(n52) );
  XOR2X1 U60 ( .A(n41), .B(n55), .Y(n47) );
  XOR2X4 U61 ( .A(n56), .B(n57), .Y(n6) );
  XOR2X4 U62 ( .A(codeword_with_errors[10]), .B(codeword_with_errors[3]), .Y(
        n58) );
  XOR2X1 U63 ( .A(n8), .B(n9), .Y(n2) );
  XOR2X4 U64 ( .A(n7), .B(n46), .Y(n48) );
  XOR2X4 U65 ( .A(n37), .B(n15), .Y(n31) );
endmodule


module dec_mat_multiplier_all_options_DATA_WIDTH32 ( codeword_with_errors, 
        codeword_width, mul_result );
  input [31:0] codeword_with_errors;
  input [1:0] codeword_width;
  output [5:0] mul_result;
  wire   n2, n3, n4, n5, n6, n7, n8, n1, n9;
  wire   [3:0] result_8bit;
  wire   [4:0] result_16bit;
  wire   [5:0] result_32bit;

  AND2X4 U2 ( .A(result_32bit[5]), .B(codeword_width[1]), .Y(mul_result[5]) );
  AOI22X4 U3 ( .A0(result_16bit[4]), .A1(n1), .B0(result_32bit[4]), .B1(
        codeword_width[1]), .Y(n2) );
  OAI2BB1X4 U4 ( .A0N(result_32bit[3]), .A1N(codeword_width[1]), .B0(n4), .Y(
        mul_result[3]) );
  OAI2BB1X4 U6 ( .A0N(result_32bit[2]), .A1N(codeword_width[1]), .B0(n6), .Y(
        mul_result[2]) );
  OAI2BB1X4 U8 ( .A0N(codeword_width[1]), .A1N(result_32bit[1]), .B0(n7), .Y(
        mul_result[1]) );
  AOI22X4 U9 ( .A0(result_8bit[1]), .A1(n5), .B0(result_16bit[1]), .B1(n1), 
        .Y(n7) );
  OAI2BB1X4 U10 ( .A0N(result_32bit[0]), .A1N(codeword_width[1]), .B0(n8), .Y(
        mul_result[0]) );
  AOI22X4 U11 ( .A0(result_8bit[0]), .A1(n5), .B0(result_16bit[0]), .B1(n1), 
        .Y(n8) );
  dec_mat_multiplier_8bit \genblk1.inst_8bit  ( .codeword_with_errors(
        codeword_with_errors[7:0]), .mul_result(result_8bit) );
  dec_mat_multiplier_16bit \genblk1.inst_16bit  ( .codeword_with_errors({
        codeword_with_errors[15:12], n9, codeword_with_errors[10:0]}), 
        .mul_result(result_16bit) );
  dec_mat_multiplier_32bit \genblk1.inst_32bit  ( .codeword_with_errors(
        codeword_with_errors), .mul_result(result_32bit) );
  BUFX3 U5 ( .A(codeword_with_errors[11]), .Y(n9) );
  AOI22X2 U7 ( .A0(result_8bit[2]), .A1(n5), .B0(result_16bit[2]), .B1(n1), 
        .Y(n6) );
  NOR2X4 U12 ( .A(codeword_width[0]), .B(codeword_width[1]), .Y(n5) );
  BUFX12 U13 ( .A(n3), .Y(n1) );
  NOR2BX1 U14 ( .AN(codeword_width[0]), .B(codeword_width[1]), .Y(n3) );
  AOI22X4 U15 ( .A0(result_8bit[3]), .A1(n5), .B0(result_16bit[3]), .B1(n1), 
        .Y(n4) );
  INVX8 U16 ( .A(n2), .Y(mul_result[4]) );
endmodule


module dec_comparator_DATA_DEPTH6_32 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n8, n9, n10, n11, n12, n13, n14;
  assign isEqual = N0;

  XOR2X1 U1 ( .A(B[3]), .B(A[3]), .Y(n12) );
  NOR4X4 U2 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(N0) );
  XOR2X1 U3 ( .A(B[4]), .B(A[4]), .Y(n11) );
  XOR2X1 U4 ( .A(B[5]), .B(A[5]), .Y(n13) );
  NAND3X1 U5 ( .A(n10), .B(n9), .C(n8), .Y(n14) );
  XNOR2X1 U6 ( .A(B[2]), .B(A[2]), .Y(n8) );
  XNOR2X1 U7 ( .A(B[0]), .B(A[0]), .Y(n10) );
  XNOR2X1 U8 ( .A(B[1]), .B(A[1]), .Y(n9) );
endmodule


module dec_comparator_DATA_DEPTH5_0 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n2, n3, n4, n5, n6, n1;
  assign isEqual = N0;

  XNOR2X1 U1 ( .A(B[1]), .B(A[1]), .Y(n5) );
  NOR3BX2 U2 ( .AN(n1), .B(n2), .C(n3), .Y(N0) );
  AND3X2 U3 ( .A(n4), .B(n5), .C(n6), .Y(n1) );
  XNOR2X2 U4 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2X2 U5 ( .A(B[0]), .B(A[0]), .Y(n4) );
  XOR2X1 U6 ( .A(B[3]), .B(A[3]), .Y(n2) );
  XOR2X1 U7 ( .A(B[4]), .B(A[4]), .Y(n3) );
endmodule


module dec_comparator_DATA_DEPTH4_0 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n1, n2, n3, n4;
  assign isEqual = N0;

  XNOR2XL U1 ( .A(B[1]), .B(A[1]), .Y(n4) );
  AND4X2 U2 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(N0) );
  XNOR2X1 U3 ( .A(B[2]), .B(A[2]), .Y(n3) );
  XNOR2X1 U4 ( .A(B[0]), .B(A[0]), .Y(n2) );
  XNOR2X1 U5 ( .A(B[3]), .B(A[3]), .Y(n1) );
endmodule


module dec_comparator_all_options_0 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n2, n1, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12;

  dec_comparator_DATA_DEPTH6_32 inst_32bit ( .A({n10, A[4], n8, n6, A[1], n4}), 
        .B({B[5:4], n1, B[2:0]}), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_0 inst_16bit ( .A({A[4], n8, n6, A[1], n4}), .B({
        B[4], n1, B[2:0]}), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_0 inst_8bit ( .A({n8, n6, A[1], n4}), .B({n1, 
        B[2:0]}), .isEqual(result_8bit) );
  OAI2BB2X4 U1 ( .B0(codeword_width[1]), .B1(n2), .A0N(result_32bit), .A1N(
        codeword_width[1]), .Y(isEqual) );
  AOI22X4 U2 ( .A0(result_8bit), .A1(n12), .B0(result_16bit), .B1(
        codeword_width[0]), .Y(n2) );
  INVX1 U3 ( .A(n3), .Y(n1) );
  INVX1 U4 ( .A(B[3]), .Y(n3) );
  INVX1 U5 ( .A(codeword_width[0]), .Y(n12) );
  INVX1 U6 ( .A(n11), .Y(n10) );
  INVX1 U7 ( .A(n9), .Y(n8) );
  INVX1 U8 ( .A(A[3]), .Y(n9) );
  INVX1 U9 ( .A(n5), .Y(n4) );
  INVX1 U10 ( .A(A[0]), .Y(n5) );
  INVXL U11 ( .A(A[5]), .Y(n11) );
  INVX1 U12 ( .A(n7), .Y(n6) );
  INVX1 U13 ( .A(A[2]), .Y(n7) );
endmodule


module dec_comparator_DATA_DEPTH6_31 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n8, n9, n10, n11, n12, n13, n14;
  assign isEqual = N0;

  XOR2X1 U1 ( .A(B[4]), .B(A[4]), .Y(n11) );
  XNOR2XL U2 ( .A(B[1]), .B(A[1]), .Y(n9) );
  NOR4X2 U3 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(N0) );
  XOR2XL U4 ( .A(B[3]), .B(A[3]), .Y(n12) );
  XOR2X1 U5 ( .A(B[5]), .B(A[5]), .Y(n13) );
  NAND3X1 U6 ( .A(n10), .B(n9), .C(n8), .Y(n14) );
  XNOR2X1 U7 ( .A(B[0]), .B(A[0]), .Y(n10) );
  XNOR2X1 U8 ( .A(B[2]), .B(A[2]), .Y(n8) );
endmodule


module dec_comparator_DATA_DEPTH5_31 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n1, n2, n3, n7, n8, n9;
  assign isEqual = N0;

  XNOR2X1 U1 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XNOR2XL U2 ( .A(B[3]), .B(A[3]), .Y(n2) );
  XNOR2XL U3 ( .A(B[1]), .B(A[1]), .Y(n8) );
  XNOR2X1 U4 ( .A(B[0]), .B(A[0]), .Y(n9) );
  AND3X4 U5 ( .A(n1), .B(n2), .C(n3), .Y(N0) );
  AND3X2 U6 ( .A(n9), .B(n8), .C(n7), .Y(n1) );
  XNOR2X1 U7 ( .A(B[4]), .B(A[4]), .Y(n3) );
endmodule


module dec_comparator_DATA_DEPTH4_31 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  XNOR2XL U1 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2XL U2 ( .A(B[1]), .B(A[1]), .Y(n5) );
  AND4X2 U3 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X1 U4 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XNOR2X1 U5 ( .A(B[2]), .B(A[2]), .Y(n6) );
endmodule


module dec_comparator_all_options_31 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6;

  dec_comparator_DATA_DEPTH6_31 inst_32bit ( .A({n1, A[4:0]}), .B(B), 
        .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_31 inst_16bit ( .A(A[4:0]), .B(B[4:0]), .isEqual(
        result_16bit) );
  dec_comparator_DATA_DEPTH4_31 inst_8bit ( .A(A[3:0]), .B(B[3:0]), .isEqual(
        result_8bit) );
  OAI2BB2X2 U1 ( .B0(codeword_width[1]), .B1(n6), .A0N(result_32bit), .A1N(
        codeword_width[1]), .Y(isEqual) );
  AOI22X1 U2 ( .A0(result_8bit), .A1(n5), .B0(result_16bit), .B1(n4), .Y(n6)
         );
  INVX1 U3 ( .A(n5), .Y(n4) );
  INVX1 U4 ( .A(codeword_width[0]), .Y(n5) );
  INVX1 U5 ( .A(n3), .Y(n1) );
  INVX1 U6 ( .A(A[5]), .Y(n3) );
endmodule


module dec_comparator_DATA_DEPTH6_30 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8, n9, n10, n11;
  assign isEqual = N0;

  NOR4X2 U1 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N0) );
  XOR2XL U2 ( .A(B[1]), .B(A[1]), .Y(n6) );
  XOR2X1 U3 ( .A(B[3]), .B(A[3]), .Y(n9) );
  XOR2X2 U4 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XOR2X2 U5 ( .A(B[4]), .B(A[4]), .Y(n8) );
  OR3X4 U6 ( .A(n5), .B(n6), .C(n7), .Y(n11) );
  XOR2X1 U7 ( .A(B[0]), .B(A[0]), .Y(n5) );
  XOR2X1 U8 ( .A(B[5]), .B(A[5]), .Y(n10) );
endmodule


module dec_comparator_DATA_DEPTH5_30 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n1, n2, n3, n7, n8, n9;
  assign isEqual = N0;

  XNOR2X1 U1 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XNOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(n9) );
  XNOR2XL U3 ( .A(B[1]), .B(A[1]), .Y(n8) );
  XNOR2X2 U4 ( .A(B[4]), .B(A[4]), .Y(n3) );
  AND3X4 U5 ( .A(n9), .B(n8), .C(n7), .Y(n1) );
  XNOR2X1 U6 ( .A(B[3]), .B(A[3]), .Y(n2) );
  AND3X4 U7 ( .A(n1), .B(n2), .C(n3), .Y(N0) );
endmodule


module dec_comparator_DATA_DEPTH4_30 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  XNOR2XL U1 ( .A(B[1]), .B(A[1]), .Y(n5) );
  XNOR2X2 U2 ( .A(B[3]), .B(A[3]), .Y(n8) );
  AND4X2 U3 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X2 U4 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2X2 U5 ( .A(B[0]), .B(A[0]), .Y(n7) );
endmodule


module dec_comparator_all_options_30 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10;

  OAI2BB2X4 U1 ( .B0(codeword_width[1]), .B1(n10), .A0N(result_32bit), .A1N(
        codeword_width[1]), .Y(isEqual) );
  dec_comparator_DATA_DEPTH6_30 inst_32bit ( .A({n6, A[4], n4, A[2:0]}), .B({
        B[5:4], n1, B[2:0]}), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_30 inst_16bit ( .A({A[4], n4, A[2:0]}), .B({B[4], 
        n1, B[2:0]}), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_30 inst_8bit ( .A({n4, A[2:0]}), .B({n1, B[2:0]}), 
        .isEqual(result_8bit) );
  INVX4 U2 ( .A(n5), .Y(n4) );
  AOI22X1 U3 ( .A0(result_8bit), .A1(n9), .B0(result_16bit), .B1(n8), .Y(n10)
         );
  INVX12 U4 ( .A(A[3]), .Y(n5) );
  INVX1 U5 ( .A(n3), .Y(n1) );
  INVX1 U6 ( .A(B[3]), .Y(n3) );
  INVX1 U7 ( .A(n9), .Y(n8) );
  INVX1 U8 ( .A(codeword_width[0]), .Y(n9) );
  INVX1 U9 ( .A(n7), .Y(n6) );
  INVX1 U10 ( .A(A[5]), .Y(n7) );
endmodule


module dec_comparator_DATA_DEPTH6_29 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(N0) );
  NAND3X4 U5 ( .A(n14), .B(n13), .C(n12), .Y(n18) );
  XNOR2X2 U2 ( .A(B[0]), .B(A[0]), .Y(n14) );
  INVX8 U3 ( .A(A[5]), .Y(n9) );
  NAND2X4 U4 ( .A(n10), .B(n11), .Y(n17) );
  NAND2X4 U6 ( .A(B[5]), .B(n9), .Y(n10) );
  NAND2X4 U7 ( .A(n8), .B(A[5]), .Y(n11) );
  INVXL U8 ( .A(B[5]), .Y(n8) );
  XNOR2X2 U9 ( .A(B[2]), .B(A[2]), .Y(n12) );
  XOR2X2 U10 ( .A(B[4]), .B(A[4]), .Y(n15) );
  XNOR2X2 U11 ( .A(B[1]), .B(A[1]), .Y(n13) );
  XOR2X2 U12 ( .A(B[3]), .B(A[3]), .Y(n16) );
endmodule


module dec_comparator_DATA_DEPTH5_29 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n1, n2, n3, n7, n8, n9;
  assign isEqual = N0;

  XNOR2X4 U1 ( .A(B[0]), .B(A[0]), .Y(n9) );
  XNOR2X2 U2 ( .A(B[4]), .B(A[4]), .Y(n3) );
  XNOR2X1 U3 ( .A(B[1]), .B(A[1]), .Y(n8) );
  XNOR2X1 U4 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XNOR2X4 U5 ( .A(B[3]), .B(A[3]), .Y(n2) );
  AND3X4 U6 ( .A(n9), .B(n8), .C(n7), .Y(n1) );
  AND3X4 U7 ( .A(n1), .B(n2), .C(n3), .Y(N0) );
endmodule


module dec_comparator_DATA_DEPTH4_29 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X4 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X2 U2 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XNOR2X4 U3 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X2 U4 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2X2 U5 ( .A(B[1]), .B(A[1]), .Y(n5) );
endmodule


module dec_comparator_all_options_29 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14;

  OAI2BB2X4 U1 ( .B0(codeword_width[1]), .B1(n14), .A0N(result_32bit), .A1N(
        codeword_width[1]), .Y(isEqual) );
  dec_comparator_DATA_DEPTH6_29 inst_32bit ( .A({n8, A[4], n6, n4, A[1], n1}), 
        .B({n12, B[4:0]}), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_29 inst_16bit ( .A({A[4], n6, n4, A[1], n1}), .B(
        B[4:0]), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_29 inst_8bit ( .A({n6, n4, A[1], n1}), .B(B[3:0]), 
        .isEqual(result_8bit) );
  INVX8 U2 ( .A(n3), .Y(n1) );
  INVX8 U3 ( .A(n9), .Y(n8) );
  CLKINVX8 U4 ( .A(n5), .Y(n4) );
  INVX12 U5 ( .A(A[2]), .Y(n5) );
  INVX8 U6 ( .A(n7), .Y(n6) );
  INVX1 U7 ( .A(A[0]), .Y(n3) );
  INVX12 U8 ( .A(A[3]), .Y(n7) );
  INVX8 U9 ( .A(A[5]), .Y(n9) );
  AOI22X4 U10 ( .A0(result_8bit), .A1(n11), .B0(result_16bit), .B1(n10), .Y(
        n14) );
  INVX1 U11 ( .A(n11), .Y(n10) );
  INVX1 U12 ( .A(codeword_width[0]), .Y(n11) );
  INVX1 U13 ( .A(n13), .Y(n12) );
  INVX1 U14 ( .A(B[5]), .Y(n13) );
endmodule


module dec_comparator_DATA_DEPTH6_28 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n8, n9, n10, n11, n12, n13;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n13), .B(n12), .C(n11), .D(n10), .Y(N0) );
  XNOR2X2 U2 ( .A(B[1]), .B(A[1]), .Y(n9) );
  XOR2X4 U3 ( .A(B[5]), .B(A[5]), .Y(n12) );
  XOR2X4 U4 ( .A(B[4]), .B(A[4]), .Y(n10) );
  XOR2X2 U5 ( .A(B[3]), .B(A[3]), .Y(n11) );
  XNOR2X2 U6 ( .A(B[2]), .B(A[2]), .Y(n8) );
  NAND3BX4 U7 ( .AN(n5), .B(n9), .C(n8), .Y(n13) );
  XOR2X1 U8 ( .A(B[0]), .B(A[0]), .Y(n5) );
endmodule


module dec_comparator_DATA_DEPTH5_28 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n1, n2, n3, n7, n8, n9, n10, n11, n12, n13;
  assign isEqual = N0;

  XNOR2X4 U5 ( .A(B[2]), .B(A[2]), .Y(n11) );
  XNOR2X4 U1 ( .A(B[0]), .B(A[0]), .Y(n13) );
  XNOR2X2 U2 ( .A(B[1]), .B(A[1]), .Y(n12) );
  NAND2X1 U3 ( .A(B[4]), .B(A[4]), .Y(n3) );
  XNOR2X4 U4 ( .A(B[3]), .B(A[3]), .Y(n9) );
  CLKINVX8 U6 ( .A(A[4]), .Y(n2) );
  NAND2X4 U7 ( .A(n1), .B(n2), .Y(n7) );
  NAND2X4 U8 ( .A(n3), .B(n7), .Y(n10) );
  INVX12 U9 ( .A(B[4]), .Y(n1) );
  AND3X4 U10 ( .A(n8), .B(n9), .C(n10), .Y(N0) );
  AND3X4 U11 ( .A(n13), .B(n12), .C(n11), .Y(n8) );
endmodule


module dec_comparator_DATA_DEPTH4_28 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X4 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X2 U2 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2X2 U3 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X2 U4 ( .A(B[1]), .B(A[1]), .Y(n5) );
  XNOR2X1 U5 ( .A(B[0]), .B(A[0]), .Y(n7) );
endmodule


module dec_comparator_all_options_28 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12;

  OAI2BB2X4 U1 ( .B0(codeword_width[1]), .B1(n12), .A0N(result_32bit), .A1N(
        codeword_width[1]), .Y(isEqual) );
  AOI22X4 U2 ( .A0(result_8bit), .A1(n9), .B0(result_16bit), .B1(n8), .Y(n12)
         );
  dec_comparator_DATA_DEPTH6_28 inst_32bit ( .A({A[5], n3, n6, n4, A[1], n1}), 
        .B({n10, B[4:0]}), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_28 inst_16bit ( .A({n3, n6, n4, A[1], n1}), .B(
        B[4:0]), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_28 inst_8bit ( .A({n6, n4, A[1], n1}), .B(B[3:0]), 
        .isEqual(result_8bit) );
  CLKBUFX3 U3 ( .A(A[0]), .Y(n1) );
  INVX20 U4 ( .A(n5), .Y(n4) );
  INVX8 U5 ( .A(n7), .Y(n6) );
  BUFX20 U6 ( .A(A[4]), .Y(n3) );
  INVX8 U7 ( .A(A[3]), .Y(n7) );
  INVX1 U8 ( .A(n9), .Y(n8) );
  INVX1 U9 ( .A(codeword_width[0]), .Y(n9) );
  INVX1 U10 ( .A(n11), .Y(n10) );
  INVX1 U11 ( .A(B[5]), .Y(n11) );
  INVX1 U12 ( .A(A[2]), .Y(n5) );
endmodule


module dec_comparator_DATA_DEPTH6_27 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n1, n2, n3, n4, n5, n6, n7, n8;
  assign isEqual = N0;

  XNOR2X2 U1 ( .A(A[5]), .B(B[5]), .Y(n3) );
  XNOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(n4) );
  AND2X4 U3 ( .A(n4), .B(n5), .Y(n1) );
  AND3X4 U4 ( .A(n3), .B(n2), .C(n1), .Y(N0) );
  AND3X4 U5 ( .A(n6), .B(n7), .C(n8), .Y(n2) );
  XNOR2X2 U6 ( .A(B[4]), .B(A[4]), .Y(n5) );
  XNOR2X2 U7 ( .A(B[1]), .B(A[1]), .Y(n7) );
  XNOR2X2 U8 ( .A(B[0]), .B(A[0]), .Y(n6) );
  XNOR2X2 U9 ( .A(B[2]), .B(A[2]), .Y(n8) );
endmodule


module dec_comparator_DATA_DEPTH5_27 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n1, n2, n3, n7, n8, n9, n10, n11;
  assign isEqual = N0;

  XNOR2X4 U1 ( .A(B[1]), .B(A[1]), .Y(n10) );
  XNOR2X2 U2 ( .A(B[4]), .B(A[4]), .Y(n8) );
  XNOR2X2 U3 ( .A(B[3]), .B(A[3]), .Y(n7) );
  XNOR2X4 U4 ( .A(B[2]), .B(A[2]), .Y(n9) );
  AND2X4 U5 ( .A(n11), .B(n9), .Y(n1) );
  AND2X4 U6 ( .A(n10), .B(n1), .Y(n3) );
  AND2X4 U7 ( .A(n8), .B(n7), .Y(n2) );
  AND2X4 U8 ( .A(n3), .B(n2), .Y(N0) );
  XNOR2X4 U9 ( .A(B[0]), .B(A[0]), .Y(n11) );
endmodule


module dec_comparator_DATA_DEPTH4_27 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X4 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X2 U2 ( .A(B[1]), .B(A[1]), .Y(n5) );
  XNOR2X2 U3 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XNOR2X2 U4 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2X1 U5 ( .A(B[3]), .B(A[3]), .Y(n8) );
endmodule


module dec_comparator_all_options_27 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   n11, result_32bit, result_16bit, result_8bit, n1, n3, n5, n6, n7, n8,
         n9, n10;

  OAI2BB2X4 U1 ( .B0(codeword_width[1]), .B1(n10), .A0N(result_32bit), .A1N(
        codeword_width[1]), .Y(n11) );
  AOI22X4 U2 ( .A0(result_8bit), .A1(n9), .B0(result_16bit), .B1(
        codeword_width[0]), .Y(n10) );
  dec_comparator_DATA_DEPTH6_27 inst_32bit ( .A({A[5:3], n7, n3, n1}), .B(B), 
        .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_27 inst_16bit ( .A({A[4:3], n7, n3, n1}), .B(
        B[4:0]), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_27 inst_8bit ( .A({A[3], n7, n3, n1}), .B(B[3:0]), 
        .isEqual(result_8bit) );
  BUFX12 U3 ( .A(A[1]), .Y(n3) );
  BUFX20 U4 ( .A(n11), .Y(isEqual) );
  CLKINVX2 U5 ( .A(A[0]), .Y(n6) );
  BUFX20 U6 ( .A(n5), .Y(n1) );
  CLKINVX8 U7 ( .A(n6), .Y(n5) );
  INVX4 U8 ( .A(n8), .Y(n7) );
  INVX4 U9 ( .A(A[2]), .Y(n8) );
  CLKINVX3 U10 ( .A(codeword_width[0]), .Y(n9) );
endmodule


module dec_comparator_DATA_DEPTH6_26 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n8, n9, n10, n11, n12, n13, n14;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(N0) );
  NAND3X4 U5 ( .A(n10), .B(n9), .C(n8), .Y(n14) );
  XNOR2X4 U7 ( .A(B[1]), .B(A[1]), .Y(n9) );
  XNOR2X2 U2 ( .A(B[2]), .B(A[2]), .Y(n8) );
  XNOR2X4 U3 ( .A(B[0]), .B(A[0]), .Y(n10) );
  XOR2X1 U4 ( .A(B[3]), .B(A[3]), .Y(n12) );
  XOR2X4 U6 ( .A(B[5]), .B(A[5]), .Y(n13) );
  XOR2X2 U8 ( .A(B[4]), .B(A[4]), .Y(n11) );
endmodule


module dec_comparator_DATA_DEPTH5_26 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n7, n8, n9, n10, n11, n12, n13, n14;
  assign isEqual = N0;

  XOR2X2 U1 ( .A(B[4]), .B(A[4]), .Y(n12) );
  XNOR2X2 U2 ( .A(B[1]), .B(A[1]), .Y(n10) );
  XNOR2X1 U3 ( .A(B[0]), .B(A[0]), .Y(n11) );
  NOR2X4 U4 ( .A(n12), .B(n13), .Y(n7) );
  NOR2X4 U5 ( .A(n8), .B(n14), .Y(N0) );
  INVX8 U6 ( .A(n7), .Y(n8) );
  XOR2X2 U7 ( .A(B[3]), .B(A[3]), .Y(n13) );
  XNOR2X4 U8 ( .A(B[2]), .B(A[2]), .Y(n9) );
  NAND3X4 U9 ( .A(n11), .B(n10), .C(n9), .Y(n14) );
endmodule


module dec_comparator_DATA_DEPTH4_26 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X4 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X2 U2 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2X2 U3 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X2 U4 ( .A(B[1]), .B(A[1]), .Y(n5) );
  XNOR2X2 U5 ( .A(B[0]), .B(A[0]), .Y(n7) );
endmodule


module dec_comparator_all_options_26 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13;

  OAI2BB2X4 U1 ( .B0(codeword_width[1]), .B1(n13), .A0N(result_32bit), .A1N(
        codeword_width[1]), .Y(isEqual) );
  dec_comparator_DATA_DEPTH6_26 inst_32bit ( .A({n8, n6, A[3], n4, A[1], n1}), 
        .B({n11, B[4:0]}), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_26 inst_16bit ( .A({n6, A[3], n4, A[1], n1}), .B(
        B[4:0]), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_26 inst_8bit ( .A({A[3], n4, A[1], n1}), .B(
        B[3:0]), .isEqual(result_8bit) );
  INVX8 U2 ( .A(n3), .Y(n1) );
  INVX20 U3 ( .A(n5), .Y(n4) );
  INVX4 U4 ( .A(A[0]), .Y(n3) );
  INVX4 U5 ( .A(n7), .Y(n6) );
  INVX4 U6 ( .A(n9), .Y(n8) );
  INVX4 U7 ( .A(A[5]), .Y(n9) );
  INVX1 U8 ( .A(A[2]), .Y(n5) );
  INVX4 U9 ( .A(A[4]), .Y(n7) );
  INVXL U10 ( .A(codeword_width[0]), .Y(n10) );
  AOI22X4 U11 ( .A0(codeword_width[0]), .A1(result_16bit), .B0(result_8bit), 
        .B1(n10), .Y(n13) );
  INVX1 U12 ( .A(n12), .Y(n11) );
  INVX1 U13 ( .A(B[5]), .Y(n12) );
endmodule


module dec_comparator_DATA_DEPTH6_25 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8, n9, n10, n11;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N0) );
  XOR2X2 U2 ( .A(B[5]), .B(A[5]), .Y(n10) );
  NAND3X1 U3 ( .A(n5), .B(n6), .C(n7), .Y(n11) );
  XNOR2X1 U4 ( .A(B[1]), .B(A[1]), .Y(n6) );
  XOR2XL U5 ( .A(B[3]), .B(A[3]), .Y(n9) );
  XOR2X1 U6 ( .A(B[4]), .B(A[4]), .Y(n8) );
  XNOR2X2 U7 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XNOR2X1 U8 ( .A(B[0]), .B(A[0]), .Y(n5) );
endmodule


module dec_comparator_DATA_DEPTH5_25 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n7, n8, n9, n10, n11, n12;
  assign isEqual = N0;

  NOR3X4 U1 ( .A(n11), .B(n12), .C(n10), .Y(N0) );
  XOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(n11) );
  XOR2X1 U3 ( .A(B[4]), .B(A[4]), .Y(n10) );
  NAND3X2 U4 ( .A(n9), .B(n8), .C(n7), .Y(n12) );
  XNOR2X4 U5 ( .A(B[1]), .B(A[1]), .Y(n8) );
  XNOR2X4 U6 ( .A(B[0]), .B(A[0]), .Y(n9) );
  XNOR2X2 U7 ( .A(B[2]), .B(A[2]), .Y(n7) );
endmodule


module dec_comparator_DATA_DEPTH4_25 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X4 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X1 U2 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2XL U3 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X1 U4 ( .A(B[1]), .B(A[1]), .Y(n5) );
  XNOR2X1 U5 ( .A(B[0]), .B(A[0]), .Y(n7) );
endmodule


module dec_comparator_all_options_25 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14;

  OAI2BB2X4 U1 ( .B0(codeword_width[1]), .B1(n14), .A0N(result_32bit), .A1N(
        codeword_width[1]), .Y(isEqual) );
  AOI22X4 U2 ( .A0(result_8bit), .A1(n13), .B0(result_16bit), .B1(n12), .Y(n14) );
  dec_comparator_DATA_DEPTH6_25 inst_32bit ( .A({n10, n8, A[3], n6, A[1], n4}), 
        .B({B[5:4], n1, B[2:0]}), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_25 inst_16bit ( .A({n8, A[3], n6, A[1], n4}), .B(
        {B[4], n1, B[2:0]}), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_25 inst_8bit ( .A({A[3], n6, A[1], n4}), .B({n1, 
        B[2:0]}), .isEqual(result_8bit) );
  INVX4 U3 ( .A(n11), .Y(n10) );
  CLKINVX8 U4 ( .A(n5), .Y(n4) );
  CLKINVX2 U5 ( .A(A[0]), .Y(n5) );
  CLKINVX4 U6 ( .A(n9), .Y(n8) );
  CLKINVX2 U7 ( .A(A[4]), .Y(n9) );
  INVX8 U8 ( .A(n7), .Y(n6) );
  INVX1 U9 ( .A(n3), .Y(n1) );
  INVX1 U10 ( .A(B[3]), .Y(n3) );
  INVX1 U11 ( .A(n13), .Y(n12) );
  INVX1 U12 ( .A(codeword_width[0]), .Y(n13) );
  INVX1 U13 ( .A(A[2]), .Y(n7) );
  INVX1 U14 ( .A(A[5]), .Y(n11) );
endmodule


module dec_comparator_DATA_DEPTH6_24 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8, n9, n10, n11;
  assign isEqual = N0;

  XOR2X1 U1 ( .A(B[1]), .B(A[1]), .Y(n6) );
  XOR2X4 U2 ( .A(B[5]), .B(A[5]), .Y(n10) );
  OR3X4 U3 ( .A(n5), .B(n6), .C(n7), .Y(n11) );
  NOR4X4 U4 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N0) );
  XOR2X1 U5 ( .A(B[3]), .B(A[3]), .Y(n9) );
  XOR2X1 U6 ( .A(B[4]), .B(A[4]), .Y(n8) );
  XOR2X1 U7 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XOR2X1 U8 ( .A(B[0]), .B(A[0]), .Y(n5) );
endmodule


module dec_comparator_DATA_DEPTH5_24 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n1, n2, n3, n7, n8, n9;
  assign isEqual = N0;

  AND3X4 U1 ( .A(n9), .B(n8), .C(n7), .Y(n1) );
  XNOR2X2 U2 ( .A(B[1]), .B(A[1]), .Y(n8) );
  AND3X4 U3 ( .A(n1), .B(n2), .C(n3), .Y(N0) );
  XNOR2X1 U4 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XNOR2X1 U5 ( .A(B[0]), .B(A[0]), .Y(n9) );
  XNOR2X1 U6 ( .A(B[3]), .B(A[3]), .Y(n2) );
  XNOR2X1 U7 ( .A(B[4]), .B(A[4]), .Y(n3) );
endmodule


module dec_comparator_DATA_DEPTH4_24 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X2 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X1 U3 ( .A(B[1]), .B(A[1]), .Y(n5) );
  XNOR2X1 U4 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XNOR2X1 U5 ( .A(B[2]), .B(A[2]), .Y(n6) );
endmodule


module dec_comparator_all_options_24 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;

  dec_comparator_DATA_DEPTH6_24 inst_32bit ( .A({n14, n12, A[3], n10, n8, n6}), 
        .B({B[5:3], n4, n1, B[0]}), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_24 inst_16bit ( .A({n12, A[3], n10, n8, n6}), .B(
        {B[4:3], n4, n1, B[0]}), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_24 inst_8bit ( .A({A[3], n10, n8, n6}), .B({B[3], 
        n4, n1, B[0]}), .isEqual(result_8bit) );
  INVX8 U1 ( .A(n15), .Y(n14) );
  AOI22X4 U2 ( .A0(result_8bit), .A1(n17), .B0(result_16bit), .B1(n16), .Y(n18) );
  OAI2BB2X4 U3 ( .B0(codeword_width[1]), .B1(n18), .A0N(result_32bit), .A1N(
        codeword_width[1]), .Y(isEqual) );
  INVX8 U4 ( .A(n9), .Y(n8) );
  CLKINVX8 U5 ( .A(A[4]), .Y(n13) );
  CLKINVX3 U6 ( .A(n13), .Y(n12) );
  CLKINVX8 U7 ( .A(n7), .Y(n6) );
  INVX8 U8 ( .A(A[0]), .Y(n7) );
  INVX8 U9 ( .A(A[2]), .Y(n11) );
  INVX8 U10 ( .A(n5), .Y(n4) );
  INVX8 U11 ( .A(n11), .Y(n10) );
  INVX8 U12 ( .A(A[1]), .Y(n9) );
  INVX1 U13 ( .A(n3), .Y(n1) );
  INVX1 U14 ( .A(B[1]), .Y(n3) );
  INVX1 U15 ( .A(B[2]), .Y(n5) );
  INVX1 U16 ( .A(n17), .Y(n16) );
  INVX1 U17 ( .A(codeword_width[0]), .Y(n17) );
  INVX1 U18 ( .A(A[5]), .Y(n15) );
endmodule


module dec_comparator_DATA_DEPTH6_23 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8, n9, n10, n11;
  assign isEqual = N0;

  XNOR2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n5) );
  XOR2X1 U2 ( .A(B[5]), .B(A[5]), .Y(n10) );
  NOR4X2 U3 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N0) );
  XNOR2X1 U4 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XOR2XL U5 ( .A(B[3]), .B(A[3]), .Y(n9) );
  XNOR2X2 U6 ( .A(B[1]), .B(A[1]), .Y(n6) );
  NAND3X4 U7 ( .A(n5), .B(n6), .C(n7), .Y(n11) );
  XOR2X1 U8 ( .A(B[4]), .B(A[4]), .Y(n8) );
endmodule


module dec_comparator_DATA_DEPTH5_23 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n1, n2, n3, n7, n8, n9;
  assign isEqual = N0;

  XNOR2X4 U6 ( .A(B[1]), .B(A[1]), .Y(n8) );
  XOR2X1 U1 ( .A(B[3]), .B(A[3]), .Y(n2) );
  XNOR2X2 U2 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XNOR2X4 U3 ( .A(B[0]), .B(A[0]), .Y(n9) );
  XOR2X2 U4 ( .A(B[4]), .B(A[4]), .Y(n3) );
  NOR3X4 U5 ( .A(n1), .B(n2), .C(n3), .Y(N0) );
  NAND3X4 U7 ( .A(n9), .B(n8), .C(n7), .Y(n1) );
endmodule


module dec_comparator_DATA_DEPTH4_23 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X4 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X2 U2 ( .A(B[1]), .B(A[1]), .Y(n5) );
  XNOR2XL U3 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X1 U4 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XNOR2X1 U5 ( .A(B[2]), .B(A[2]), .Y(n6) );
endmodule


module dec_comparator_all_options_23 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16;

  AOI22X4 U2 ( .A0(result_8bit), .A1(n13), .B0(result_16bit), .B1(
        codeword_width[0]), .Y(n16) );
  dec_comparator_DATA_DEPTH6_23 inst_32bit ( .A({A[5], n11, A[3], n1, n9, n7}), 
        .B({B[5:3], n14, B[1], n5}), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_23 inst_16bit ( .A({n11, A[3], n1, n9, n7}), .B({
        B[4:3], n14, B[1], n5}), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_23 inst_8bit ( .A({A[3], n1, n9, n7}), .B({B[3], 
        n14, B[1], n5}), .isEqual(result_8bit) );
  INVX8 U1 ( .A(n10), .Y(n9) );
  BUFX20 U3 ( .A(n3), .Y(n1) );
  INVX20 U4 ( .A(n8), .Y(n7) );
  INVX4 U5 ( .A(A[1]), .Y(n10) );
  INVX1 U6 ( .A(n6), .Y(n5) );
  INVX1 U7 ( .A(B[2]), .Y(n15) );
  BUFX4 U8 ( .A(A[2]), .Y(n3) );
  CLKINVX1 U9 ( .A(A[4]), .Y(n12) );
  INVX16 U10 ( .A(n12), .Y(n11) );
  INVXL U11 ( .A(B[0]), .Y(n6) );
  OAI2BB2X4 U12 ( .B0(codeword_width[1]), .B1(n16), .A0N(result_32bit), .A1N(
        codeword_width[1]), .Y(isEqual) );
  INVXL U13 ( .A(A[0]), .Y(n8) );
  INVX1 U14 ( .A(n15), .Y(n14) );
  INVX1 U15 ( .A(codeword_width[0]), .Y(n13) );
endmodule


module dec_comparator_DATA_DEPTH6_22 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8, n9, n10, n11;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N0) );
  XOR2X1 U2 ( .A(B[5]), .B(A[5]), .Y(n10) );
  XOR2X2 U3 ( .A(B[4]), .B(A[4]), .Y(n8) );
  XNOR2X2 U4 ( .A(B[0]), .B(A[0]), .Y(n5) );
  XNOR2X2 U5 ( .A(B[1]), .B(A[1]), .Y(n6) );
  XNOR2X4 U6 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XOR2X2 U7 ( .A(B[3]), .B(A[3]), .Y(n9) );
  NAND3X4 U8 ( .A(n5), .B(n6), .C(n7), .Y(n11) );
endmodule


module dec_comparator_DATA_DEPTH5_22 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n1, n2, n3, n7, n8, n9;
  assign isEqual = N0;

  XNOR2X2 U1 ( .A(B[1]), .B(A[1]), .Y(n8) );
  XNOR2X1 U2 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XNOR2X2 U3 ( .A(B[3]), .B(A[3]), .Y(n2) );
  XNOR2X2 U4 ( .A(B[0]), .B(A[0]), .Y(n9) );
  XNOR2X2 U5 ( .A(B[4]), .B(A[4]), .Y(n3) );
  AND3X4 U6 ( .A(n1), .B(n2), .C(n3), .Y(N0) );
  AND3X4 U7 ( .A(n9), .B(n8), .C(n7), .Y(n1) );
endmodule


module dec_comparator_DATA_DEPTH4_22 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X4 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X2 U2 ( .A(B[1]), .B(A[1]), .Y(n5) );
  XNOR2X1 U3 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XNOR2X2 U4 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X1 U5 ( .A(B[2]), .B(A[2]), .Y(n6) );
endmodule


module dec_comparator_all_options_22 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  OAI2BB2X4 U1 ( .B0(n20), .B1(n16), .A0N(result_32bit), .A1N(n16), .Y(isEqual) );
  AOI22X4 U2 ( .A0(result_8bit), .A1(n15), .B0(result_16bit), .B1(n14), .Y(n20) );
  dec_comparator_DATA_DEPTH6_22 inst_32bit ( .A({A[5], n12, n10, n8, n6, n4}), 
        .B({B[5:4], n1, B[2:1], n18}), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_22 inst_16bit ( .A({n12, n10, n8, n6, n4}), .B({
        B[4], n1, B[2:1], n18}), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_22 inst_8bit ( .A({n10, n8, n6, n4}), .B({n1, 
        B[2:1], n18}), .isEqual(result_8bit) );
  CLKINVX8 U3 ( .A(n11), .Y(n10) );
  CLKINVX2 U4 ( .A(A[3]), .Y(n11) );
  INVX8 U5 ( .A(n7), .Y(n6) );
  INVX16 U6 ( .A(n5), .Y(n4) );
  INVX16 U7 ( .A(n9), .Y(n8) );
  INVXL U8 ( .A(A[2]), .Y(n9) );
  CLKINVXL U9 ( .A(A[0]), .Y(n5) );
  INVX1 U10 ( .A(B[0]), .Y(n19) );
  INVX1 U11 ( .A(n15), .Y(n14) );
  INVX16 U12 ( .A(n13), .Y(n12) );
  INVX12 U13 ( .A(A[1]), .Y(n7) );
  INVXL U14 ( .A(B[3]), .Y(n3) );
  INVXL U15 ( .A(codeword_width[1]), .Y(n17) );
  INVXL U16 ( .A(codeword_width[0]), .Y(n15) );
  INVX1 U17 ( .A(n3), .Y(n1) );
  INVX1 U18 ( .A(n19), .Y(n18) );
  INVX1 U19 ( .A(A[4]), .Y(n13) );
  INVX1 U20 ( .A(n17), .Y(n16) );
endmodule


module dec_comparator_DATA_DEPTH6_21 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n23), .B(n22), .C(n21), .D(n20), .Y(N0) );
  CLKINVX8 U2 ( .A(A[0]), .Y(n6) );
  XOR2X2 U3 ( .A(B[5]), .B(A[5]), .Y(n22) );
  NAND2X2 U4 ( .A(B[4]), .B(n14), .Y(n15) );
  INVX1 U5 ( .A(B[0]), .Y(n5) );
  INVX1 U6 ( .A(A[4]), .Y(n14) );
  NAND2X4 U7 ( .A(n15), .B(n16), .Y(n20) );
  NAND2XL U8 ( .A(B[0]), .B(n6), .Y(n7) );
  NAND2XL U9 ( .A(n5), .B(A[0]), .Y(n8) );
  NAND2X1 U10 ( .A(n7), .B(n8), .Y(n17) );
  NAND2X4 U11 ( .A(B[1]), .B(n10), .Y(n11) );
  NAND2X1 U12 ( .A(n9), .B(A[1]), .Y(n12) );
  NAND2X2 U13 ( .A(n11), .B(n12), .Y(n18) );
  INVXL U14 ( .A(B[1]), .Y(n9) );
  CLKINVX2 U15 ( .A(A[1]), .Y(n10) );
  NAND2X2 U16 ( .A(n13), .B(A[4]), .Y(n16) );
  INVXL U17 ( .A(B[4]), .Y(n13) );
  XOR2X2 U18 ( .A(B[2]), .B(A[2]), .Y(n19) );
  XOR2X2 U19 ( .A(B[3]), .B(A[3]), .Y(n21) );
  OR3X4 U20 ( .A(n17), .B(n18), .C(n19), .Y(n23) );
endmodule


module dec_comparator_DATA_DEPTH5_21 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n7, n8, n9, n10, n11, n12;
  assign isEqual = N0;

  NOR3X4 U1 ( .A(n12), .B(n11), .C(n10), .Y(N0) );
  XOR2X4 U3 ( .A(B[3]), .B(A[3]), .Y(n11) );
  NAND3X4 U4 ( .A(n9), .B(n8), .C(n7), .Y(n12) );
  XNOR2XL U2 ( .A(B[0]), .B(A[0]), .Y(n9) );
  XNOR2X2 U5 ( .A(B[1]), .B(A[1]), .Y(n8) );
  XOR2X2 U6 ( .A(B[4]), .B(A[4]), .Y(n10) );
  XNOR2X2 U7 ( .A(B[2]), .B(A[2]), .Y(n7) );
endmodule


module dec_comparator_DATA_DEPTH4_21 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X4 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2XL U2 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XNOR2X2 U3 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2X2 U4 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X1 U5 ( .A(B[1]), .B(A[1]), .Y(n5) );
endmodule


module dec_comparator_all_options_21 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;

  OAI2BB2X4 U1 ( .B0(n16), .B1(n18), .A0N(result_32bit), .A1N(n16), .Y(isEqual) );
  dec_comparator_DATA_DEPTH6_21 inst_32bit ( .A({n12, A[4], n10, n8, n6, n4}), 
        .B({B[5:4], n1, B[2:0]}), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_21 inst_16bit ( .A({A[4], n10, n8, n6, n4}), .B({
        B[4], n1, B[2:0]}), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_21 inst_8bit ( .A({n10, n8, n6, n4}), .B({n1, 
        B[2:0]}), .isEqual(result_8bit) );
  INVX12 U2 ( .A(n11), .Y(n10) );
  INVX1 U3 ( .A(A[3]), .Y(n11) );
  INVX8 U4 ( .A(n7), .Y(n6) );
  AOI22X4 U5 ( .A0(result_8bit), .A1(n15), .B0(result_16bit), .B1(n14), .Y(n18) );
  INVX2 U6 ( .A(A[0]), .Y(n5) );
  INVX20 U7 ( .A(n5), .Y(n4) );
  INVX4 U8 ( .A(n13), .Y(n12) );
  INVX4 U9 ( .A(A[1]), .Y(n7) );
  INVX1 U10 ( .A(A[2]), .Y(n9) );
  CLKINVX3 U11 ( .A(n9), .Y(n8) );
  INVXL U12 ( .A(codeword_width[1]), .Y(n17) );
  INVX1 U13 ( .A(n3), .Y(n1) );
  INVX1 U14 ( .A(B[3]), .Y(n3) );
  INVX1 U15 ( .A(n15), .Y(n14) );
  INVX1 U16 ( .A(codeword_width[0]), .Y(n15) );
  INVX1 U17 ( .A(A[5]), .Y(n13) );
  INVX1 U18 ( .A(n17), .Y(n16) );
endmodule


module dec_comparator_DATA_DEPTH6_20 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8, n9, n10, n11;
  assign isEqual = N0;

  XOR2X1 U1 ( .A(B[1]), .B(A[1]), .Y(n6) );
  XOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(n9) );
  NOR4X4 U3 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N0) );
  XOR2X4 U4 ( .A(B[5]), .B(A[5]), .Y(n10) );
  XOR2X1 U5 ( .A(B[4]), .B(A[4]), .Y(n8) );
  OR3X4 U6 ( .A(n5), .B(n6), .C(n7), .Y(n11) );
  XOR2X1 U7 ( .A(B[0]), .B(A[0]), .Y(n5) );
  XOR2X1 U8 ( .A(B[2]), .B(A[2]), .Y(n7) );
endmodule


module dec_comparator_DATA_DEPTH5_20 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n1, n2, n3, n7, n8, n9;
  assign isEqual = N0;

  XOR2X4 U1 ( .A(B[3]), .B(A[3]), .Y(n2) );
  XOR2X2 U2 ( .A(B[4]), .B(A[4]), .Y(n3) );
  XNOR2X2 U3 ( .A(B[2]), .B(A[2]), .Y(n7) );
  NOR3X4 U4 ( .A(n1), .B(n2), .C(n3), .Y(N0) );
  NAND3X4 U5 ( .A(n9), .B(n8), .C(n7), .Y(n1) );
  XNOR2X2 U6 ( .A(B[0]), .B(A[0]), .Y(n9) );
  XNOR2X2 U7 ( .A(B[1]), .B(A[1]), .Y(n8) );
endmodule


module dec_comparator_DATA_DEPTH4_20 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X4 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X2 U2 ( .A(B[1]), .B(A[1]), .Y(n5) );
  XNOR2X4 U3 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X1 U4 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XNOR2X1 U5 ( .A(B[2]), .B(A[2]), .Y(n6) );
endmodule


module dec_comparator_all_options_20 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  dec_comparator_DATA_DEPTH6_20 inst_32bit ( .A({n13, A[4], n11, n9, n7, n5}), 
        .B({B[5:2], n19, n17}), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_20 inst_16bit ( .A({A[4], n11, n9, n7, n5}), .B({
        B[4:2], n19, n17}), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_20 inst_8bit ( .A({n11, n9, n7, n5}), .B({B[3:2], 
        n19, n17}), .isEqual(result_8bit) );
  INVX8 U1 ( .A(n1), .Y(isEqual) );
  CLKINVX8 U2 ( .A(result_32bit), .Y(n4) );
  INVX8 U3 ( .A(A[2]), .Y(n10) );
  INVX8 U4 ( .A(n21), .Y(n3) );
  AOI22X4 U5 ( .A0(result_8bit), .A1(n15), .B0(result_16bit), .B1(
        codeword_width[0]), .Y(n21) );
  INVX2 U6 ( .A(A[0]), .Y(n6) );
  INVXL U7 ( .A(B[1]), .Y(n20) );
  INVXL U8 ( .A(B[0]), .Y(n18) );
  INVX4 U9 ( .A(n14), .Y(n13) );
  CLKINVX1 U10 ( .A(A[3]), .Y(n12) );
  INVX8 U11 ( .A(A[1]), .Y(n8) );
  CLKINVX3 U12 ( .A(n6), .Y(n5) );
  INVX20 U13 ( .A(n12), .Y(n11) );
  INVX16 U14 ( .A(n10), .Y(n9) );
  INVXL U15 ( .A(codeword_width[1]), .Y(n16) );
  INVX1 U16 ( .A(n20), .Y(n19) );
  INVX1 U17 ( .A(n18), .Y(n17) );
  INVX1 U18 ( .A(codeword_width[0]), .Y(n15) );
  AOI2BB2X4 U19 ( .B0(n16), .B1(n3), .A0N(n4), .A1N(n16), .Y(n1) );
  INVX1 U20 ( .A(A[5]), .Y(n14) );
  INVX8 U21 ( .A(n8), .Y(n7) );
endmodule


module dec_comparator_DATA_DEPTH6_19 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8, n9, n10, n11;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N0) );
  OR3X2 U2 ( .A(n5), .B(n6), .C(n7), .Y(n11) );
  XOR2X1 U3 ( .A(B[4]), .B(A[4]), .Y(n8) );
  XOR2X1 U4 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XOR2X1 U5 ( .A(B[3]), .B(A[3]), .Y(n9) );
  XOR2X1 U6 ( .A(B[0]), .B(A[0]), .Y(n5) );
  XOR2XL U7 ( .A(B[1]), .B(A[1]), .Y(n6) );
  XOR2X1 U8 ( .A(B[5]), .B(A[5]), .Y(n10) );
endmodule


module dec_comparator_DATA_DEPTH5_19 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n1, n2, n3, n7, n8, n9;
  assign isEqual = N0;

  XNOR2X2 U1 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XNOR2X1 U2 ( .A(B[1]), .B(A[1]), .Y(n8) );
  XNOR2X2 U3 ( .A(B[0]), .B(A[0]), .Y(n9) );
  XOR2X4 U4 ( .A(B[3]), .B(A[3]), .Y(n2) );
  NOR3X4 U5 ( .A(n1), .B(n2), .C(n3), .Y(N0) );
  NAND3X4 U6 ( .A(n9), .B(n8), .C(n7), .Y(n1) );
  XOR2X4 U7 ( .A(B[4]), .B(A[4]), .Y(n3) );
endmodule


module dec_comparator_DATA_DEPTH4_19 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X2 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X2 U2 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X1 U3 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XNOR2X1 U4 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2X1 U5 ( .A(B[1]), .B(A[1]), .Y(n5) );
endmodule


module dec_comparator_all_options_19 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19;

  AOI22X4 U2 ( .A0(result_8bit), .A1(n16), .B0(result_16bit), .B1(n15), .Y(n19) );
  dec_comparator_DATA_DEPTH6_19 inst_32bit ( .A({A[5], n13, n11, n9, A[1], n7}), .B({B[5:4], n5, n3, B[1:0]}), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_19 inst_16bit ( .A({n13, n11, n9, A[1], n7}), .B(
        {B[4], n5, n3, B[1:0]}), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_19 inst_8bit ( .A({n11, n9, A[1], n7}), .B({n5, 
        n3, B[1:0]}), .isEqual(result_8bit) );
  INVX4 U1 ( .A(n14), .Y(n13) );
  CLKINVXL U3 ( .A(A[0]), .Y(n8) );
  INVX1 U4 ( .A(A[4]), .Y(n14) );
  INVX12 U5 ( .A(n8), .Y(n7) );
  INVX8 U6 ( .A(n12), .Y(n11) );
  INVX12 U7 ( .A(A[3]), .Y(n12) );
  INVX16 U8 ( .A(n10), .Y(n9) );
  INVXL U9 ( .A(B[3]), .Y(n6) );
  INVXL U10 ( .A(codeword_width[1]), .Y(n18) );
  OAI2BB2X4 U11 ( .B0(n17), .B1(n19), .A0N(result_32bit), .A1N(n17), .Y(
        isEqual) );
  INVX2 U12 ( .A(n18), .Y(n17) );
  INVX1 U13 ( .A(n6), .Y(n5) );
  INVX1 U14 ( .A(n4), .Y(n3) );
  INVX1 U15 ( .A(B[2]), .Y(n4) );
  INVX1 U16 ( .A(n16), .Y(n15) );
  INVX1 U17 ( .A(codeword_width[0]), .Y(n16) );
  INVX1 U18 ( .A(A[2]), .Y(n10) );
endmodule


module dec_comparator_DATA_DEPTH6_18 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8, n9, n10, n11;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N0) );
  OR3X4 U2 ( .A(n5), .B(n6), .C(n7), .Y(n11) );
  XOR2X2 U3 ( .A(B[3]), .B(A[3]), .Y(n9) );
  XOR2X2 U4 ( .A(B[5]), .B(A[5]), .Y(n10) );
  XOR2X1 U5 ( .A(B[0]), .B(A[0]), .Y(n5) );
  XOR2X1 U6 ( .A(B[4]), .B(A[4]), .Y(n8) );
  XOR2XL U7 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XOR2X1 U8 ( .A(B[1]), .B(A[1]), .Y(n6) );
endmodule


module dec_comparator_DATA_DEPTH5_18 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n1, n2, n3, n7, n8, n9;
  assign isEqual = N0;

  XNOR2X2 U1 ( .A(B[1]), .B(A[1]), .Y(n8) );
  XNOR2X2 U2 ( .A(B[0]), .B(A[0]), .Y(n9) );
  XOR2X1 U3 ( .A(B[4]), .B(A[4]), .Y(n3) );
  NAND3X2 U4 ( .A(n9), .B(n8), .C(n7), .Y(n1) );
  XOR2X2 U5 ( .A(B[3]), .B(A[3]), .Y(n2) );
  XNOR2X2 U6 ( .A(B[2]), .B(A[2]), .Y(n7) );
  NOR3X4 U7 ( .A(n1), .B(n2), .C(n3), .Y(N0) );
endmodule


module dec_comparator_DATA_DEPTH4_18 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X4 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X1 U2 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2X2 U3 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X1 U4 ( .A(B[1]), .B(A[1]), .Y(n5) );
  XNOR2X1 U5 ( .A(B[0]), .B(A[0]), .Y(n7) );
endmodule


module dec_comparator_all_options_18 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;

  dec_comparator_DATA_DEPTH6_18 inst_32bit ( .A({n15, n13, n11, n9, n7, A[0]}), 
        .B({B[5:4], n5, n3, B[1], n20}), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_18 inst_16bit ( .A({n13, n11, n9, n7, A[0]}), .B(
        {B[4], n5, n3, B[1], n20}), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_18 inst_8bit ( .A({n11, n9, n7, A[0]}), .B({n5, 
        n3, B[1], n20}), .isEqual(result_8bit) );
  INVX4 U1 ( .A(n14), .Y(n13) );
  CLKINVX3 U2 ( .A(n16), .Y(n15) );
  CLKINVX2 U3 ( .A(A[5]), .Y(n16) );
  INVX4 U4 ( .A(A[2]), .Y(n10) );
  INVX8 U5 ( .A(A[3]), .Y(n12) );
  INVX8 U6 ( .A(n8), .Y(n7) );
  INVX12 U7 ( .A(A[1]), .Y(n8) );
  AOI22X4 U8 ( .A0(result_8bit), .A1(n17), .B0(result_16bit), .B1(
        codeword_width[0]), .Y(n22) );
  INVXL U9 ( .A(B[0]), .Y(n21) );
  CLKINVX4 U10 ( .A(A[4]), .Y(n14) );
  CLKINVX3 U11 ( .A(n4), .Y(n3) );
  INVX16 U12 ( .A(n10), .Y(n9) );
  INVX16 U13 ( .A(n12), .Y(n11) );
  INVXL U14 ( .A(codeword_width[1]), .Y(n19) );
  OAI2BB2X4 U15 ( .B0(n18), .B1(n22), .A0N(result_32bit), .A1N(n18), .Y(
        isEqual) );
  INVX2 U16 ( .A(n19), .Y(n18) );
  INVX1 U17 ( .A(n6), .Y(n5) );
  INVX1 U18 ( .A(B[3]), .Y(n6) );
  INVX1 U19 ( .A(B[2]), .Y(n4) );
  INVX1 U20 ( .A(n21), .Y(n20) );
  INVX1 U21 ( .A(codeword_width[0]), .Y(n17) );
endmodule


module dec_comparator_DATA_DEPTH6_17 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8, n9, n10, n11;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N0) );
  XOR2X4 U2 ( .A(B[5]), .B(A[5]), .Y(n10) );
  XOR2X2 U3 ( .A(B[4]), .B(A[4]), .Y(n8) );
  OR3X2 U4 ( .A(n5), .B(n6), .C(n7), .Y(n11) );
  XOR2X1 U5 ( .A(B[0]), .B(A[0]), .Y(n5) );
  XOR2X1 U6 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XOR2X2 U7 ( .A(B[1]), .B(A[1]), .Y(n6) );
  XOR2X1 U8 ( .A(B[3]), .B(A[3]), .Y(n9) );
endmodule


module dec_comparator_DATA_DEPTH5_17 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n1, n2, n3, n7, n8, n9;
  assign isEqual = N0;

  XNOR2X4 U1 ( .A(B[4]), .B(A[4]), .Y(n3) );
  XNOR2X2 U2 ( .A(B[1]), .B(A[1]), .Y(n8) );
  XNOR2X1 U3 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XNOR2X1 U4 ( .A(B[0]), .B(A[0]), .Y(n9) );
  AND3X4 U5 ( .A(n1), .B(n2), .C(n3), .Y(N0) );
  AND3X4 U6 ( .A(n9), .B(n8), .C(n7), .Y(n1) );
  XNOR2X1 U7 ( .A(B[3]), .B(A[3]), .Y(n2) );
endmodule


module dec_comparator_DATA_DEPTH4_17 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X4 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X1 U3 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XNOR2X2 U4 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2X4 U5 ( .A(B[1]), .B(A[1]), .Y(n5) );
endmodule


module dec_comparator_all_options_17 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  OAI2BB2X4 U1 ( .B0(n19), .B1(n21), .A0N(result_32bit), .A1N(n19), .Y(isEqual) );
  dec_comparator_DATA_DEPTH6_17 inst_32bit ( .A({n17, n15, A[3], n13, n11, n9}), .B({B[5:4], n7, n5, n3, B[0]}), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_17 inst_16bit ( .A({n15, A[3], n13, n11, n9}), 
        .B({B[4], n7, n5, n3, B[0]}), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_17 inst_8bit ( .A({A[3], n13, n11, n9}), .B({n7, 
        n5, n3, B[0]}), .isEqual(result_8bit) );
  INVX16 U2 ( .A(n10), .Y(n9) );
  INVX1 U3 ( .A(A[0]), .Y(n10) );
  INVX8 U4 ( .A(n18), .Y(n17) );
  INVX8 U5 ( .A(A[1]), .Y(n12) );
  INVX16 U6 ( .A(n16), .Y(n15) );
  INVX12 U7 ( .A(n12), .Y(n11) );
  INVX1 U8 ( .A(A[4]), .Y(n16) );
  INVX1 U9 ( .A(A[5]), .Y(n18) );
  CLKINVX3 U10 ( .A(result_8bit), .Y(n1) );
  INVX16 U11 ( .A(n14), .Y(n13) );
  INVXL U12 ( .A(B[1]), .Y(n4) );
  INVXL U13 ( .A(codeword_width[1]), .Y(n20) );
  AOI2BB2X4 U14 ( .B0(result_16bit), .B1(codeword_width[0]), .A0N(n1), .A1N(
        codeword_width[0]), .Y(n21) );
  INVX1 U15 ( .A(n4), .Y(n3) );
  INVX1 U16 ( .A(n6), .Y(n5) );
  INVX1 U17 ( .A(B[2]), .Y(n6) );
  INVX1 U18 ( .A(n8), .Y(n7) );
  INVX1 U19 ( .A(B[3]), .Y(n8) );
  INVX1 U20 ( .A(n20), .Y(n19) );
  INVX1 U21 ( .A(A[2]), .Y(n14) );
endmodule


module dec_comparator_DATA_DEPTH6_16 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8, n9, n10, n11;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N0) );
  XOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(n9) );
  XOR2X4 U3 ( .A(B[5]), .B(A[5]), .Y(n10) );
  XOR2X2 U4 ( .A(B[1]), .B(A[1]), .Y(n6) );
  XOR2X1 U5 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XOR2X1 U6 ( .A(B[0]), .B(A[0]), .Y(n5) );
  XOR2X2 U7 ( .A(B[4]), .B(A[4]), .Y(n8) );
  OR3X4 U8 ( .A(n5), .B(n6), .C(n7), .Y(n11) );
endmodule


module dec_comparator_DATA_DEPTH5_16 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n7, n8, n9, n10, n11, n12;
  assign isEqual = N0;

  NOR3X4 U1 ( .A(n12), .B(n11), .C(n10), .Y(N0) );
  XOR2X4 U2 ( .A(B[4]), .B(A[4]), .Y(n10) );
  NAND3X4 U3 ( .A(n9), .B(n8), .C(n7), .Y(n12) );
  XNOR2X2 U4 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XOR2X2 U5 ( .A(B[3]), .B(A[3]), .Y(n11) );
  XNOR2X4 U6 ( .A(B[1]), .B(A[1]), .Y(n8) );
  XNOR2X2 U7 ( .A(B[0]), .B(A[0]), .Y(n9) );
endmodule


module dec_comparator_DATA_DEPTH4_16 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X4 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X2 U2 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XNOR2X2 U3 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2X2 U4 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X2 U5 ( .A(B[1]), .B(A[1]), .Y(n5) );
endmodule


module dec_comparator_all_options_16 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25;

  OAI2BB2X4 U1 ( .B0(codeword_width[1]), .B1(n25), .A0N(result_32bit), .A1N(
        codeword_width[1]), .Y(isEqual) );
  dec_comparator_DATA_DEPTH6_16 inst_32bit ( .A({n13, n11, n9, n7, n5, n3}), 
        .B({B[5:4], n23, n21, n19, n17}), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_16 inst_16bit ( .A({n11, n9, n7, n5, n3}), .B({
        B[4], n23, n21, n19, n17}), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_16 inst_8bit ( .A({n9, n7, n5, n3}), .B({n23, n21, 
        n19, n17}), .isEqual(result_8bit) );
  CLKINVX8 U2 ( .A(result_8bit), .Y(n1) );
  INVX16 U3 ( .A(n4), .Y(n3) );
  INVX16 U4 ( .A(n10), .Y(n9) );
  INVXL U5 ( .A(B[3]), .Y(n24) );
  INVX1 U6 ( .A(B[1]), .Y(n20) );
  INVX1 U7 ( .A(B[0]), .Y(n18) );
  CLKINVX3 U8 ( .A(n8), .Y(n7) );
  CLKINVX3 U9 ( .A(A[2]), .Y(n8) );
  INVX1 U10 ( .A(n22), .Y(n21) );
  INVX1 U11 ( .A(B[2]), .Y(n22) );
  INVX1 U12 ( .A(A[0]), .Y(n4) );
  INVX12 U13 ( .A(A[4]), .Y(n12) );
  INVX4 U14 ( .A(A[1]), .Y(n6) );
  CLKINVX8 U15 ( .A(n12), .Y(n11) );
  INVX12 U16 ( .A(A[5]), .Y(n14) );
  CLKINVX8 U17 ( .A(n14), .Y(n13) );
  CLKINVX20 U18 ( .A(n6), .Y(n5) );
  AOI2BB2X4 U19 ( .B0(result_16bit), .B1(n15), .A0N(n1), .A1N(n15), .Y(n25) );
  INVX1 U20 ( .A(n20), .Y(n19) );
  INVX1 U21 ( .A(n18), .Y(n17) );
  INVX1 U22 ( .A(n24), .Y(n23) );
  INVX1 U23 ( .A(n16), .Y(n15) );
  INVX1 U24 ( .A(codeword_width[0]), .Y(n16) );
  INVX1 U25 ( .A(A[3]), .Y(n10) );
endmodule


module dec_comparator_DATA_DEPTH6_15 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n15), .B(n14), .C(n13), .D(n12), .Y(N0) );
  XOR2X2 U2 ( .A(B[0]), .B(A[0]), .Y(n9) );
  XOR2X1 U3 ( .A(B[5]), .B(A[5]), .Y(n14) );
  OR3X2 U4 ( .A(n9), .B(n10), .C(n11), .Y(n15) );
  NAND2X2 U5 ( .A(n7), .B(n8), .Y(n12) );
  NAND2X1 U6 ( .A(n5), .B(A[4]), .Y(n8) );
  XOR2XL U7 ( .A(B[3]), .B(A[3]), .Y(n13) );
  NAND2X2 U8 ( .A(B[4]), .B(n6), .Y(n7) );
  INVXL U9 ( .A(B[4]), .Y(n5) );
  INVX12 U10 ( .A(A[4]), .Y(n6) );
  XOR2X2 U11 ( .A(B[2]), .B(A[2]), .Y(n11) );
  XOR2X2 U12 ( .A(B[1]), .B(A[1]), .Y(n10) );
endmodule


module dec_comparator_DATA_DEPTH5_15 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n1, n2, n3, n7, n8, n9;
  assign isEqual = N0;

  XNOR2X4 U5 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XNOR2X4 U6 ( .A(B[1]), .B(A[1]), .Y(n8) );
  XNOR2X1 U1 ( .A(B[4]), .B(A[4]), .Y(n3) );
  XNOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(n2) );
  XNOR2X4 U3 ( .A(B[0]), .B(A[0]), .Y(n9) );
  AND3X4 U4 ( .A(n1), .B(n2), .C(n3), .Y(N0) );
  AND3X4 U7 ( .A(n9), .B(n8), .C(n7), .Y(n1) );
endmodule


module dec_comparator_DATA_DEPTH4_15 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X2 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X1 U3 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XNOR2X2 U4 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2X2 U5 ( .A(B[1]), .B(A[1]), .Y(n5) );
endmodule


module dec_comparator_all_options_15 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12;

  OAI2BB2X4 U1 ( .B0(codeword_width[1]), .B1(n12), .A0N(result_32bit), .A1N(
        codeword_width[1]), .Y(isEqual) );
  AOI22X4 U2 ( .A0(result_8bit), .A1(n11), .B0(result_16bit), .B1(n10), .Y(n12) );
  dec_comparator_DATA_DEPTH6_15 inst_32bit ( .A({A[5], n8, A[3], n6, n4, n1}), 
        .B(B), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_15 inst_16bit ( .A({n8, A[3], n6, n4, n1}), .B(
        B[4:0]), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_15 inst_8bit ( .A({A[3], n6, n4, n1}), .B(B[3:0]), 
        .isEqual(result_8bit) );
  INVX16 U3 ( .A(n7), .Y(n6) );
  INVX4 U4 ( .A(n9), .Y(n8) );
  INVX12 U5 ( .A(A[4]), .Y(n9) );
  INVX8 U6 ( .A(n3), .Y(n1) );
  CLKINVX2 U7 ( .A(A[0]), .Y(n3) );
  CLKINVX8 U8 ( .A(n5), .Y(n4) );
  INVX12 U9 ( .A(A[1]), .Y(n5) );
  INVX1 U10 ( .A(n11), .Y(n10) );
  INVX1 U11 ( .A(codeword_width[0]), .Y(n11) );
  INVX1 U12 ( .A(A[2]), .Y(n7) );
endmodule


module dec_comparator_DATA_DEPTH6_14 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8, n9, n10, n11;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N0) );
  OR3X2 U2 ( .A(n5), .B(n6), .C(n7), .Y(n11) );
  XOR2X1 U3 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XOR2X1 U4 ( .A(B[0]), .B(A[0]), .Y(n5) );
  XOR2X2 U5 ( .A(B[3]), .B(A[3]), .Y(n9) );
  XOR2X1 U6 ( .A(B[4]), .B(A[4]), .Y(n8) );
  XOR2X4 U7 ( .A(B[5]), .B(A[5]), .Y(n10) );
  XOR2X2 U8 ( .A(B[1]), .B(A[1]), .Y(n6) );
endmodule


module dec_comparator_DATA_DEPTH5_14 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n7, n8, n9, n10, n11, n12;
  assign isEqual = N0;

  NOR3X4 U1 ( .A(n12), .B(n11), .C(n10), .Y(N0) );
  XOR2X4 U3 ( .A(B[3]), .B(A[3]), .Y(n11) );
  NAND3X4 U4 ( .A(n9), .B(n8), .C(n7), .Y(n12) );
  XOR2X2 U2 ( .A(B[4]), .B(A[4]), .Y(n10) );
  XNOR2X1 U5 ( .A(B[0]), .B(A[0]), .Y(n9) );
  XNOR2X1 U6 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XNOR2X4 U7 ( .A(B[1]), .B(A[1]), .Y(n8) );
endmodule


module dec_comparator_DATA_DEPTH4_14 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  XNOR2X4 U5 ( .A(B[3]), .B(A[3]), .Y(n8) );
  AND4X2 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X2 U2 ( .A(B[1]), .B(A[1]), .Y(n5) );
  XNOR2X1 U3 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2X2 U4 ( .A(B[0]), .B(A[0]), .Y(n7) );
endmodule


module dec_comparator_all_options_14 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16;

  OAI2BB2X4 U1 ( .B0(n12), .B1(n16), .A0N(result_32bit), .A1N(n12), .Y(isEqual) );
  AOI22X4 U2 ( .A0(result_8bit), .A1(n11), .B0(result_16bit), .B1(n10), .Y(n16) );
  dec_comparator_DATA_DEPTH6_14 inst_32bit ( .A({n8, n6, n4, A[2], n3, n1}), 
        .B({B[5:2], n14, B[0]}), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_14 inst_16bit ( .A({n6, n4, A[2], n3, n1}), .B({
        B[4:2], n14, B[0]}), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_14 inst_8bit ( .A({n4, A[2], n3, n1}), .B({B[3:2], 
        n14, B[0]}), .isEqual(result_8bit) );
  CLKINVX3 U3 ( .A(n7), .Y(n6) );
  INVX1 U4 ( .A(A[4]), .Y(n7) );
  INVX4 U5 ( .A(n5), .Y(n4) );
  BUFX12 U6 ( .A(A[1]), .Y(n3) );
  CLKINVX8 U7 ( .A(A[5]), .Y(n9) );
  CLKINVX3 U8 ( .A(n9), .Y(n8) );
  BUFX20 U9 ( .A(A[0]), .Y(n1) );
  INVXL U10 ( .A(codeword_width[1]), .Y(n13) );
  INVX1 U11 ( .A(n15), .Y(n14) );
  INVX1 U12 ( .A(B[1]), .Y(n15) );
  INVX1 U13 ( .A(n11), .Y(n10) );
  INVX1 U14 ( .A(codeword_width[0]), .Y(n11) );
  INVX1 U15 ( .A(A[3]), .Y(n5) );
  INVX1 U16 ( .A(n13), .Y(n12) );
endmodule


module dec_comparator_DATA_DEPTH6_13 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8, n9, n10, n11;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N0) );
  XOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(n9) );
  XOR2X1 U3 ( .A(B[5]), .B(A[5]), .Y(n10) );
  XOR2X2 U4 ( .A(B[1]), .B(A[1]), .Y(n6) );
  OR3X4 U5 ( .A(n5), .B(n6), .C(n7), .Y(n11) );
  XOR2X1 U6 ( .A(B[0]), .B(A[0]), .Y(n5) );
  XOR2X2 U7 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XOR2X1 U8 ( .A(B[4]), .B(A[4]), .Y(n8) );
endmodule


module dec_comparator_DATA_DEPTH5_13 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n7, n8, n9, n10, n11, n12, n13;
  assign isEqual = N0;

  XOR2X4 U3 ( .A(A[3]), .B(B[3]), .Y(n12) );
  XNOR2X4 U5 ( .A(B[2]), .B(A[2]), .Y(n8) );
  NAND3X2 U1 ( .A(n10), .B(n9), .C(n8), .Y(n13) );
  XOR2X1 U2 ( .A(B[4]), .B(A[4]), .Y(n11) );
  OR2X4 U4 ( .A(n12), .B(n11), .Y(n7) );
  NOR2X4 U6 ( .A(n7), .B(n13), .Y(N0) );
  XNOR2X4 U7 ( .A(B[0]), .B(A[0]), .Y(n10) );
  XNOR2X4 U8 ( .A(B[1]), .B(A[1]), .Y(n9) );
endmodule


module dec_comparator_DATA_DEPTH4_13 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X4 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X4 U5 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X2 U2 ( .A(B[1]), .B(A[1]), .Y(n5) );
  XNOR2X1 U3 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XNOR2X4 U4 ( .A(B[2]), .B(A[2]), .Y(n6) );
endmodule


module dec_comparator_all_options_13 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13;

  OAI2BB2X4 U1 ( .B0(n9), .B1(n13), .A0N(result_32bit), .A1N(n9), .Y(isEqual)
         );
  AOI22X4 U2 ( .A0(result_8bit), .A1(n8), .B0(result_16bit), .B1(n7), .Y(n13)
         );
  dec_comparator_DATA_DEPTH6_13 inst_32bit ( .A({A[5:4], n1, n5, n3, A[0]}), 
        .B({B[5:2], n11, B[0]}), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_13 inst_16bit ( .A({A[4], n1, n5, n3, A[0]}), .B(
        {B[4:2], n11, B[0]}), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_13 inst_8bit ( .A({n1, n5, n3, A[0]}), .B({B[3:2], 
        n11, B[0]}), .isEqual(result_8bit) );
  INVX8 U3 ( .A(n4), .Y(n3) );
  INVX8 U4 ( .A(A[1]), .Y(n4) );
  BUFX20 U5 ( .A(A[3]), .Y(n1) );
  INVX8 U6 ( .A(n6), .Y(n5) );
  INVX1 U7 ( .A(n12), .Y(n11) );
  INVX1 U8 ( .A(B[1]), .Y(n12) );
  INVX1 U9 ( .A(codeword_width[1]), .Y(n10) );
  INVX1 U10 ( .A(n8), .Y(n7) );
  INVX1 U11 ( .A(codeword_width[0]), .Y(n8) );
  INVX1 U12 ( .A(A[2]), .Y(n6) );
  INVX1 U13 ( .A(n10), .Y(n9) );
endmodule


module dec_comparator_DATA_DEPTH6_12 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n8, n9, n10, n11, n12, n13, n14;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(N0) );
  XOR2X2 U2 ( .A(B[5]), .B(A[5]), .Y(n13) );
  NAND3X2 U3 ( .A(n10), .B(n9), .C(n8), .Y(n14) );
  XOR2X2 U4 ( .A(B[4]), .B(A[4]), .Y(n11) );
  XNOR2X1 U5 ( .A(B[0]), .B(A[0]), .Y(n10) );
  XNOR2X2 U6 ( .A(B[2]), .B(A[2]), .Y(n8) );
  XNOR2X2 U7 ( .A(B[1]), .B(A[1]), .Y(n9) );
  XOR2X2 U8 ( .A(B[3]), .B(A[3]), .Y(n12) );
endmodule


module dec_comparator_DATA_DEPTH5_12 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n1, n2, n3, n7, n8, n9;
  assign isEqual = N0;

  XNOR2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n9) );
  XNOR2X2 U2 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XNOR2X2 U3 ( .A(A[1]), .B(B[1]), .Y(n8) );
  XNOR2X4 U4 ( .A(B[3]), .B(A[3]), .Y(n2) );
  AND3X4 U5 ( .A(n1), .B(n2), .C(n3), .Y(N0) );
  XNOR2X4 U6 ( .A(B[4]), .B(A[4]), .Y(n3) );
  AND3X4 U7 ( .A(n8), .B(n9), .C(n7), .Y(n1) );
endmodule


module dec_comparator_DATA_DEPTH4_12 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X2 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X2 U2 ( .A(B[1]), .B(A[1]), .Y(n5) );
  XNOR2X1 U3 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2X4 U4 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X1 U5 ( .A(B[0]), .B(A[0]), .Y(n7) );
endmodule


module dec_comparator_all_options_12 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11;

  OAI2BB2X4 U1 ( .B0(n11), .B1(codeword_width[1]), .A0N(result_32bit), .A1N(
        codeword_width[1]), .Y(isEqual) );
  AOI22X4 U2 ( .A0(result_8bit), .A1(n10), .B0(result_16bit), .B1(n9), .Y(n11)
         );
  dec_comparator_DATA_DEPTH6_12 inst_32bit ( .A({A[5], n7, n1, n5, A[1], n3}), 
        .B(B), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_12 inst_16bit ( .A({n7, n1, n5, A[1], n3}), .B(
        B[4:0]), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_12 inst_8bit ( .A({n1, n5, A[1], n3}), .B(B[3:0]), 
        .isEqual(result_8bit) );
  INVX8 U3 ( .A(n4), .Y(n3) );
  INVX8 U4 ( .A(n8), .Y(n7) );
  CLKINVX3 U5 ( .A(A[4]), .Y(n8) );
  BUFX12 U6 ( .A(A[3]), .Y(n1) );
  INVX4 U7 ( .A(n6), .Y(n5) );
  INVX12 U8 ( .A(A[2]), .Y(n6) );
  INVX8 U9 ( .A(A[0]), .Y(n4) );
  INVX1 U10 ( .A(n10), .Y(n9) );
  INVX1 U11 ( .A(codeword_width[0]), .Y(n10) );
endmodule


module dec_comparator_DATA_DEPTH6_11 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n15), .B(n14), .C(n13), .D(n12), .Y(N0) );
  XOR2X4 U2 ( .A(B[5]), .B(A[5]), .Y(n14) );
  NAND2X2 U3 ( .A(n7), .B(n8), .Y(n12) );
  NAND2X1 U4 ( .A(n5), .B(A[4]), .Y(n8) );
  XOR2X1 U5 ( .A(B[2]), .B(A[2]), .Y(n11) );
  NAND2X2 U6 ( .A(B[4]), .B(n6), .Y(n7) );
  INVXL U7 ( .A(B[4]), .Y(n5) );
  CLKINVX2 U8 ( .A(A[4]), .Y(n6) );
  XOR2X1 U9 ( .A(B[0]), .B(A[0]), .Y(n9) );
  XOR2X2 U10 ( .A(B[1]), .B(A[1]), .Y(n10) );
  OR3X4 U11 ( .A(n9), .B(n10), .C(n11), .Y(n15) );
  XOR2X2 U12 ( .A(B[3]), .B(A[3]), .Y(n13) );
endmodule


module dec_comparator_DATA_DEPTH5_11 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n7, n8, n9, n10, n11, n12, n13;
  assign isEqual = N0;

  NOR3X4 U1 ( .A(n13), .B(n12), .C(n11), .Y(N0) );
  XOR2X2 U2 ( .A(B[4]), .B(A[4]), .Y(n11) );
  XOR2X2 U3 ( .A(B[3]), .B(A[3]), .Y(n12) );
  AND2X4 U4 ( .A(n8), .B(n10), .Y(n7) );
  XNOR2X2 U5 ( .A(B[2]), .B(A[2]), .Y(n8) );
  NAND2X4 U6 ( .A(n7), .B(n9), .Y(n13) );
  XNOR2X4 U7 ( .A(B[1]), .B(A[1]), .Y(n9) );
  XNOR2X4 U8 ( .A(B[0]), .B(A[0]), .Y(n10) );
endmodule


module dec_comparator_DATA_DEPTH4_11 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  XNOR2X2 U1 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X1 U2 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2X1 U3 ( .A(B[0]), .B(A[0]), .Y(n7) );
  AND4X4 U4 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X2 U5 ( .A(B[1]), .B(A[1]), .Y(n5) );
endmodule


module dec_comparator_all_options_11 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13;

  OAI2BB2X4 U1 ( .B0(n13), .B1(n11), .A0N(result_32bit), .A1N(n11), .Y(isEqual) );
  AOI22X4 U2 ( .A0(result_8bit), .A1(n10), .B0(result_16bit), .B1(
        codeword_width[0]), .Y(n13) );
  dec_comparator_DATA_DEPTH6_11 inst_32bit ( .A({n8, n6, A[3], n4, n1, A[0]}), 
        .B(B), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_11 inst_16bit ( .A({n6, A[3], n4, n1, A[0]}), .B(
        B[4:0]), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_11 inst_8bit ( .A({A[3], n4, n1, A[0]}), .B(
        B[3:0]), .isEqual(result_8bit) );
  INVX4 U3 ( .A(A[1]), .Y(n3) );
  INVX8 U4 ( .A(n7), .Y(n6) );
  CLKINVX8 U5 ( .A(n3), .Y(n1) );
  INVX2 U6 ( .A(A[5]), .Y(n9) );
  INVX8 U7 ( .A(n5), .Y(n4) );
  CLKINVX8 U8 ( .A(A[2]), .Y(n5) );
  INVX8 U9 ( .A(A[4]), .Y(n7) );
  INVXL U10 ( .A(codeword_width[1]), .Y(n12) );
  INVX4 U11 ( .A(n9), .Y(n8) );
  INVX1 U12 ( .A(codeword_width[0]), .Y(n10) );
  INVX1 U13 ( .A(n12), .Y(n11) );
endmodule


module dec_comparator_DATA_DEPTH6_10 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n15), .B(n14), .C(n13), .D(n12), .Y(N0) );
  XOR2X2 U2 ( .A(B[5]), .B(A[5]), .Y(n14) );
  INVX3 U3 ( .A(A[1]), .Y(n6) );
  XOR2X2 U4 ( .A(B[4]), .B(A[4]), .Y(n12) );
  NAND2X4 U5 ( .A(n7), .B(n8), .Y(n10) );
  NAND2X2 U6 ( .A(B[1]), .B(A[1]), .Y(n7) );
  NAND2X4 U7 ( .A(n5), .B(n6), .Y(n8) );
  INVX1 U8 ( .A(B[1]), .Y(n5) );
  XNOR2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n11) );
  NAND3X4 U10 ( .A(n9), .B(n10), .C(n11), .Y(n15) );
  XNOR2X2 U11 ( .A(B[0]), .B(A[0]), .Y(n9) );
  XOR2X2 U12 ( .A(B[3]), .B(A[3]), .Y(n13) );
endmodule


module dec_comparator_DATA_DEPTH5_10 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n4, n7, n8, n9, n10, n11;
  assign isEqual = N0;

  NOR3X4 U1 ( .A(n11), .B(n10), .C(n9), .Y(N0) );
  XOR2X2 U2 ( .A(B[3]), .B(A[3]), .Y(n10) );
  XOR2X2 U3 ( .A(B[4]), .B(A[4]), .Y(n9) );
  NAND3BX4 U4 ( .AN(n4), .B(n8), .C(n7), .Y(n11) );
  XOR2X2 U5 ( .A(B[0]), .B(A[0]), .Y(n4) );
  XNOR2X4 U6 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XNOR2X4 U7 ( .A(B[1]), .B(A[1]), .Y(n8) );
endmodule


module dec_comparator_DATA_DEPTH4_10 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X4 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X1 U3 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XNOR2X1 U4 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2X2 U5 ( .A(B[1]), .B(A[1]), .Y(n5) );
endmodule


module dec_comparator_all_options_10 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12;

  OAI2BB2X4 U1 ( .B0(n10), .B1(n12), .A0N(result_32bit), .A1N(n10), .Y(isEqual) );
  AOI22X4 U2 ( .A0(result_8bit), .A1(n9), .B0(codeword_width[0]), .B1(
        result_16bit), .Y(n12) );
  dec_comparator_DATA_DEPTH6_10 inst_32bit ( .A({A[5], n7, A[3], n5, n1, n3}), 
        .B(B), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_10 inst_16bit ( .A({n7, A[3], n5, n1, n3}), .B(
        B[4:0]), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_10 inst_8bit ( .A({A[3], n5, n1, n3}), .B(B[3:0]), 
        .isEqual(result_8bit) );
  CLKINVX8 U3 ( .A(n4), .Y(n3) );
  INVX12 U4 ( .A(A[0]), .Y(n4) );
  BUFX8 U5 ( .A(A[1]), .Y(n1) );
  INVX4 U6 ( .A(n6), .Y(n5) );
  INVX12 U7 ( .A(A[2]), .Y(n6) );
  INVX8 U8 ( .A(n8), .Y(n7) );
  INVX12 U9 ( .A(A[4]), .Y(n8) );
  INVXL U10 ( .A(codeword_width[1]), .Y(n11) );
  INVX1 U11 ( .A(codeword_width[0]), .Y(n9) );
  INVX1 U12 ( .A(n11), .Y(n10) );
endmodule


module dec_comparator_DATA_DEPTH6_9 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8, n9, n10, n11;
  assign isEqual = N0;

  XOR2X2 U1 ( .A(B[5]), .B(A[5]), .Y(n10) );
  XOR2X2 U2 ( .A(B[4]), .B(A[4]), .Y(n8) );
  XOR2X1 U3 ( .A(B[2]), .B(A[2]), .Y(n7) );
  NOR4X4 U4 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N0) );
  XOR2X1 U5 ( .A(B[0]), .B(A[0]), .Y(n5) );
  XOR2X2 U6 ( .A(B[1]), .B(A[1]), .Y(n6) );
  OR3X4 U7 ( .A(n5), .B(n6), .C(n7), .Y(n11) );
  XOR2X2 U8 ( .A(B[3]), .B(A[3]), .Y(n9) );
endmodule


module dec_comparator_DATA_DEPTH5_9 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n4, n7, n8, n9, n10, n11;
  assign isEqual = N0;

  NOR3X4 U1 ( .A(n11), .B(n10), .C(n9), .Y(N0) );
  XOR2X4 U3 ( .A(B[3]), .B(A[3]), .Y(n10) );
  XOR2X4 U2 ( .A(B[4]), .B(A[4]), .Y(n9) );
  XNOR2X2 U4 ( .A(B[2]), .B(A[2]), .Y(n7) );
  NAND3BX4 U5 ( .AN(n4), .B(n8), .C(n7), .Y(n11) );
  XOR2X2 U6 ( .A(B[0]), .B(A[0]), .Y(n4) );
  XNOR2X4 U7 ( .A(B[1]), .B(A[1]), .Y(n8) );
endmodule


module dec_comparator_DATA_DEPTH4_9 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X4 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X4 U5 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X1 U2 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2X1 U3 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XNOR2X2 U4 ( .A(B[1]), .B(A[1]), .Y(n5) );
endmodule


module dec_comparator_all_options_9 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15;

  OAI2BB2X4 U1 ( .B0(n15), .B1(n13), .A0N(n13), .A1N(result_32bit), .Y(isEqual) );
  AOI22X4 U2 ( .A0(result_8bit), .A1(n12), .B0(result_16bit), .B1(n11), .Y(n15) );
  dec_comparator_DATA_DEPTH6_9 inst_32bit ( .A({A[5], n9, n1, n7, n5, n3}), 
        .B(B), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_9 inst_16bit ( .A({n9, n1, n7, n5, n3}), .B(
        B[4:0]), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_9 inst_8bit ( .A({n1, n7, n5, n3}), .B(B[3:0]), 
        .isEqual(result_8bit) );
  INVX4 U3 ( .A(n10), .Y(n9) );
  CLKINVX2 U4 ( .A(A[4]), .Y(n10) );
  INVX8 U5 ( .A(n4), .Y(n3) );
  INVX8 U6 ( .A(A[1]), .Y(n6) );
  CLKBUFX8 U7 ( .A(A[3]), .Y(n1) );
  INVX3 U8 ( .A(A[0]), .Y(n4) );
  CLKINVX8 U9 ( .A(n6), .Y(n5) );
  INVX20 U10 ( .A(n8), .Y(n7) );
  INVXL U11 ( .A(codeword_width[1]), .Y(n14) );
  INVX1 U12 ( .A(n12), .Y(n11) );
  INVX1 U13 ( .A(codeword_width[0]), .Y(n12) );
  INVX1 U14 ( .A(A[2]), .Y(n8) );
  INVX1 U15 ( .A(n14), .Y(n13) );
endmodule


module dec_comparator_DATA_DEPTH6_8 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8, n9, n10, n11;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N0) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(n5) );
  XOR2X1 U3 ( .A(B[5]), .B(A[5]), .Y(n10) );
  XOR2X1 U4 ( .A(B[3]), .B(A[3]), .Y(n9) );
  XOR2XL U5 ( .A(B[4]), .B(A[4]), .Y(n8) );
  XOR2X2 U6 ( .A(B[1]), .B(A[1]), .Y(n6) );
  OR3X4 U7 ( .A(n5), .B(n6), .C(n7), .Y(n11) );
  XOR2X1 U8 ( .A(B[2]), .B(A[2]), .Y(n7) );
endmodule


module dec_comparator_DATA_DEPTH5_8 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n1, n2, n3, n7, n8, n9;
  assign isEqual = N0;

  XNOR2X4 U5 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XNOR2X4 U6 ( .A(B[1]), .B(A[1]), .Y(n8) );
  XNOR2X4 U7 ( .A(B[0]), .B(A[0]), .Y(n9) );
  XNOR2X1 U1 ( .A(B[3]), .B(A[3]), .Y(n2) );
  XNOR2XL U2 ( .A(B[4]), .B(A[4]), .Y(n3) );
  AND3X4 U3 ( .A(n1), .B(n2), .C(n3), .Y(N0) );
  AND3X4 U4 ( .A(n9), .B(n8), .C(n7), .Y(n1) );
endmodule


module dec_comparator_DATA_DEPTH4_8 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X4 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XNOR2X1 U3 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X2 U4 ( .A(B[1]), .B(A[1]), .Y(n5) );
  XNOR2X1 U5 ( .A(B[2]), .B(A[2]), .Y(n6) );
endmodule


module dec_comparator_all_options_8 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8;

  OAI2BB2X4 U1 ( .B0(codeword_width[1]), .B1(n8), .A0N(result_32bit), .A1N(
        codeword_width[1]), .Y(isEqual) );
  AOI22X4 U2 ( .A0(result_8bit), .A1(n7), .B0(result_16bit), .B1(n6), .Y(n8)
         );
  dec_comparator_DATA_DEPTH6_8 inst_32bit ( .A({A[5:4], n4, A[2], n1, A[0]}), 
        .B(B), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_8 inst_16bit ( .A({A[4], n4, A[2], n1, A[0]}), 
        .B(B[4:0]), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_8 inst_8bit ( .A({n4, A[2], n1, A[0]}), .B(B[3:0]), .isEqual(result_8bit) );
  INVX16 U3 ( .A(n5), .Y(n4) );
  INVX4 U4 ( .A(A[1]), .Y(n3) );
  INVX8 U5 ( .A(n3), .Y(n1) );
  INVX1 U6 ( .A(n7), .Y(n6) );
  INVX1 U7 ( .A(codeword_width[0]), .Y(n7) );
  INVX1 U8 ( .A(A[3]), .Y(n5) );
endmodule


module dec_comparator_DATA_DEPTH6_7 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n8, n9, n10, n11, n12, n13;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n13), .B(n12), .C(n11), .D(n10), .Y(N0) );
  NAND3BX2 U2 ( .AN(n5), .B(n9), .C(n8), .Y(n13) );
  XOR2X1 U3 ( .A(B[0]), .B(A[0]), .Y(n5) );
  XNOR2X1 U4 ( .A(B[2]), .B(A[2]), .Y(n8) );
  XOR2X1 U5 ( .A(B[5]), .B(A[5]), .Y(n12) );
  XOR2X1 U6 ( .A(B[4]), .B(A[4]), .Y(n10) );
  XOR2X1 U7 ( .A(B[3]), .B(A[3]), .Y(n11) );
  XNOR2X2 U8 ( .A(B[1]), .B(A[1]), .Y(n9) );
endmodule


module dec_comparator_DATA_DEPTH5_7 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n1, n7, n8, n9, n10, n11;
  assign isEqual = N0;

  XOR2X4 U2 ( .A(B[4]), .B(A[4]), .Y(n10) );
  XOR2X4 U3 ( .A(B[3]), .B(A[3]), .Y(n11) );
  NAND3X4 U1 ( .A(n9), .B(n8), .C(n7), .Y(n1) );
  XNOR2X2 U4 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XNOR2X1 U5 ( .A(B[0]), .B(A[0]), .Y(n9) );
  XNOR2X4 U6 ( .A(B[1]), .B(A[1]), .Y(n8) );
  NOR3X4 U7 ( .A(n1), .B(n11), .C(n10), .Y(N0) );
endmodule


module dec_comparator_DATA_DEPTH4_7 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X2 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XNOR2X1 U3 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X2 U4 ( .A(B[1]), .B(A[1]), .Y(n5) );
  XNOR2X1 U5 ( .A(B[2]), .B(A[2]), .Y(n6) );
endmodule


module dec_comparator_all_options_7 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13;

  OAI2BB2X4 U1 ( .B0(codeword_width[1]), .B1(n13), .A0N(codeword_width[1]), 
        .A1N(result_32bit), .Y(isEqual) );
  AOI22X4 U2 ( .A0(result_8bit), .A1(n10), .B0(codeword_width[0]), .B1(
        result_16bit), .Y(n13) );
  dec_comparator_DATA_DEPTH6_7 inst_32bit ( .A({A[5], n8, n6, n4, n1, A[0]}), 
        .B({B[5:4], n11, B[2:0]}), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_7 inst_16bit ( .A({n8, n6, n4, n1, A[0]}), .B({
        B[4], n11, B[2:0]}), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_7 inst_8bit ( .A({n6, n4, n1, A[0]}), .B({n11, 
        B[2:0]}), .isEqual(result_8bit) );
  INVX4 U3 ( .A(n9), .Y(n8) );
  INVX16 U4 ( .A(n5), .Y(n4) );
  INVX16 U5 ( .A(n7), .Y(n6) );
  CLKINVX3 U6 ( .A(A[4]), .Y(n9) );
  INVX8 U7 ( .A(n3), .Y(n1) );
  INVX8 U8 ( .A(A[1]), .Y(n3) );
  INVXL U9 ( .A(codeword_width[0]), .Y(n10) );
  INVX1 U10 ( .A(n12), .Y(n11) );
  INVX1 U11 ( .A(B[3]), .Y(n12) );
  INVX1 U12 ( .A(A[3]), .Y(n7) );
  INVX1 U13 ( .A(A[2]), .Y(n5) );
endmodule


module dec_comparator_DATA_DEPTH6_6 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8, n9, n10, n11;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N0) );
  XOR2X2 U2 ( .A(B[5]), .B(A[5]), .Y(n10) );
  OR3X2 U3 ( .A(n5), .B(n6), .C(n7), .Y(n11) );
  XOR2X1 U4 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XOR2X1 U5 ( .A(B[1]), .B(A[1]), .Y(n6) );
  XOR2X1 U6 ( .A(B[4]), .B(A[4]), .Y(n8) );
  XOR2X1 U7 ( .A(B[3]), .B(A[3]), .Y(n9) );
  XOR2X1 U8 ( .A(B[0]), .B(A[0]), .Y(n5) );
endmodule


module dec_comparator_DATA_DEPTH5_6 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n7, n8, n9, n10, n11, n12;
  assign isEqual = N0;

  NAND3X4 U4 ( .A(n9), .B(n8), .C(n7), .Y(n12) );
  XOR2X2 U1 ( .A(B[3]), .B(A[3]), .Y(n11) );
  XOR2X2 U2 ( .A(B[4]), .B(A[4]), .Y(n10) );
  NOR3X4 U3 ( .A(n12), .B(n11), .C(n10), .Y(N0) );
  XNOR2X2 U5 ( .A(B[1]), .B(A[1]), .Y(n8) );
  XNOR2X4 U6 ( .A(B[0]), .B(A[0]), .Y(n9) );
  XNOR2X4 U7 ( .A(B[2]), .B(A[2]), .Y(n7) );
endmodule


module dec_comparator_DATA_DEPTH4_6 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X4 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X2 U2 ( .A(B[1]), .B(A[1]), .Y(n5) );
  XNOR2X1 U3 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XNOR2X4 U4 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X2 U5 ( .A(B[2]), .B(A[2]), .Y(n6) );
endmodule


module dec_comparator_all_options_6 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11;

  OAI2BB2X4 U1 ( .B0(codeword_width[1]), .B1(n11), .A0N(result_32bit), .A1N(
        codeword_width[1]), .Y(isEqual) );
  AOI22X4 U2 ( .A0(result_8bit), .A1(n10), .B0(result_16bit), .B1(
        codeword_width[0]), .Y(n11) );
  dec_comparator_DATA_DEPTH6_6 inst_32bit ( .A({A[5], n8, n6, n4, A[1], n1}), 
        .B(B), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_6 inst_16bit ( .A({n8, n6, n4, A[1], n1}), .B(
        B[4:0]), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_6 inst_8bit ( .A({n6, n4, A[1], n1}), .B(B[3:0]), 
        .isEqual(result_8bit) );
  INVX8 U3 ( .A(n3), .Y(n1) );
  INVX16 U4 ( .A(n5), .Y(n4) );
  INVX16 U5 ( .A(n7), .Y(n6) );
  INVX8 U6 ( .A(n9), .Y(n8) );
  INVX12 U7 ( .A(A[4]), .Y(n9) );
  INVX2 U8 ( .A(A[0]), .Y(n3) );
  INVXL U9 ( .A(codeword_width[0]), .Y(n10) );
  INVX1 U10 ( .A(A[3]), .Y(n7) );
  INVX1 U11 ( .A(A[2]), .Y(n5) );
endmodule


module dec_comparator_DATA_DEPTH6_5 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8, n9, n10, n11;
  assign isEqual = N0;

  XOR2X1 U1 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XOR2X1 U2 ( .A(B[5]), .B(A[5]), .Y(n10) );
  XOR2X1 U3 ( .A(B[3]), .B(A[3]), .Y(n9) );
  XOR2X1 U4 ( .A(B[4]), .B(A[4]), .Y(n8) );
  NOR4X4 U5 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N0) );
  XOR2X2 U6 ( .A(B[1]), .B(A[1]), .Y(n6) );
  XOR2X1 U7 ( .A(B[0]), .B(A[0]), .Y(n5) );
  OR3X4 U8 ( .A(n5), .B(n6), .C(n7), .Y(n11) );
endmodule


module dec_comparator_DATA_DEPTH5_5 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n1, n2, n3, n7, n8, n9;
  assign isEqual = N0;

  XNOR2X4 U5 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XNOR2X1 U1 ( .A(B[4]), .B(A[4]), .Y(n3) );
  XNOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(n2) );
  XNOR2X4 U3 ( .A(A[1]), .B(B[1]), .Y(n8) );
  XNOR2X1 U4 ( .A(B[0]), .B(A[0]), .Y(n9) );
  AND3X4 U6 ( .A(n1), .B(n2), .C(n3), .Y(N0) );
  AND3X4 U7 ( .A(n9), .B(n8), .C(n7), .Y(n1) );
endmodule


module dec_comparator_DATA_DEPTH4_5 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X4 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X2 U2 ( .A(B[1]), .B(A[1]), .Y(n5) );
  XNOR2X4 U3 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X2 U4 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2X1 U5 ( .A(B[0]), .B(A[0]), .Y(n7) );
endmodule


module dec_comparator_all_options_5 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13;

  OAI2BB2X4 U1 ( .B0(n11), .B1(n13), .A0N(result_32bit), .A1N(n11), .Y(isEqual) );
  AOI22X4 U2 ( .A0(result_8bit), .A1(n10), .B0(result_16bit), .B1(
        codeword_width[0]), .Y(n13) );
  dec_comparator_DATA_DEPTH6_5 inst_32bit ( .A({A[5:4], n8, n6, n4, n1}), .B(B), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_5 inst_16bit ( .A({A[4], n8, n6, n4, n1}), .B(
        B[4:0]), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_5 inst_8bit ( .A({n8, n6, n4, n1}), .B(B[3:0]), 
        .isEqual(result_8bit) );
  INVX8 U3 ( .A(n5), .Y(n4) );
  INVX16 U4 ( .A(n7), .Y(n6) );
  INVX16 U5 ( .A(n9), .Y(n8) );
  INVX4 U6 ( .A(A[1]), .Y(n5) );
  INVX8 U7 ( .A(n3), .Y(n1) );
  INVX12 U8 ( .A(A[0]), .Y(n3) );
  INVXL U9 ( .A(codeword_width[1]), .Y(n12) );
  INVX1 U10 ( .A(codeword_width[0]), .Y(n10) );
  INVX1 U11 ( .A(A[3]), .Y(n9) );
  INVX1 U12 ( .A(A[2]), .Y(n7) );
  INVX1 U13 ( .A(n12), .Y(n11) );
endmodule


module dec_comparator_DATA_DEPTH6_4 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n8, n9, n10, n11, n12, n13, n14;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(N0) );
  NAND3X4 U5 ( .A(n10), .B(n9), .C(n8), .Y(n14) );
  XOR2X2 U2 ( .A(B[4]), .B(A[4]), .Y(n11) );
  XOR2X2 U3 ( .A(B[3]), .B(A[3]), .Y(n12) );
  XOR2X2 U4 ( .A(B[5]), .B(A[5]), .Y(n13) );
  XNOR2X1 U6 ( .A(B[0]), .B(A[0]), .Y(n10) );
  XNOR2X1 U7 ( .A(B[2]), .B(A[2]), .Y(n8) );
  XNOR2X2 U8 ( .A(B[1]), .B(A[1]), .Y(n9) );
endmodule


module dec_comparator_DATA_DEPTH5_4 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n4, n7, n8, n9, n10, n11, n12, n13, n14;
  assign isEqual = N0;

  XOR2X4 U2 ( .A(B[4]), .B(A[4]), .Y(n12) );
  XOR2X4 U3 ( .A(B[3]), .B(A[3]), .Y(n13) );
  INVX1 U1 ( .A(B[1]), .Y(n8) );
  XNOR2X1 U4 ( .A(B[0]), .B(A[0]), .Y(n9) );
  NOR2X4 U5 ( .A(n12), .B(n13), .Y(n4) );
  NOR2X4 U6 ( .A(n7), .B(n14), .Y(N0) );
  INVX8 U7 ( .A(n4), .Y(n7) );
  XOR2X4 U8 ( .A(A[1]), .B(n8), .Y(n11) );
  NAND3X4 U9 ( .A(n9), .B(n11), .C(n10), .Y(n14) );
  XNOR2X4 U10 ( .A(B[2]), .B(A[2]), .Y(n10) );
endmodule


module dec_comparator_DATA_DEPTH4_4 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  XNOR2X4 U1 ( .A(B[1]), .B(A[1]), .Y(n5) );
  XNOR2X4 U2 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X2 U3 ( .A(B[2]), .B(A[2]), .Y(n6) );
  AND4X4 U4 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X2 U5 ( .A(B[0]), .B(A[0]), .Y(n7) );
endmodule


module dec_comparator_all_options_4 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15;

  OAI2BB2X4 U1 ( .B0(n13), .B1(n15), .A0N(result_32bit), .A1N(n13), .Y(isEqual) );
  AOI22X4 U2 ( .A0(result_8bit), .A1(n12), .B0(codeword_width[0]), .B1(
        result_16bit), .Y(n15) );
  dec_comparator_DATA_DEPTH6_4 inst_32bit ( .A({A[5], n1, n10, n8, n3, n4}), 
        .B(B), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_4 inst_16bit ( .A({n1, n10, n8, n6, n4}), .B(
        B[4:0]), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_4 inst_8bit ( .A({n10, n8, n3, n4}), .B(B[3:0]), 
        .isEqual(result_8bit) );
  CLKINVX20 U3 ( .A(n11), .Y(n10) );
  INVX8 U4 ( .A(n7), .Y(n3) );
  CLKINVX2 U5 ( .A(A[3]), .Y(n11) );
  BUFX4 U6 ( .A(A[4]), .Y(n1) );
  INVX12 U7 ( .A(A[2]), .Y(n9) );
  INVX8 U8 ( .A(n9), .Y(n8) );
  INVX8 U9 ( .A(A[1]), .Y(n7) );
  INVX8 U10 ( .A(n7), .Y(n6) );
  INVX8 U11 ( .A(n5), .Y(n4) );
  INVX12 U12 ( .A(A[0]), .Y(n5) );
  INVXL U13 ( .A(codeword_width[1]), .Y(n14) );
  INVX1 U14 ( .A(codeword_width[0]), .Y(n12) );
  INVX1 U15 ( .A(n14), .Y(n13) );
endmodule


module dec_comparator_DATA_DEPTH6_3 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n1, n8, n9, n10, n11, n12, n13, n14;
  assign isEqual = N0;

  XOR2X2 U1 ( .A(B[5]), .B(A[5]), .Y(n14) );
  XOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(n13) );
  AND2X2 U3 ( .A(n9), .B(n11), .Y(n1) );
  AND2X4 U4 ( .A(n10), .B(n1), .Y(n8) );
  XOR2X2 U5 ( .A(B[4]), .B(A[4]), .Y(n12) );
  XNOR2X1 U6 ( .A(B[1]), .B(A[1]), .Y(n10) );
  XNOR2X2 U7 ( .A(B[0]), .B(A[0]), .Y(n11) );
  XNOR2X2 U8 ( .A(B[2]), .B(A[2]), .Y(n9) );
  NOR4BX4 U9 ( .AN(n8), .B(n14), .C(n13), .D(n12), .Y(N0) );
endmodule


module dec_comparator_DATA_DEPTH5_3 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n1, n2, n3, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19;
  assign isEqual = N0;

  NAND2X4 U1 ( .A(n16), .B(n1), .Y(n2) );
  NAND2X4 U2 ( .A(n9), .B(n10), .Y(n16) );
  CLKINVX3 U3 ( .A(A[3]), .Y(n8) );
  INVX4 U4 ( .A(n3), .Y(n1) );
  NAND2X2 U5 ( .A(B[3]), .B(A[3]), .Y(n9) );
  XNOR2X1 U6 ( .A(B[2]), .B(A[2]), .Y(n17) );
  NOR2BX4 U7 ( .AN(n15), .B(n2), .Y(N0) );
  AND2X4 U8 ( .A(n13), .B(n14), .Y(n3) );
  NAND2X4 U9 ( .A(B[4]), .B(A[4]), .Y(n13) );
  CLKINVX8 U10 ( .A(A[4]), .Y(n12) );
  AND3X4 U11 ( .A(n19), .B(n18), .C(n17), .Y(n15) );
  NAND2X4 U12 ( .A(n7), .B(n8), .Y(n10) );
  INVX1 U13 ( .A(B[3]), .Y(n7) );
  NAND2X4 U14 ( .A(n11), .B(n12), .Y(n14) );
  INVX12 U15 ( .A(B[4]), .Y(n11) );
  XNOR2X4 U16 ( .A(B[0]), .B(A[0]), .Y(n19) );
  XNOR2X4 U17 ( .A(A[1]), .B(B[1]), .Y(n18) );
endmodule


module dec_comparator_DATA_DEPTH4_3 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X4 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XNOR2X1 U3 ( .A(B[3]), .B(A[3]), .Y(n8) );
  XNOR2X1 U4 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2X1 U5 ( .A(B[1]), .B(A[1]), .Y(n5) );
endmodule


module dec_comparator_all_options_3 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11;

  OAI2BB2X4 U1 ( .B0(codeword_width[1]), .B1(n11), .A0N(result_32bit), .A1N(
        codeword_width[1]), .Y(isEqual) );
  AOI22X4 U2 ( .A0(result_8bit), .A1(n8), .B0(result_16bit), .B1(
        codeword_width[0]), .Y(n11) );
  dec_comparator_DATA_DEPTH6_3 inst_32bit ( .A({A[5:4], n6, n4, A[1], n1}), 
        .B({B[5:1], n9}), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_3 inst_16bit ( .A({A[4], n6, n4, A[1], n1}), .B({
        B[4:1], n9}), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_3 inst_8bit ( .A({n6, n4, A[1], n1}), .B({B[3:1], 
        n9}), .isEqual(result_8bit) );
  CLKINVX8 U3 ( .A(n5), .Y(n4) );
  INVX8 U4 ( .A(n7), .Y(n6) );
  INVX8 U5 ( .A(A[2]), .Y(n5) );
  CLKINVX8 U6 ( .A(n3), .Y(n1) );
  INVX8 U7 ( .A(A[0]), .Y(n3) );
  INVX8 U8 ( .A(A[3]), .Y(n7) );
  INVX1 U9 ( .A(n10), .Y(n9) );
  INVX1 U10 ( .A(B[0]), .Y(n10) );
  INVX1 U11 ( .A(codeword_width[0]), .Y(n8) );
endmodule


module dec_comparator_DATA_DEPTH6_2 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8, n9, n10, n11;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N0) );
  XOR2X2 U2 ( .A(A[5]), .B(B[5]), .Y(n10) );
  XOR2X1 U3 ( .A(B[4]), .B(A[4]), .Y(n8) );
  XOR2X4 U4 ( .A(B[1]), .B(A[1]), .Y(n6) );
  XOR2X2 U5 ( .A(B[2]), .B(A[2]), .Y(n7) );
  XOR2X2 U6 ( .A(B[3]), .B(A[3]), .Y(n9) );
  XOR2X2 U7 ( .A(B[0]), .B(A[0]), .Y(n5) );
  OR3X4 U8 ( .A(n5), .B(n6), .C(n7), .Y(n11) );
endmodule


module dec_comparator_DATA_DEPTH5_2 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n7, n8, n9, n10, n11, n12, n13, n14, n15;
  assign isEqual = N0;

  NOR3X4 U1 ( .A(n15), .B(n14), .C(n13), .Y(N0) );
  XOR2X4 U3 ( .A(B[3]), .B(A[3]), .Y(n14) );
  XOR2X1 U2 ( .A(B[4]), .B(A[4]), .Y(n13) );
  XNOR2X2 U4 ( .A(A[2]), .B(B[2]), .Y(n10) );
  INVX4 U5 ( .A(n7), .Y(n8) );
  NAND2X4 U6 ( .A(n12), .B(n10), .Y(n7) );
  NAND2X4 U7 ( .A(n8), .B(n11), .Y(n15) );
  XNOR2X4 U8 ( .A(B[0]), .B(A[0]), .Y(n12) );
  XOR2X4 U9 ( .A(A[1]), .B(n9), .Y(n11) );
  CLKINVX20 U10 ( .A(B[1]), .Y(n9) );
endmodule


module dec_comparator_DATA_DEPTH4_2 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  AND4X4 U1 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N0) );
  XNOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XNOR2X4 U3 ( .A(B[1]), .B(A[1]), .Y(n5) );
  XNOR2X1 U4 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2X4 U5 ( .A(B[3]), .B(A[3]), .Y(n8) );
endmodule


module dec_comparator_all_options_2 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13;

  OAI2BB2X4 U1 ( .B0(n13), .B1(codeword_width[1]), .A0N(result_32bit), .A1N(
        codeword_width[1]), .Y(isEqual) );
  AOI22X4 U2 ( .A0(result_8bit), .A1(n8), .B0(result_16bit), .B1(
        codeword_width[0]), .Y(n13) );
  dec_comparator_DATA_DEPTH6_2 inst_32bit ( .A({A[5:4], n6, n1, n3, n4}), .B({
        n9, B[4:2], n11, B[0]}), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_2 inst_16bit ( .A({A[4], n6, n1, n3, n4}), .B({
        B[4:2], n11, B[0]}), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_2 inst_8bit ( .A({n6, n1, n3, n4}), .B({B[3:2], 
        n11, B[0]}), .isEqual(result_8bit) );
  BUFX20 U3 ( .A(A[1]), .Y(n3) );
  CLKBUFX8 U4 ( .A(A[2]), .Y(n1) );
  INVX8 U5 ( .A(n7), .Y(n6) );
  CLKINVX2 U6 ( .A(A[3]), .Y(n7) );
  INVX4 U7 ( .A(A[0]), .Y(n5) );
  INVX8 U8 ( .A(n5), .Y(n4) );
  INVXL U9 ( .A(codeword_width[0]), .Y(n8) );
  INVX1 U10 ( .A(n12), .Y(n11) );
  INVX1 U11 ( .A(B[1]), .Y(n12) );
  INVX1 U12 ( .A(n10), .Y(n9) );
  INVX1 U13 ( .A(B[5]), .Y(n10) );
endmodule


module dec_comparator_DATA_DEPTH6_1 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n8, n9, n10, n11, n12, n13, n14;
  assign isEqual = N0;

  NOR4X4 U1 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(N0) );
  XOR2X2 U2 ( .A(B[5]), .B(A[5]), .Y(n13) );
  NAND3X1 U3 ( .A(n10), .B(n9), .C(n8), .Y(n14) );
  XNOR2X1 U4 ( .A(B[0]), .B(A[0]), .Y(n10) );
  XNOR2X2 U5 ( .A(B[2]), .B(A[2]), .Y(n8) );
  XOR2X1 U6 ( .A(B[3]), .B(A[3]), .Y(n12) );
  XOR2X1 U7 ( .A(B[4]), .B(A[4]), .Y(n11) );
  XNOR2X2 U8 ( .A(B[1]), .B(A[1]), .Y(n9) );
endmodule


module dec_comparator_DATA_DEPTH5_1 ( A, B, isEqual );
  input [4:0] A;
  input [4:0] B;
  output isEqual;
  wire   N0, n1, n3, n4, n7, n8, n9, n10;
  assign isEqual = N0;

  XNOR2X2 U1 ( .A(B[4]), .B(A[4]), .Y(n3) );
  XNOR2X2 U2 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XOR2X2 U3 ( .A(B[3]), .B(A[3]), .Y(n10) );
  XNOR2X2 U4 ( .A(B[2]), .B(A[2]), .Y(n8) );
  XNOR2X2 U5 ( .A(A[1]), .B(B[1]), .Y(n9) );
  NAND2X4 U6 ( .A(n1), .B(n3), .Y(n4) );
  AND3X4 U7 ( .A(n9), .B(n7), .C(n8), .Y(n1) );
  NOR2X4 U8 ( .A(n4), .B(n10), .Y(N0) );
endmodule


module dec_comparator_DATA_DEPTH4_1 ( A, B, isEqual );
  input [3:0] A;
  input [3:0] B;
  output isEqual;
  wire   N0, n5, n6, n7, n8;
  assign isEqual = N0;

  XNOR2X1 U1 ( .A(B[1]), .B(A[1]), .Y(n5) );
  XNOR2X2 U2 ( .A(A[3]), .B(B[3]), .Y(n8) );
  AND4X2 U3 ( .A(n8), .B(n5), .C(n6), .D(n7), .Y(N0) );
  XNOR2X1 U4 ( .A(B[2]), .B(A[2]), .Y(n6) );
  XNOR2X1 U5 ( .A(B[0]), .B(A[0]), .Y(n7) );
endmodule


module dec_comparator_all_options_1 ( A, B, codeword_width, isEqual );
  input [5:0] A;
  input [5:0] B;
  input [1:0] codeword_width;
  output isEqual;
  wire   result_32bit, result_16bit, result_8bit, n1, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12;

  OAI2BB2X4 U1 ( .B0(n4), .B1(n12), .A0N(n4), .A1N(result_32bit), .Y(isEqual)
         );
  AOI22X4 U2 ( .A0(result_8bit), .A1(n3), .B0(result_16bit), .B1(
        codeword_width[0]), .Y(n12) );
  dec_comparator_DATA_DEPTH6_1 inst_32bit ( .A({A[5:3], n1, A[1:0]}), .B({
        B[5:4], n10, n8, B[1], n6}), .isEqual(result_32bit) );
  dec_comparator_DATA_DEPTH5_1 inst_16bit ( .A({A[4:3], n1, A[1:0]}), .B({B[4], 
        n10, n8, B[1], n6}), .isEqual(result_16bit) );
  dec_comparator_DATA_DEPTH4_1 inst_8bit ( .A({A[3], n1, A[1:0]}), .B({n10, n8, 
        B[1], n6}), .isEqual(result_8bit) );
  CLKBUFX8 U3 ( .A(A[2]), .Y(n1) );
  INVXL U4 ( .A(codeword_width[1]), .Y(n5) );
  INVX1 U5 ( .A(n11), .Y(n10) );
  INVX1 U6 ( .A(B[3]), .Y(n11) );
  INVX1 U7 ( .A(n7), .Y(n6) );
  INVX1 U8 ( .A(B[0]), .Y(n7) );
  INVX1 U9 ( .A(n9), .Y(n8) );
  INVX1 U10 ( .A(B[2]), .Y(n9) );
  INVX1 U11 ( .A(codeword_width[0]), .Y(n3) );
  INVX1 U12 ( .A(n5), .Y(n4) );
endmodule


module dec_priority_encoder ( Y, A );
  input [31:0] Y;
  output [4:0] A;
  wire   n1, n3, n4, n5, n6, n7, n8, n15, n16, n17, n18, n21, n22, n26, n27,
         n29, n32, n35, n36, n38, n44, n45, n46, n47, n48, n49, n51, n53, n54,
         n57, n58, n59, n61, n62, n63, n64, n65, n66, n67, n68, n69, n2, n9,
         n10, n11, n12, n13, n14, n19, n20, n23, n24, n25, n28, n30, n31, n33,
         n34, n37, n39, n40, n41, n42, n43, n50, n52, n55, n56, n60, n70, n71,
         n72, n73, n74, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100
;
  tri   n101;
  tri   [4:0] A;

  NAND4BX4 U19 ( .AN(n43), .B(n39), .C(n35), .D(n36), .Y(n65) );
  NOR2X4 U21 ( .A(Y[10]), .B(Y[0]), .Y(n35) );
  NOR2X4 U31 ( .A(n64), .B(Y[15]), .Y(n32) );
  AOI21X4 U47 ( .A0(n85), .A1(n59), .B0(Y[12]), .Y(n58) );
  NAND4X4 U53 ( .A(Y[3]), .B(n81), .C(n96), .D(n97), .Y(n61) );
  NOR3X4 U63 ( .A(n26), .B(Y[17]), .C(Y[16]), .Y(n62) );
  OR2X4 U64 ( .A(Y[19]), .B(Y[18]), .Y(n26) );
  NOR3X4 U67 ( .A(Y[25]), .B(Y[27]), .C(Y[26]), .Y(n63) );
  NOR4BX4 U69 ( .AN(n90), .B(Y[21]), .C(Y[22]), .D(Y[23]), .Y(n6) );
  TBUFX20 \A_tri[0]  ( .A(n69), .OE(n73), .Y(A[0]) );
  TBUFX2 \A_tri[4]  ( .A(n28), .OE(n73), .Y(n101) );
  TBUFX8 \A_tri[2]  ( .A(n67), .OE(n73), .Y(A[2]) );
  TBUFX16 \A_tri[3]  ( .A(n66), .OE(n73), .Y(A[3]) );
  TBUFX20 \A_tri[1]  ( .A(n68), .OE(n73), .Y(A[1]) );
  INVXL U3 ( .A(Y[26]), .Y(n94) );
  INVX4 U4 ( .A(Y[24]), .Y(n25) );
  CLKBUFX4 U5 ( .A(n64), .Y(n74) );
  BUFX20 U6 ( .A(n32), .Y(n40) );
  OR4X2 U7 ( .A(Y[15]), .B(Y[12]), .C(Y[13]), .D(Y[14]), .Y(n4) );
  OR2XL U8 ( .A(Y[9]), .B(Y[13]), .Y(n12) );
  INVX8 U9 ( .A(Y[13]), .Y(n86) );
  NAND2X1 U10 ( .A(n8), .B(Y[27]), .Y(n34) );
  OAI21X1 U11 ( .A0(n28), .A1(n1), .B0(n10), .Y(n66) );
  NAND4X2 U12 ( .A(Y[10]), .B(n41), .C(n99), .D(n86), .Y(n15) );
  CLKINVXL U13 ( .A(Y[29]), .Y(n95) );
  CLKINVX8 U14 ( .A(Y[20]), .Y(n90) );
  NAND2BX1 U15 ( .AN(Y[23]), .B(n92), .Y(n27) );
  INVX8 U16 ( .A(Y[22]), .Y(n92) );
  OAI21X4 U17 ( .A0(n29), .A1(Y[6]), .B0(n39), .Y(n16) );
  NAND3X2 U18 ( .A(n55), .B(n56), .C(n23), .Y(n67) );
  AND2X2 U20 ( .A(Y[14]), .B(n87), .Y(n9) );
  OAI31X4 U22 ( .A0(n22), .A1(Y[25]), .A2(Y[24]), .B0(n94), .Y(n18) );
  AOI31X4 U23 ( .A0(n20), .A1(n91), .A2(n26), .B0(n27), .Y(n22) );
  BUFX20 U24 ( .A(n101), .Y(A[4]) );
  NAND2X4 U25 ( .A(n31), .B(n33), .Y(n78) );
  INVX8 U26 ( .A(n87), .Y(n28) );
  NAND4BX4 U27 ( .AN(Y[30]), .B(n15), .C(n16), .D(n17), .Y(n68) );
  NOR3X4 U28 ( .A(n2), .B(n9), .C(n78), .Y(n17) );
  INVX16 U29 ( .A(Y[8]), .Y(n83) );
  INVX4 U30 ( .A(n41), .Y(n42) );
  INVX12 U32 ( .A(Y[21]), .Y(n91) );
  INVX4 U33 ( .A(Y[14]), .Y(n100) );
  NOR2X2 U34 ( .A(Y[20]), .B(n54), .Y(n60) );
  NAND2X2 U35 ( .A(Y[17]), .B(n89), .Y(n50) );
  INVX1 U36 ( .A(Y[19]), .Y(n52) );
  INVX1 U37 ( .A(n91), .Y(n70) );
  AND2X2 U38 ( .A(n34), .B(n37), .Y(n31) );
  AND2X2 U39 ( .A(n23), .B(n18), .Y(n2) );
  NOR3X1 U40 ( .A(n77), .B(Y[5]), .C(Y[4]), .Y(n29) );
  INVX1 U41 ( .A(n10), .Y(n7) );
  NOR2X1 U42 ( .A(n3), .B(n4), .Y(n1) );
  AOI21X2 U43 ( .A0(n53), .A1(n92), .B0(Y[23]), .Y(n51) );
  OAI21X2 U44 ( .A0(Y[24]), .A1(n51), .B0(n93), .Y(n45) );
  DLY1X1 U45 ( .A(n8), .Y(n23) );
  BUFX20 U46 ( .A(n24), .Y(n10) );
  AOI32X4 U48 ( .A0(n45), .A1(n94), .A2(n23), .B0(n46), .B1(n100), .Y(n44) );
  OAI32X4 U49 ( .A0(n47), .A1(n48), .A2(n38), .B0(n49), .B1(n42), .Y(n46) );
  AND2X1 U50 ( .A(n80), .B(n81), .Y(n11) );
  AND3X2 U51 ( .A(n83), .B(n85), .C(n99), .Y(n13) );
  AND2X2 U52 ( .A(n98), .B(n83), .Y(n14) );
  AND2X2 U54 ( .A(n96), .B(n97), .Y(n19) );
  INVX1 U55 ( .A(Y[20]), .Y(n20) );
  INVX8 U56 ( .A(n76), .Y(n8) );
  INVX1 U57 ( .A(Y[18]), .Y(n89) );
  INVX8 U58 ( .A(Y[9]), .Y(n98) );
  AND3X4 U59 ( .A(n8), .B(n25), .C(n63), .Y(n24) );
  INVX8 U60 ( .A(n57), .Y(n79) );
  NAND4BBX4 U61 ( .AN(n71), .BN(Y[10]), .C(n83), .D(n98), .Y(n59) );
  INVX12 U62 ( .A(Y[10]), .Y(n84) );
  OR2X2 U65 ( .A(n28), .B(n5), .Y(n55) );
  CLKINVX8 U66 ( .A(n40), .Y(n88) );
  AND3X1 U68 ( .A(n33), .B(n34), .C(n37), .Y(n21) );
  BUFX12 U70 ( .A(n6), .Y(n72) );
  INVX8 U71 ( .A(Y[7]), .Y(n80) );
  NAND2XL U72 ( .A(n84), .B(n97), .Y(n47) );
  AND2X4 U73 ( .A(n62), .B(n72), .Y(n30) );
  AOI31X4 U74 ( .A0(n77), .A1(n81), .A2(Y[1]), .B0(Y[5]), .Y(n48) );
  CLKINVXL U75 ( .A(Y[31]), .Y(n37) );
  AOI31X4 U76 ( .A0(n84), .A1(n99), .A2(Y[9]), .B0(Y[13]), .Y(n49) );
  INVX8 U77 ( .A(Y[4]), .Y(n81) );
  AOI31X4 U78 ( .A0(n58), .A1(n100), .A2(n86), .B0(Y[15]), .Y(n57) );
  INVX8 U79 ( .A(n74), .Y(n87) );
  INVX8 U80 ( .A(Y[12]), .Y(n99) );
  NAND3X4 U81 ( .A(n14), .B(n84), .C(n85), .Y(n3) );
  INVX8 U82 ( .A(n3), .Y(n82) );
  NAND2X4 U83 ( .A(n30), .B(n10), .Y(n64) );
  NAND2X4 U84 ( .A(n19), .B(n11), .Y(n43) );
  NOR2X4 U85 ( .A(n12), .B(n38), .Y(n39) );
  NAND2X4 U86 ( .A(n87), .B(n79), .Y(n33) );
  OAI211X2 U87 ( .A0(Y[30]), .A1(n95), .B0(n44), .C0(n21), .Y(n69) );
  NAND2X4 U88 ( .A(n40), .B(n13), .Y(n38) );
  INVX8 U89 ( .A(Y[11]), .Y(n85) );
  NOR4BX2 U90 ( .AN(n100), .B(Y[2]), .C(Y[3]), .D(Y[1]), .Y(n36) );
  INVX8 U91 ( .A(n88), .Y(n41) );
  AND2X4 U92 ( .A(n50), .B(n52), .Y(n54) );
  OR2XL U93 ( .A(n7), .B(n72), .Y(n56) );
  AOI21X4 U94 ( .A0(n82), .A1(n43), .B0(n4), .Y(n5) );
  OR2X4 U95 ( .A(n60), .B(n70), .Y(n53) );
  INVX8 U96 ( .A(Y[2]), .Y(n77) );
  AND2X4 U97 ( .A(n80), .B(n61), .Y(n71) );
  INVXL U98 ( .A(Y[25]), .Y(n93) );
  BUFX20 U99 ( .A(n65), .Y(n73) );
  INVX8 U100 ( .A(Y[6]), .Y(n97) );
  INVX8 U101 ( .A(Y[5]), .Y(n96) );
  OR4X4 U102 ( .A(Y[31]), .B(Y[29]), .C(Y[30]), .D(Y[28]), .Y(n76) );
endmodule


module dec_is_column ( s, codeword_width, isCol, whatCol );
  input [5:0] s;
  input [1:0] codeword_width;
  output [4:0] whatCol;
  output isCol;
  wire   \comp_input[9][5] , \comp_input[7][1] , \comp_input[7][0] , n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n17, n1, n2, n3, n15, n16,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99;
  wire   [31:0] isEqual;
  tri   [4:0] whatCol;
  assign \comp_input[9][5]  = codeword_width[1];

  NAND4X4 U3 ( .A(n22), .B(n5), .C(n6), .D(n7), .Y(isCol) );
  NAND3X4 U8 ( .A(n10), .B(n11), .C(n12), .Y(n9) );
  dec_comparator_all_options_0 \genblk1[0].comparator  ( .A({n75, n73, n45, 
        n25, n65, n60}), .B({n89, n55, n56, 1'b0, 1'b0, 1'b1}), 
        .codeword_width({n86, n82}), .isEqual(isEqual[0]) );
  dec_comparator_all_options_31 \genblk1[1].comparator  ( .A({n76, n71, n67, 
        n25, n19, n58}), .B({n87, n55, n56, 1'b0, 1'b1, 1'b0}), 
        .codeword_width({n85, n80}), .isEqual(isEqual[1]) );
  dec_comparator_all_options_30 \genblk1[2].comparator  ( .A({n75, n71, n3, 
        n25, n18, n58}), .B({n87, n55, n56, 1'b1, 1'b0, 1'b0}), 
        .codeword_width({n85, n80}), .isEqual(isEqual[2]) );
  dec_comparator_all_options_29 \genblk1[3].comparator  ( .A({n76, n71, n3, 
        n25, n18, n58}), .B({n87, n55, 1'b1, 1'b0, 1'b0, 1'b0}), 
        .codeword_width({n85, n80}), .isEqual(isEqual[3]) );
  dec_comparator_all_options_28 \genblk1[4].comparator  ( .A({n76, n71, n2, 
        n24, n18, n58}), .B({n87, n57, n56, 1'b0, n56, n56}), .codeword_width(
        {n85, n80}), .isEqual(isEqual[4]) );
  dec_comparator_all_options_27 \genblk1[5].comparator  ( .A({n76, n71, n2, 
        n25, n16, n58}), .B({n96, n55, n56, n56, n55, n44}), .codeword_width({
        n85, n80}), .isEqual(isEqual[5]) );
  dec_comparator_all_options_26 \genblk1[6].comparator  ( .A({n76, n71, n2, 
        n24, n19, n58}), .B({n87, n55, n56, \comp_input[7][1] , 
        \comp_input[7][0] , n57}), .codeword_width({n85, n80}), .isEqual(
        isEqual[6]) );
  dec_comparator_all_options_25 \genblk1[7].comparator  ( .A({n75, n71, n3, 
        n25, n19, n58}), .B({n87, n55, n56, 1'b1, n44, \comp_input[7][0] }), 
        .codeword_width({n85, n80}), .isEqual(isEqual[7]) );
  dec_comparator_all_options_24 \genblk1[8].comparator  ( .A({n75, n71, n45, 
        n25, n19, n58}), .B({n85, n55, 1'b0, n57, n57, n55}), .codeword_width(
        {n85, n80}), .isEqual(isEqual[8]) );
  dec_comparator_all_options_23 \genblk1[9].comparator  ( .A({n76, n71, n2, 
        n25, n18, n58}), .B({n87, n55, n55, n89, n87, n57}), .codeword_width({
        n85, n80}), .isEqual(isEqual[9]) );
  dec_comparator_all_options_22 \genblk1[10].comparator  ( .A({n76, n71, n45, 
        n25, n16, n58}), .B({n87, n55, n57, 1'b0, n55, n89}), .codeword_width(
        {n86, n80}), .isEqual(isEqual[10]) );
  dec_comparator_all_options_21 \genblk1[11].comparator  ( .A({n76, n71, n45, 
        n25, n19, n58}), .B({n89, n55, n57, 1'b0, n57, n55}), .codeword_width(
        {n86, n80}), .isEqual(isEqual[11]) );
  dec_comparator_all_options_20 \genblk1[12].comparator  ( .A({n75, n71, n67, 
        n25, n16, n58}), .B({n87, n55, n57, n55, n89, n89}), .codeword_width({
        n86, n80}), .isEqual(isEqual[12]) );
  dec_comparator_all_options_19 \genblk1[13].comparator  ( .A({n76, n71, n45, 
        n25, n16, n58}), .B({n87, n55, n57, n57, 1'b0, n55}), .codeword_width(
        {n86, n81}), .isEqual(isEqual[13]) );
  dec_comparator_all_options_18 \genblk1[14].comparator  ( .A({n75, n72, n45, 
        n24, n35, n43}), .B({n87, n55, n57, n57, n55, n89}), .codeword_width({
        n86, n81}), .isEqual(isEqual[14]) );
  dec_comparator_all_options_17 \genblk1[15].comparator  ( .A({n76, n72, n45, 
        n25, n34, n43}), .B({n87, n55, n57, n57, n57, n55}), .codeword_width({
        n86, n81}), .isEqual(isEqual[15]) );
  dec_comparator_all_options_16 \genblk1[16].comparator  ( .A({n76, n72, n67, 
        n25, n34, n43}), .B({n87, 1'b0, n89, n89, n89, n89}), .codeword_width(
        {n86, n81}), .isEqual(isEqual[16]) );
  dec_comparator_all_options_15 \genblk1[17].comparator  ( .A({n75, n72, n3, 
        n25, n35, n43}), .B({n87, n85, 1'b0, 1'b0, 1'b0, n88}), 
        .codeword_width({n88, n81}), .isEqual(isEqual[17]) );
  dec_comparator_all_options_14 \genblk1[18].comparator  ( .A({n75, s[4], n67, 
        n25, n35, n43}), .B({n87, n87, 1'b0, 1'b0, n88, 1'b0}), 
        .codeword_width({n86, n81}), .isEqual(isEqual[18]) );
  dec_comparator_all_options_13 \genblk1[19].comparator  ( .A({n75, n72, n3, 
        n24, n35, n43}), .B({n87, n85, 1'b0, 1'b0, n88, n88}), 
        .codeword_width({n87, n81}), .isEqual(isEqual[19]) );
  dec_comparator_all_options_12 \genblk1[20].comparator  ( .A({n75, n72, n3, 
        n24, n34, n43}), .B({n87, n85, 1'b0, n88, 1'b0, 1'b0}), 
        .codeword_width({n85, n81}), .isEqual(isEqual[20]) );
  dec_comparator_all_options_11 \genblk1[21].comparator  ( .A({n75, n72, n3, 
        n25, n35, n43}), .B({n87, n85, 1'b0, n88, 1'b0, n88}), 
        .codeword_width({n86, n81}), .isEqual(isEqual[21]) );
  dec_comparator_all_options_10 \genblk1[22].comparator  ( .A({n76, n72, n45, 
        n24, n35, n43}), .B({n87, n85, 1'b0, n88, n88, 1'b0}), 
        .codeword_width({n86, n81}), .isEqual(isEqual[22]) );
  dec_comparator_all_options_9 \genblk1[23].comparator  ( .A({n76, n72, n2, 
        n24, n35, n43}), .B({n96, n85, 1'b0, n88, n88, n88}), .codeword_width(
        {n87, n81}), .isEqual(isEqual[23]) );
  dec_comparator_all_options_8 \genblk1[24].comparator  ( .A({n76, n72, n67, 
        n25, n34, n43}), .B({n87, n85, n88, 1'b0, 1'b0, 1'b0}), 
        .codeword_width({n86, n81}), .isEqual(isEqual[24]) );
  dec_comparator_all_options_7 \genblk1[25].comparator  ( .A({n76, n72, n67, 
        n24, n34, n43}), .B({n96, n87, n88, 1'b0, 1'b0, n88}), 
        .codeword_width({n88, n82}), .isEqual(isEqual[25]) );
  dec_comparator_all_options_6 \genblk1[26].comparator  ( .A({n75, n72, n67, 
        n24, n34, n43}), .B({n87, n85, n88, 1'b0, n88, 1'b0}), 
        .codeword_width({n88, n82}), .isEqual(isEqual[26]) );
  dec_comparator_all_options_5 \genblk1[27].comparator  ( .A({n75, n73, n67, 
        n24, n65, n60}), .B({n87, n87, n88, 1'b0, n88, n88}), .codeword_width(
        {n87, n82}), .isEqual(isEqual[27]) );
  dec_comparator_all_options_4 \genblk1[28].comparator  ( .A({n75, n73, n67, 
        n25, n65, n60}), .B({n96, n85, n88, n87, 1'b0, 1'b0}), 
        .codeword_width({n87, n82}), .isEqual(isEqual[28]) );
  dec_comparator_all_options_3 \genblk1[29].comparator  ( .A({n76, n73, n67, 
        n24, n65, n60}), .B({n87, n87, n88, n89, 1'b0, n89}), .codeword_width(
        {n87, n82}), .isEqual(isEqual[29]) );
  dec_comparator_all_options_2 \genblk1[30].comparator  ( .A({n75, n73, n67, 
        n24, n65, n60}), .B({n87, n87, n87, n88, n88, 1'b0}), .codeword_width(
        {n87, n82}), .isEqual(isEqual[30]) );
  dec_comparator_all_options_1 \genblk1[31].comparator  ( .A({n76, n73, n45, 
        n25, n65, n58}), .B({n87, n87, n88, n89, n89, n89}), .codeword_width({
        n86, n82}), .isEqual(isEqual[31]) );
  dec_priority_encoder encoder ( .Y({n41, n52, isEqual[29:26], n54, n37, n38, 
        n30, n27, n39, n1, n33, n15, n20, n21, n26, isEqual[13:11], n53, n32, 
        isEqual[8:7], n51, isEqual[5], n40, n36, isEqual[2:0]}), .A(whatCol)
         );
  BUFX16 U4 ( .A(isEqual[31]), .Y(n41) );
  BUFX12 U5 ( .A(isEqual[24]), .Y(n37) );
  BUFX20 U6 ( .A(isEqual[19]), .Y(n1) );
  NOR4X1 U7 ( .A(n39), .B(n27), .C(n30), .D(n23), .Y(n11) );
  BUFX20 U9 ( .A(isEqual[10]), .Y(n53) );
  BUFX16 U10 ( .A(isEqual[9]), .Y(n32) );
  CLKBUFX20 U11 ( .A(n46), .Y(n2) );
  CLKBUFX20 U12 ( .A(n46), .Y(n3) );
  CLKINVX8 U13 ( .A(n69), .Y(n46) );
  BUFX20 U14 ( .A(isEqual[4]), .Y(n40) );
  BUFX20 U15 ( .A(isEqual[6]), .Y(n51) );
  NOR3X1 U16 ( .A(isEqual[29]), .B(n29), .C(n41), .Y(n13) );
  CLKBUFX4 U17 ( .A(n52), .Y(n29) );
  BUFX8 U18 ( .A(n1), .Y(n23) );
  BUFX20 U19 ( .A(isEqual[23]), .Y(n38) );
  OR4X1 U20 ( .A(n37), .B(n38), .C(isEqual[26]), .D(n54), .Y(n14) );
  BUFX20 U21 ( .A(isEqual[17]), .Y(n15) );
  CLKBUFX20 U22 ( .A(n63), .Y(n16) );
  CLKBUFX20 U23 ( .A(n63), .Y(n18) );
  CLKBUFX20 U24 ( .A(n63), .Y(n19) );
  CLKINVX12 U25 ( .A(n66), .Y(n63) );
  BUFX20 U26 ( .A(isEqual[3]), .Y(n36) );
  INVX4 U27 ( .A(n92), .Y(n86) );
  INVX12 U28 ( .A(n42), .Y(n96) );
  INVX8 U29 ( .A(n95), .Y(n89) );
  CLKBUFX12 U30 ( .A(n31), .Y(n24) );
  BUFX20 U31 ( .A(isEqual[16]), .Y(n20) );
  CLKBUFX12 U32 ( .A(n64), .Y(n34) );
  BUFX20 U33 ( .A(isEqual[15]), .Y(n21) );
  CLKINVX20 U34 ( .A(n62), .Y(n58) );
  INVX12 U35 ( .A(n93), .Y(n87) );
  INVX12 U36 ( .A(n97), .Y(n93) );
  CLKINVX16 U37 ( .A(n94), .Y(n88) );
  NOR4X4 U38 ( .A(n33), .B(n15), .C(n20), .D(n8), .Y(n10) );
  CLKBUFX20 U39 ( .A(n31), .Y(n25) );
  OR4X4 U40 ( .A(n32), .B(isEqual[8]), .C(n21), .D(n26), .Y(n50) );
  BUFX8 U41 ( .A(n4), .Y(n22) );
  INVX16 U42 ( .A(n47), .Y(n56) );
  AOI22XL U43 ( .A0(n55), .A1(n8), .B0(n89), .B1(n9), .Y(n4) );
  BUFX3 U44 ( .A(n99), .Y(n42) );
  INVX1 U45 ( .A(\comp_input[9][5] ), .Y(n99) );
  INVX1 U46 ( .A(n42), .Y(n98) );
  INVX1 U47 ( .A(n42), .Y(n97) );
  CLKBUFX3 U48 ( .A(isEqual[27]), .Y(n28) );
  INVX4 U49 ( .A(s[0]), .Y(n62) );
  NAND2X1 U50 ( .A(n17), .B(n47), .Y(\comp_input[7][1] ) );
  INVX1 U51 ( .A(n78), .Y(n83) );
  BUFX16 U52 ( .A(isEqual[22]), .Y(n30) );
  INVX12 U53 ( .A(n17), .Y(n55) );
  INVX12 U54 ( .A(n83), .Y(n82) );
  CLKINVX8 U55 ( .A(n66), .Y(n64) );
  BUFX20 U56 ( .A(isEqual[20]), .Y(n39) );
  BUFX8 U57 ( .A(isEqual[14]), .Y(n26) );
  BUFX12 U58 ( .A(s[2]), .Y(n31) );
  NOR3X1 U59 ( .A(isEqual[0]), .B(isEqual[2]), .C(isEqual[1]), .Y(n5) );
  BUFX20 U60 ( .A(isEqual[21]), .Y(n27) );
  INVX1 U61 ( .A(n98), .Y(n91) );
  INVX8 U62 ( .A(n92), .Y(n85) );
  CLKINVX8 U63 ( .A(n61), .Y(n60) );
  INVX4 U64 ( .A(s[4]), .Y(n70) );
  CLKINVX8 U65 ( .A(s[3]), .Y(n68) );
  CLKINVX16 U66 ( .A(n77), .Y(n76) );
  CLKINVX20 U67 ( .A(n77), .Y(n75) );
  CLKINVX20 U68 ( .A(n74), .Y(n71) );
  CLKINVX8 U69 ( .A(s[4]), .Y(n74) );
  CLKINVX20 U70 ( .A(n70), .Y(n72) );
  NOR4BX2 U71 ( .AN(n13), .B(n14), .C(isEqual[28]), .D(n28), .Y(n12) );
  CLKBUFX20 U72 ( .A(n64), .Y(n35) );
  CLKBUFX20 U73 ( .A(n59), .Y(n43) );
  INVX12 U74 ( .A(n98), .Y(n90) );
  BUFX20 U75 ( .A(isEqual[18]), .Y(n33) );
  CLKINVX20 U76 ( .A(n69), .Y(n45) );
  INVX20 U77 ( .A(n70), .Y(n73) );
  INVX8 U78 ( .A(n61), .Y(n59) );
  INVX8 U79 ( .A(n67), .Y(n69) );
  CLKINVX20 U80 ( .A(n66), .Y(n65) );
  INVX8 U81 ( .A(codeword_width[0]), .Y(n79) );
  INVX12 U82 ( .A(s[0]), .Y(n61) );
  OR4X4 U83 ( .A(isEqual[13]), .B(isEqual[12]), .C(isEqual[11]), .D(n53), .Y(
        n49) );
  INVX20 U84 ( .A(n48), .Y(n57) );
  OR2X4 U85 ( .A(n82), .B(n89), .Y(n47) );
  NAND2X4 U86 ( .A(n17), .B(n47), .Y(n44) );
  CLKINVX20 U87 ( .A(n68), .Y(n67) );
  NAND2X4 U88 ( .A(codeword_width[0]), .B(n91), .Y(n17) );
  AND2X1 U89 ( .A(n90), .B(n17), .Y(n48) );
  NAND2X2 U90 ( .A(n90), .B(n47), .Y(\comp_input[7][0] ) );
  INVX1 U91 ( .A(n96), .Y(n95) );
  INVX1 U92 ( .A(n96), .Y(n94) );
  CLKINVX3 U93 ( .A(n83), .Y(n81) );
  INVX1 U94 ( .A(n97), .Y(n92) );
  CLKINVX3 U95 ( .A(n84), .Y(n80) );
  INVX1 U96 ( .A(n78), .Y(n84) );
  INVX1 U97 ( .A(n79), .Y(n78) );
  NOR2XL U98 ( .A(n40), .B(n36), .Y(n6) );
  OR2X4 U99 ( .A(n49), .B(n50), .Y(n8) );
  BUFX20 U100 ( .A(isEqual[30]), .Y(n52) );
  BUFX20 U101 ( .A(isEqual[25]), .Y(n54) );
  INVX8 U102 ( .A(s[1]), .Y(n66) );
  NOR3XL U103 ( .A(isEqual[5]), .B(isEqual[7]), .C(n51), .Y(n7) );
  INVX8 U104 ( .A(s[5]), .Y(n77) );
endmodule


module dec_comparator_DATA_DEPTH6_0 ( A, B, isEqual );
  input [5:0] A;
  input [5:0] B;
  output isEqual;
  wire   N0, n1, n2, n3, n4, n5, n6, n7;
  assign isEqual = N0;

  XOR2XL U1 ( .A(B[3]), .B(A[3]), .Y(n3) );
  XOR2XL U2 ( .A(B[4]), .B(A[4]), .Y(n4) );
  XNOR2XL U3 ( .A(B[0]), .B(A[0]), .Y(n5) );
  NAND3X1 U4 ( .A(n5), .B(n6), .C(n7), .Y(n1) );
  NOR4X1 U5 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(N0) );
  XNOR2XL U6 ( .A(B[1]), .B(A[1]), .Y(n6) );
  XOR2XL U7 ( .A(B[5]), .B(A[5]), .Y(n2) );
  XNOR2XL U8 ( .A(B[2]), .B(A[2]), .Y(n7) );
endmodule


module dec_flip_a_bit_DATA_WIDTH32 ( codeword, whichColIsError, data_out );
  input [31:0] codeword;
  input [4:0] whichColIsError;
  output [31:0] data_out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69;
  tri   [4:0] whichColIsError;

  XOR2X2 U1 ( .A(codeword[16]), .B(n13), .Y(data_out[16]) );
  BUFX12 U2 ( .A(n27), .Y(n61) );
  NOR2X4 U3 ( .A(whichColIsError[2]), .B(whichColIsError[1]), .Y(n19) );
  NOR2X4 U4 ( .A(n43), .B(n59), .Y(n29) );
  BUFX12 U5 ( .A(n19), .Y(n68) );
  NAND2X4 U6 ( .A(n68), .B(n57), .Y(n43) );
  INVXL U7 ( .A(codeword[5]), .Y(n6) );
  BUFX8 U8 ( .A(n26), .Y(n66) );
  BUFX8 U9 ( .A(n43), .Y(n65) );
  OR2X2 U10 ( .A(whichColIsError[4]), .B(whichColIsError[3]), .Y(n27) );
  NOR2X2 U11 ( .A(n67), .B(n60), .Y(n40) );
  XOR2X2 U12 ( .A(n4), .B(n5), .Y(data_out[28]) );
  INVX1 U13 ( .A(codeword[28]), .Y(n4) );
  XOR2X2 U14 ( .A(codeword[18]), .B(n36), .Y(data_out[18]) );
  XOR2X2 U15 ( .A(codeword[26]), .B(n47), .Y(data_out[26]) );
  XOR2X4 U16 ( .A(codeword[12]), .B(n9), .Y(data_out[12]) );
  BUFX20 U17 ( .A(whichColIsError[0]), .Y(n1) );
  XNOR2X4 U18 ( .A(codeword[31]), .B(n10), .Y(data_out[31]) );
  BUFX4 U19 ( .A(whichColIsError[0]), .Y(n8) );
  BUFX20 U20 ( .A(n46), .Y(n2) );
  OR2X4 U21 ( .A(n62), .B(n65), .Y(n3) );
  NOR2X2 U22 ( .A(n62), .B(n64), .Y(n45) );
  XOR2X2 U23 ( .A(codeword[15]), .B(n34), .Y(data_out[15]) );
  XOR2X2 U24 ( .A(codeword[30]), .B(n53), .Y(data_out[30]) );
  NOR2X2 U25 ( .A(n50), .B(n60), .Y(n39) );
  INVX8 U26 ( .A(whichColIsError[1]), .Y(n58) );
  NOR2X4 U27 ( .A(n63), .B(n59), .Y(n34) );
  NOR2X2 U28 ( .A(n2), .B(n60), .Y(n36) );
  OR2X4 U29 ( .A(n62), .B(n49), .Y(n5) );
  NOR2BX4 U30 ( .AN(n17), .B(n61), .Y(n7) );
  NOR2X4 U31 ( .A(n62), .B(n2), .Y(n47) );
  XOR2X4 U32 ( .A(codeword[22]), .B(n40), .Y(data_out[22]) );
  XNOR2X4 U33 ( .A(n6), .B(n7), .Y(data_out[5]) );
  NOR2X4 U34 ( .A(n62), .B(n15), .Y(n48) );
  XNOR2X4 U35 ( .A(codeword[24]), .B(n3), .Y(data_out[24]) );
  NOR2X4 U36 ( .A(n62), .B(n67), .Y(n53) );
  XOR2X4 U37 ( .A(n38), .B(codeword[20]), .Y(data_out[20]) );
  NOR2X4 U38 ( .A(n65), .B(n60), .Y(n13) );
  NOR2X4 U39 ( .A(n67), .B(n59), .Y(n32) );
  OR2X2 U40 ( .A(n63), .B(n62), .Y(n10) );
  XNOR2X4 U41 ( .A(codeword[10]), .B(n12), .Y(data_out[10]) );
  NOR2X4 U42 ( .A(n60), .B(n49), .Y(n38) );
  INVX8 U43 ( .A(n16), .Y(n49) );
  OR2X4 U44 ( .A(n50), .B(n59), .Y(n11) );
  NOR2X4 U45 ( .A(n49), .B(n59), .Y(n9) );
  NOR2X4 U46 ( .A(n49), .B(n61), .Y(n24) );
  XOR2X4 U47 ( .A(codeword[25]), .B(n45), .Y(data_out[25]) );
  NAND2BX2 U48 ( .AN(whichColIsError[3]), .B(whichColIsError[4]), .Y(n41) );
  XOR2X4 U49 ( .A(codeword[11]), .B(n31), .Y(data_out[11]) );
  XOR2X4 U50 ( .A(codeword[21]), .B(n39), .Y(data_out[21]) );
  XOR2X4 U51 ( .A(codeword[14]), .B(n32), .Y(data_out[14]) );
  XOR2X4 U52 ( .A(codeword[17]), .B(n35), .Y(data_out[17]) );
  XOR2X4 U53 ( .A(codeword[19]), .B(n37), .Y(data_out[19]) );
  NOR2X4 U54 ( .A(n62), .B(n50), .Y(n51) );
  BUFX20 U55 ( .A(n54), .Y(n62) );
  BUFX20 U56 ( .A(n41), .Y(n60) );
  XOR2X4 U57 ( .A(codeword[23]), .B(n42), .Y(data_out[23]) );
  XOR2X2 U58 ( .A(codeword[27]), .B(n48), .Y(data_out[27]) );
  XNOR2X4 U59 ( .A(codeword[13]), .B(n11), .Y(data_out[13]) );
  AND2X4 U60 ( .A(n14), .B(n57), .Y(n16) );
  INVX8 U61 ( .A(whichColIsError[0]), .Y(n57) );
  XOR2X4 U62 ( .A(codeword[29]), .B(n51), .Y(data_out[29]) );
  NAND2X4 U63 ( .A(whichColIsError[3]), .B(whichColIsError[4]), .Y(n54) );
  NOR2X4 U64 ( .A(n15), .B(n59), .Y(n31) );
  BUFX20 U65 ( .A(n33), .Y(n59) );
  NAND2BX4 U66 ( .AN(whichColIsError[4]), .B(whichColIsError[3]), .Y(n33) );
  INVX8 U67 ( .A(whichColIsError[2]), .Y(n56) );
  NOR2X4 U68 ( .A(n63), .B(n60), .Y(n42) );
  NOR2X4 U69 ( .A(n64), .B(n60), .Y(n35) );
  NOR2X4 U70 ( .A(n15), .B(n60), .Y(n37) );
  NAND2X4 U71 ( .A(n66), .B(n57), .Y(n52) );
  AND2X4 U72 ( .A(whichColIsError[0]), .B(n14), .Y(n17) );
  INVX8 U73 ( .A(n17), .Y(n50) );
  OR2X4 U74 ( .A(n2), .B(n59), .Y(n12) );
  NOR2X4 U75 ( .A(whichColIsError[1]), .B(n56), .Y(n14) );
  NAND2X4 U76 ( .A(n22), .B(n8), .Y(n15) );
  INVXL U77 ( .A(codeword[0]), .Y(n69) );
  OR2X1 U78 ( .A(n65), .B(n61), .Y(n18) );
  XOR2X1 U79 ( .A(n18), .B(n69), .Y(data_out[0]) );
  XOR2X1 U80 ( .A(codeword[1]), .B(n20), .Y(data_out[1]) );
  XOR2X1 U81 ( .A(codeword[2]), .B(n21), .Y(data_out[2]) );
  XOR2X1 U82 ( .A(codeword[3]), .B(n23), .Y(data_out[3]) );
  NOR2XL U83 ( .A(n64), .B(n61), .Y(n20) );
  NOR2X4 U84 ( .A(n58), .B(whichColIsError[2]), .Y(n22) );
  NOR2X4 U85 ( .A(n63), .B(n61), .Y(n28) );
  XOR2X4 U86 ( .A(n28), .B(codeword[7]), .Y(data_out[7]) );
  NOR2X4 U87 ( .A(n58), .B(n56), .Y(n26) );
  XOR2X4 U88 ( .A(n29), .B(codeword[8]), .Y(data_out[8]) );
  NAND2X4 U89 ( .A(n22), .B(n57), .Y(n46) );
  NAND2X4 U90 ( .A(n68), .B(n1), .Y(n44) );
  NOR2X4 U91 ( .A(n64), .B(n59), .Y(n30) );
  XOR2X4 U92 ( .A(n30), .B(codeword[9]), .Y(data_out[9]) );
  NOR2X4 U93 ( .A(n52), .B(n61), .Y(n25) );
  XOR2X4 U94 ( .A(codeword[6]), .B(n25), .Y(data_out[6]) );
  XOR2X4 U95 ( .A(n24), .B(codeword[4]), .Y(data_out[4]) );
  BUFX20 U96 ( .A(n55), .Y(n63) );
  BUFX20 U97 ( .A(n44), .Y(n64) );
  BUFX20 U98 ( .A(n52), .Y(n67) );
  NAND2X4 U99 ( .A(n66), .B(n1), .Y(n55) );
  NOR2XL U100 ( .A(n15), .B(n61), .Y(n23) );
  NOR2XL U101 ( .A(n2), .B(n61), .Y(n21) );
endmodule


module dec_output_ctrl_DATA_WIDTH32 ( codeword, areThereErrors, 
        isThereOneError, whichColIsError, num_of_errors, data_out );
  input [31:0] codeword;
  input [4:0] whichColIsError;
  output [1:0] num_of_errors;
  output [31:0] data_out;
  input areThereErrors, isThereOneError;
  wire   n81, n34, n36, n37, n39, n40, n41, n42, n44, n45, n46, n47, n50, n51,
         n52, n53, n54, n55, n56, n58, n62, n64, n1, n2, n3, n8, n9, n11, n13,
         n14, n16, n18, n19, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32,
         n33, n35, n38, n48, n49;
  wire   [31:0] flip_result;
  tri   [4:0] whichColIsError;

  AOI22X4 U5 ( .A0(n2), .A1(flip_result[8]), .B0(codeword[8]), .B1(n32), .Y(
        n34) );
  AOI22X4 U8 ( .A0(flip_result[5]), .A1(n1), .B0(codeword[5]), .B1(n32), .Y(
        n37) );
  AOI22X4 U17 ( .A0(flip_result[26]), .A1(n2), .B0(codeword[26]), .B1(n33), 
        .Y(n46) );
  AOI22X4 U18 ( .A0(flip_result[25]), .A1(n3), .B0(codeword[25]), .B1(n33), 
        .Y(n47) );
  AOI22X4 U29 ( .A0(flip_result[15]), .A1(num_of_errors[0]), .B0(codeword[15]), 
        .B1(n33), .Y(n58) );
  AOI22X4 U33 ( .A0(flip_result[11]), .A1(num_of_errors[0]), .B0(codeword[11]), 
        .B1(n33), .Y(n62) );
  NOR2BX4 U36 ( .AN(isThereOneError), .B(areThereErrors), .Y(n81) );
  dec_flip_a_bit_DATA_WIDTH32 flipper ( .codeword(codeword), .whichColIsError(
        whichColIsError), .data_out(flip_result) );
  NAND2X4 U3 ( .A(n28), .B(n29), .Y(data_out[24]) );
  INVX8 U4 ( .A(n58), .Y(data_out[15]) );
  BUFX20 U6 ( .A(n48), .Y(n1) );
  AOI22X4 U7 ( .A0(flip_result[17]), .A1(num_of_errors[0]), .B0(codeword[17]), 
        .B1(n33), .Y(n56) );
  CLKBUFX20 U9 ( .A(n48), .Y(n2) );
  CLKBUFX20 U10 ( .A(n48), .Y(n3) );
  INVXL U11 ( .A(codeword[7]), .Y(n23) );
  INVXL U12 ( .A(codeword[6]), .Y(n19) );
  INVXL U13 ( .A(codeword[10]), .Y(n11) );
  INVXL U14 ( .A(codeword[13]), .Y(n8) );
  INVXL U15 ( .A(codeword[4]), .Y(n16) );
  INVXL U16 ( .A(codeword[14]), .Y(n13) );
  INVX1 U19 ( .A(codeword[12]), .Y(n21) );
  CLKINVX3 U20 ( .A(n56), .Y(data_out[17]) );
  INVX4 U21 ( .A(n55), .Y(data_out[18]) );
  CLKINVX3 U22 ( .A(n54), .Y(data_out[19]) );
  INVX4 U23 ( .A(n52), .Y(data_out[20]) );
  NAND2X2 U24 ( .A(flip_result[23]), .B(num_of_errors[0]), .Y(n24) );
  AND2X2 U25 ( .A(codeword[29]), .B(n32), .Y(n27) );
  INVX4 U26 ( .A(n41), .Y(data_out[30]) );
  CLKINVX3 U27 ( .A(n46), .Y(data_out[26]) );
  INVX4 U28 ( .A(n40), .Y(data_out[31]) );
  NAND2X2 U30 ( .A(flip_result[24]), .B(num_of_errors[0]), .Y(n28) );
  AOI22X2 U31 ( .A0(flip_result[31]), .A1(n2), .B0(codeword[31]), .B1(n33), 
        .Y(n40) );
  CLKINVX3 U32 ( .A(n38), .Y(n32) );
  INVX1 U34 ( .A(areThereErrors), .Y(n9) );
  OR2X2 U35 ( .A(n26), .B(n27), .Y(data_out[29]) );
  NAND2X1 U37 ( .A(n24), .B(n25), .Y(data_out[23]) );
  INVX1 U38 ( .A(areThereErrors), .Y(n14) );
  INVX16 U39 ( .A(n49), .Y(n48) );
  OAI2BB2X4 U40 ( .B0(n8), .B1(n9), .A0N(flip_result[13]), .A1N(
        num_of_errors[0]), .Y(data_out[13]) );
  OAI2BB2X4 U41 ( .B0(n11), .B1(n9), .A0N(flip_result[10]), .A1N(
        num_of_errors[0]), .Y(data_out[10]) );
  OAI2BB2X4 U42 ( .B0(n13), .B1(n14), .A0N(flip_result[14]), .A1N(
        num_of_errors[0]), .Y(data_out[14]) );
  OAI2BB2X4 U43 ( .B0(n16), .B1(n9), .A0N(n3), .A1N(flip_result[4]), .Y(
        data_out[4]) );
  INVXL U44 ( .A(codeword[9]), .Y(n18) );
  OAI2BB2X4 U45 ( .B0(n18), .B1(n38), .A0N(n3), .A1N(flip_result[9]), .Y(
        data_out[9]) );
  AOI2BB2X4 U46 ( .B0(flip_result[6]), .B1(n1), .A0N(n19), .A1N(n38), .Y(n36)
         );
  OAI2BB2X4 U47 ( .B0(n21), .B1(n14), .A0N(num_of_errors[0]), .A1N(
        flip_result[12]), .Y(data_out[12]) );
  OAI2BB2X4 U48 ( .B0(n23), .B1(n38), .A0N(n1), .A1N(flip_result[7]), .Y(
        data_out[7]) );
  AOI22X2 U49 ( .A0(flip_result[20]), .A1(num_of_errors[0]), .B0(codeword[20]), 
        .B1(n33), .Y(n52) );
  AOI22X4 U50 ( .A0(flip_result[30]), .A1(n3), .B0(codeword[30]), .B1(n32), 
        .Y(n41) );
  AOI22X4 U51 ( .A0(flip_result[19]), .A1(num_of_errors[0]), .B0(codeword[19]), 
        .B1(n33), .Y(n54) );
  NAND2XL U52 ( .A(codeword[23]), .B(n33), .Y(n25) );
  INVX20 U53 ( .A(n49), .Y(num_of_errors[0]) );
  INVX8 U54 ( .A(n62), .Y(data_out[11]) );
  AND2X4 U55 ( .A(flip_result[29]), .B(n3), .Y(n26) );
  CLKINVX3 U56 ( .A(n35), .Y(n33) );
  AOI22X4 U57 ( .A0(flip_result[22]), .A1(num_of_errors[0]), .B0(codeword[22]), 
        .B1(n33), .Y(n50) );
  INVX8 U58 ( .A(n50), .Y(data_out[22]) );
  NAND2XL U59 ( .A(codeword[24]), .B(n33), .Y(n29) );
  AOI22X4 U60 ( .A0(flip_result[18]), .A1(num_of_errors[0]), .B0(codeword[18]), 
        .B1(n33), .Y(n55) );
  AOI22X4 U61 ( .A0(flip_result[27]), .A1(n2), .B0(codeword[27]), .B1(n32), 
        .Y(n45) );
  INVX1 U62 ( .A(codeword[16]), .Y(n31) );
  INVX4 U63 ( .A(n45), .Y(data_out[27]) );
  OAI2BB2X4 U64 ( .B0(n31), .B1(n14), .A0N(flip_result[16]), .A1N(
        num_of_errors[0]), .Y(data_out[16]) );
  INVX8 U65 ( .A(n44), .Y(data_out[28]) );
  CLKINVX8 U66 ( .A(n81), .Y(n49) );
  NOR2XL U67 ( .A(isThereOneError), .B(n33), .Y(num_of_errors[1]) );
  AOI22X4 U68 ( .A0(flip_result[21]), .A1(num_of_errors[0]), .B0(codeword[21]), 
        .B1(n33), .Y(n51) );
  INVX8 U69 ( .A(n51), .Y(data_out[21]) );
  AOI22X4 U70 ( .A0(flip_result[28]), .A1(n2), .B0(codeword[28]), .B1(n32), 
        .Y(n44) );
  INVX1 U71 ( .A(areThereErrors), .Y(n35) );
  INVX1 U72 ( .A(areThereErrors), .Y(n38) );
  INVX1 U73 ( .A(n64), .Y(data_out[0]) );
  INVX1 U74 ( .A(n42), .Y(data_out[2]) );
  INVX1 U75 ( .A(n53), .Y(data_out[1]) );
  INVX1 U76 ( .A(n39), .Y(data_out[3]) );
  INVX4 U77 ( .A(n47), .Y(data_out[25]) );
  AOI22XL U78 ( .A0(flip_result[0]), .A1(num_of_errors[0]), .B0(codeword[0]), 
        .B1(areThereErrors), .Y(n64) );
  AOI22XL U79 ( .A0(flip_result[2]), .A1(n2), .B0(codeword[2]), .B1(n32), .Y(
        n42) );
  AOI22XL U80 ( .A0(flip_result[1]), .A1(num_of_errors[0]), .B0(codeword[1]), 
        .B1(n33), .Y(n53) );
  AOI22XL U81 ( .A0(flip_result[3]), .A1(n3), .B0(codeword[3]), .B1(n32), .Y(
        n39) );
  INVX8 U82 ( .A(n37), .Y(data_out[5]) );
  INVX8 U83 ( .A(n34), .Y(data_out[8]) );
  INVX8 U84 ( .A(n36), .Y(data_out[6]) );
endmodule


module decoder_DATA_WIDTH32 ( codeword, codeword_width, enable, num_of_errors, 
        data_out );
  input [31:0] codeword;
  input [1:0] codeword_width;
  output [1:0] num_of_errors;
  output [31:0] data_out;
  input enable;
  wire   isSColInMat, does_s_equal_zero, n13, n15, n16, n22, n24, n25, n27, n1,
         n2, n3, n4, n5, n6, n8, n9, n10, n12, n14, n18, n19, n21, n26, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71;
  wire   [5:0] s;
  wire   [31:0] temp_data_out;
  tri   [4:0] whatColisS;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;
  assign data_out[26] = 1'b0;
  assign data_out[27] = 1'b0;
  assign data_out[28] = 1'b0;
  assign data_out[29] = 1'b0;
  assign data_out[30] = 1'b0;
  assign data_out[31] = 1'b0;

  AND2X4 U18 ( .A(temp_data_out[25]), .B(n63), .Y(data_out[19]) );
  dec_mat_multiplier_all_options_DATA_WIDTH32 multiplier ( 
        .codeword_with_errors({n61, n40, n55, n45, n59, n56, codeword[25], n41, 
        n3, n50, n48, n4, n57, codeword[18], n54, n6, n52, n58, n49, n60, n51, 
        n62, n1, n2, n53, codeword[6], n46, n39, n47, codeword[2:0]}), 
        .codeword_width(codeword_width), .mul_result(s) );
  dec_is_column is_col ( .s(s), .codeword_width(codeword_width), .isCol(
        isSColInMat), .whatCol(whatColisS) );
  dec_comparator_DATA_DEPTH6_0 comp_to_zero ( .A({n19, s[4:2], n5, s[0]}), .B(
        {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .isEqual(does_s_equal_zero) );
  dec_output_ctrl_DATA_WIDTH32 output_ctrl ( .codeword({n61, n40, n55, n45, 
        n59, n56, codeword[25], n41, n3, n50, n48, n4, n57, codeword[18], n54, 
        n6, n52, n58, n49, n60, n51, n62, n1, n2, n53, codeword[6], n46, n39, 
        n47, codeword[2:0]}), .areThereErrors(n65), .isThereOneError(
        isSColInMat), .whichColIsError(whatColisS), .num_of_errors(
        num_of_errors), .data_out({temp_data_out[31:4], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3}) );
  BUFX8 U2 ( .A(codeword[14]), .Y(n58) );
  CLKBUFX8 U3 ( .A(codeword[9]), .Y(n1) );
  BUFX8 U4 ( .A(codeword[22]), .Y(n50) );
  CLKBUFX8 U5 ( .A(codeword[8]), .Y(n2) );
  DLY1X1 U6 ( .A(s[1]), .Y(n5) );
  BUFX20 U7 ( .A(codeword[23]), .Y(n3) );
  NOR2BX4 U8 ( .AN(temp_data_out[31]), .B(n24), .Y(data_out[25]) );
  INVX8 U9 ( .A(temp_data_out[9]), .Y(n14) );
  CLKINVX3 U10 ( .A(does_s_equal_zero), .Y(n66) );
  BUFX3 U11 ( .A(s[5]), .Y(n19) );
  BUFX16 U12 ( .A(codeword[7]), .Y(n53) );
  BUFX12 U13 ( .A(codeword[10]), .Y(n62) );
  BUFX8 U14 ( .A(codeword[13]), .Y(n49) );
  INVX1 U15 ( .A(n68), .Y(n67) );
  BUFX12 U16 ( .A(codeword[21]), .Y(n48) );
  CLKINVX3 U17 ( .A(n25), .Y(data_out[1]) );
  CLKINVX3 U19 ( .A(temp_data_out[10]), .Y(n43) );
  AND2X2 U20 ( .A(temp_data_out[17]), .B(n64), .Y(data_out[11]) );
  AND2X2 U21 ( .A(temp_data_out[18]), .B(n64), .Y(data_out[12]) );
  AND2X2 U22 ( .A(temp_data_out[20]), .B(n64), .Y(data_out[14]) );
  NOR2BX2 U23 ( .AN(temp_data_out[29]), .B(n24), .Y(data_out[23]) );
  NOR2BX2 U24 ( .AN(temp_data_out[30]), .B(n24), .Y(data_out[24]) );
  NOR2BX2 U25 ( .AN(temp_data_out[26]), .B(n24), .Y(data_out[20]) );
  INVX4 U26 ( .A(n16), .Y(data_out[8]) );
  NOR2BX2 U27 ( .AN(temp_data_out[27]), .B(n24), .Y(data_out[21]) );
  CLKINVX3 U28 ( .A(n30), .Y(n9) );
  AND2X2 U29 ( .A(temp_data_out[24]), .B(n64), .Y(data_out[18]) );
  BUFX12 U30 ( .A(codeword[5]), .Y(n46) );
  BUFX8 U31 ( .A(codeword[20]), .Y(n4) );
  BUFX20 U32 ( .A(codeword[16]), .Y(n6) );
  NAND2X4 U33 ( .A(n64), .B(temp_data_out[13]), .Y(n18) );
  INVX1 U34 ( .A(codeword_width[0]), .Y(n69) );
  AND3X2 U35 ( .A(codeword_width[0]), .B(n71), .C(n67), .Y(n15) );
  INVX1 U36 ( .A(n22), .Y(n12) );
  INVX1 U37 ( .A(n63), .Y(n31) );
  INVX1 U38 ( .A(n15), .Y(n8) );
  BUFX20 U39 ( .A(codeword[19]), .Y(n57) );
  CLKBUFX8 U40 ( .A(codeword[4]), .Y(n39) );
  BUFX4 U41 ( .A(codeword[17]), .Y(n54) );
  OAI2BB2X2 U42 ( .B0(n8), .B1(n14), .A0N(n64), .A1N(temp_data_out[10]), .Y(
        data_out[4]) );
  INVX8 U43 ( .A(temp_data_out[6]), .Y(n30) );
  AND2X4 U44 ( .A(temp_data_out[28]), .B(n10), .Y(data_out[22]) );
  CLKINVX20 U45 ( .A(n24), .Y(n10) );
  CLKINVX8 U46 ( .A(temp_data_out[8]), .Y(n32) );
  OAI222X2 U47 ( .A0(n32), .A1(n8), .B0(n12), .B1(n29), .C0(n14), .C1(n31), 
        .Y(data_out[3]) );
  INVX8 U48 ( .A(temp_data_out[7]), .Y(n29) );
  NAND2X4 U49 ( .A(n64), .B(temp_data_out[7]), .Y(n38) );
  AND2X4 U50 ( .A(temp_data_out[12]), .B(n64), .Y(n44) );
  OAI2BB1X4 U51 ( .A0N(n63), .A1N(n9), .B0(n27), .Y(data_out[0]) );
  NAND2BX4 U52 ( .AN(n35), .B(n18), .Y(data_out[7]) );
  NAND2BX4 U53 ( .AN(n8), .B(temp_data_out[6]), .Y(n36) );
  BUFX20 U54 ( .A(codeword[15]), .Y(n52) );
  NAND2BX4 U55 ( .AN(n44), .B(n21), .Y(data_out[6]) );
  NAND2X4 U56 ( .A(n15), .B(temp_data_out[11]), .Y(n21) );
  OAI2BB2X4 U57 ( .B0(n26), .B1(n31), .A0N(n15), .A1N(temp_data_out[15]), .Y(
        data_out[10]) );
  INVX8 U58 ( .A(temp_data_out[16]), .Y(n26) );
  OAI222X2 U59 ( .A0(n8), .A1(n29), .B0(n12), .B1(n30), .C0(n31), .C1(n32), 
        .Y(data_out[2]) );
  AND3X1 U60 ( .A(n70), .B(n71), .C(n67), .Y(n22) );
  AOI22X4 U61 ( .A0(temp_data_out[14]), .A1(n64), .B0(n15), .B1(
        temp_data_out[13]), .Y(n16) );
  BUFX20 U62 ( .A(codeword[11]), .Y(n51) );
  NAND2X4 U63 ( .A(temp_data_out[4]), .B(n22), .Y(n33) );
  NAND2X4 U64 ( .A(temp_data_out[5]), .B(n15), .Y(n34) );
  AND2X4 U65 ( .A(n33), .B(n34), .Y(n27) );
  AND2X4 U66 ( .A(temp_data_out[12]), .B(n15), .Y(n35) );
  NAND2X4 U67 ( .A(n22), .B(temp_data_out[5]), .Y(n37) );
  AND3X4 U68 ( .A(n36), .B(n37), .C(n38), .Y(n25) );
  BUFX16 U69 ( .A(codeword[30]), .Y(n40) );
  INVX8 U70 ( .A(n13), .Y(data_out[9]) );
  AOI22X4 U71 ( .A0(n64), .A1(temp_data_out[15]), .B0(n15), .B1(
        temp_data_out[14]), .Y(n13) );
  BUFX8 U72 ( .A(codeword[24]), .Y(n41) );
  OAI2BB2X4 U73 ( .B0(n8), .B1(n43), .A0N(n63), .A1N(temp_data_out[11]), .Y(
        data_out[5]) );
  CLKINVX8 U74 ( .A(n66), .Y(n65) );
  AND2X4 U75 ( .A(temp_data_out[21]), .B(n64), .Y(data_out[15]) );
  AND2X4 U76 ( .A(temp_data_out[22]), .B(n64), .Y(data_out[16]) );
  NAND3X2 U77 ( .A(n67), .B(n69), .C(codeword_width[1]), .Y(n24) );
  INVXL U78 ( .A(codeword_width[0]), .Y(n70) );
  INVXL U79 ( .A(codeword_width[1]), .Y(n71) );
  BUFX3 U80 ( .A(n63), .Y(n64) );
  AND2X1 U81 ( .A(n67), .B(codeword_width[1]), .Y(n63) );
  AND2X2 U82 ( .A(temp_data_out[23]), .B(n64), .Y(data_out[17]) );
  AND2X2 U83 ( .A(temp_data_out[19]), .B(n64), .Y(data_out[13]) );
  INVX1 U84 ( .A(enable), .Y(n68) );
  BUFX20 U85 ( .A(codeword[28]), .Y(n45) );
  BUFX20 U86 ( .A(codeword[3]), .Y(n47) );
  BUFX20 U87 ( .A(codeword[29]), .Y(n55) );
  BUFX16 U88 ( .A(codeword[26]), .Y(n56) );
  BUFX20 U89 ( .A(codeword[27]), .Y(n59) );
  BUFX20 U90 ( .A(codeword[12]), .Y(n60) );
  BUFX20 U91 ( .A(codeword[31]), .Y(n61) );
endmodule


module ECC_ENC_DEC ( clk, rst, paddr, pwdata, penable, psel, pwrite, prdata, 
        data_out, operation_done, num_of_errors );
  input [31:0] paddr;
  input [31:0] pwdata;
  output [31:0] prdata;
  output [31:0] data_out;
  output [1:0] num_of_errors;
  input clk, rst, penable, psel, pwrite;
  output operation_done;
  wire   regs_wr_en, enc_ena, dec_ena, dec_in_sel, data_out_sel, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n168;
  wire   [31:0] ctrl;
  wire   [31:0] data_in;
  wire   [31:0] codeword_width;
  wire   [31:0] noise;
  wire   [31:0] enc_data_out;
  wire   [31:0] dec_data_in;
  wire   [31:0] dec_data_out;
  wire   [31:0] enc_data_out_reg;
  wire   [31:0] dec_data_out_reg;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35;

  OAI2BB2X4 U5 ( .B0(n36), .B1(n102), .A0N(data_in[8]), .A1N(n101), .Y(
        dec_data_in[8]) );
  OAI2BB2X4 U9 ( .B0(n38), .B1(n107), .A0N(data_in[6]), .A1N(n101), .Y(
        dec_data_in[6]) );
  XNOR2X4 U16 ( .A(enc_data_out_reg[3]), .B(noise[3]), .Y(n41) );
  OAI2BB2X4 U17 ( .B0(n42), .B1(n110), .A0N(data_in[31]), .A1N(n99), .Y(
        dec_data_in[31]) );
  OAI2BB2X4 U21 ( .B0(n44), .B1(n110), .A0N(data_in[2]), .A1N(n109), .Y(
        dec_data_in[2]) );
  XNOR2X4 U22 ( .A(enc_data_out_reg[2]), .B(noise[2]), .Y(n44) );
  OAI2BB2X4 U31 ( .B0(n49), .B1(n111), .A0N(data_in[25]), .A1N(n109), .Y(
        dec_data_in[25]) );
  OAI2BB2X4 U41 ( .B0(n54), .B1(n111), .A0N(data_in[20]), .A1N(n109), .Y(
        dec_data_in[20]) );
  OAI2BB2X4 U45 ( .B0(n56), .B1(n111), .A0N(data_in[19]), .A1N(n104), .Y(
        dec_data_in[19]) );
  XNOR2X4 U46 ( .A(enc_data_out_reg[19]), .B(noise[19]), .Y(n56) );
  OAI2BB2X4 U51 ( .B0(n59), .B1(n104), .A0N(data_in[16]), .A1N(n108), .Y(
        dec_data_in[16]) );
  XNOR2X4 U62 ( .A(enc_data_out_reg[11]), .B(noise[11]), .Y(n64) );
  OAI2BB2X4 U65 ( .B0(n66), .B1(n111), .A0N(data_in[0]), .A1N(n100), .Y(
        dec_data_in[0]) );
  enc_dec_rgf_AMBA_ADDR_WIDTH32_AMBA_WORD32 u_enc_dec_rgf ( .clk(clk), .rstn(
        rst), .paddr(paddr), .pwdata(pwdata), .penable(penable), .psel(psel), 
        .pwrite(pwrite), .prdata(prdata), .regs_wr_en(regs_wr_en), .ctrl(ctrl), 
        .data_in(data_in), .codeword_width({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, codeword_width[1:0]}), .noise(noise) );
  enc_dec_ctrl_AMBA_ADDR_WIDTH32_AMBA_WORD32 u_enc_dec_ctrl ( .clk(clk), .rst(
        rst), .paddr(paddr), .regs_wr_en(regs_wr_en), .ctrl_reg(ctrl), 
        .enc_ena(enc_ena), .dec_ena(dec_ena), .dec_in_sel(dec_in_sel), 
        .data_out_sel(data_out_sel), .operation_done(operation_done) );
  encoder_DATA_WIDTH32 u_encoder ( .ena(enc_ena), .codeword_width({n134, 
        codeword_width[0]}), .data_in(data_in), .data_out(enc_data_out) );
  decoder_DATA_WIDTH32 u_decoder ( .codeword({dec_data_in[31:19], n105, 
        dec_data_in[17:0]}), .codeword_width(codeword_width[1:0]), .enable(
        n118), .num_of_errors(num_of_errors), .data_out({
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, dec_data_out[25:0]}) );
  DFFRHQXL \dec_data_out_reg_reg[9]  ( .D(dec_data_out[9]), .CK(clk), .RN(rst), 
        .Q(dec_data_out_reg[9]) );
  DFFRHQXL \dec_data_out_reg_reg[19]  ( .D(dec_data_out[19]), .CK(clk), .RN(
        rst), .Q(dec_data_out_reg[19]) );
  DFFRHQXL \dec_data_out_reg_reg[18]  ( .D(dec_data_out[18]), .CK(clk), .RN(
        rst), .Q(dec_data_out_reg[18]) );
  DFFRHQXL \dec_data_out_reg_reg[10]  ( .D(dec_data_out[10]), .CK(clk), .RN(
        rst), .Q(dec_data_out_reg[10]) );
  DFFRHQXL \dec_data_out_reg_reg[0]  ( .D(dec_data_out[0]), .CK(clk), .RN(rst), 
        .Q(dec_data_out_reg[0]) );
  DFFRHQXL \dec_data_out_reg_reg[21]  ( .D(dec_data_out[21]), .CK(clk), .RN(
        rst), .Q(dec_data_out_reg[21]) );
  DFFRHQXL \dec_data_out_reg_reg[25]  ( .D(dec_data_out[25]), .CK(clk), .RN(
        rst), .Q(dec_data_out_reg[25]) );
  DFFRHQXL \dec_data_out_reg_reg[7]  ( .D(dec_data_out[7]), .CK(clk), .RN(rst), 
        .Q(dec_data_out_reg[7]) );
  DFFRHQXL \dec_data_out_reg_reg[2]  ( .D(dec_data_out[2]), .CK(clk), .RN(rst), 
        .Q(dec_data_out_reg[2]) );
  DFFRHQXL \dec_data_out_reg_reg[8]  ( .D(dec_data_out[8]), .CK(clk), .RN(rst), 
        .Q(dec_data_out_reg[8]) );
  DFFRHQXL \dec_data_out_reg_reg[3]  ( .D(dec_data_out[3]), .CK(clk), .RN(rst), 
        .Q(dec_data_out_reg[3]) );
  DFFRHQXL \dec_data_out_reg_reg[20]  ( .D(dec_data_out[20]), .CK(clk), .RN(
        rst), .Q(dec_data_out_reg[20]) );
  DFFRHQXL \dec_data_out_reg_reg[24]  ( .D(dec_data_out[24]), .CK(clk), .RN(
        rst), .Q(dec_data_out_reg[24]) );
  DFFRHQXL \dec_data_out_reg_reg[23]  ( .D(dec_data_out[23]), .CK(clk), .RN(
        rst), .Q(dec_data_out_reg[23]) );
  DFFRHQXL \dec_data_out_reg_reg[22]  ( .D(dec_data_out[22]), .CK(clk), .RN(
        rst), .Q(dec_data_out_reg[22]) );
  DFFRHQXL \dec_data_out_reg_reg[17]  ( .D(dec_data_out[17]), .CK(clk), .RN(
        rst), .Q(dec_data_out_reg[17]) );
  DFFRHQXL \dec_data_out_reg_reg[16]  ( .D(dec_data_out[16]), .CK(clk), .RN(
        rst), .Q(dec_data_out_reg[16]) );
  DFFRHQXL \dec_data_out_reg_reg[15]  ( .D(dec_data_out[15]), .CK(clk), .RN(
        rst), .Q(dec_data_out_reg[15]) );
  DFFRHQXL \dec_data_out_reg_reg[14]  ( .D(dec_data_out[14]), .CK(clk), .RN(
        rst), .Q(dec_data_out_reg[14]) );
  DFFRHQXL \dec_data_out_reg_reg[13]  ( .D(dec_data_out[13]), .CK(clk), .RN(
        rst), .Q(dec_data_out_reg[13]) );
  DFFRHQXL \dec_data_out_reg_reg[12]  ( .D(dec_data_out[12]), .CK(clk), .RN(
        rst), .Q(dec_data_out_reg[12]) );
  DFFRHQXL \dec_data_out_reg_reg[11]  ( .D(dec_data_out[11]), .CK(clk), .RN(
        rst), .Q(dec_data_out_reg[11]) );
  DFFRHQXL \dec_data_out_reg_reg[6]  ( .D(dec_data_out[6]), .CK(clk), .RN(rst), 
        .Q(dec_data_out_reg[6]) );
  DFFRHQXL \dec_data_out_reg_reg[5]  ( .D(dec_data_out[5]), .CK(clk), .RN(rst), 
        .Q(dec_data_out_reg[5]) );
  DFFRHQXL \dec_data_out_reg_reg[4]  ( .D(dec_data_out[4]), .CK(clk), .RN(rst), 
        .Q(dec_data_out_reg[4]) );
  DFFRHQX1 \enc_data_out_reg_reg[17]  ( .D(enc_data_out[17]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[17]) );
  DFFRHQX1 \enc_data_out_reg_reg[9]  ( .D(enc_data_out[9]), .CK(clk), .RN(rst), 
        .Q(enc_data_out_reg[9]) );
  DFFRXL \dec_data_out_reg_reg[1]  ( .D(dec_data_out[1]), .CK(clk), .RN(rst), 
        .Q(n103) );
  DFFRHQX1 \enc_data_out_reg_reg[31]  ( .D(enc_data_out[31]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[31]) );
  DFFRHQX1 \enc_data_out_reg_reg[29]  ( .D(enc_data_out[29]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[29]) );
  DFFRHQX1 \enc_data_out_reg_reg[28]  ( .D(enc_data_out[28]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[28]) );
  DFFRHQX1 \enc_data_out_reg_reg[27]  ( .D(enc_data_out[27]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[27]) );
  DFFRHQX1 \enc_data_out_reg_reg[16]  ( .D(enc_data_out[16]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[16]) );
  DFFRHQX1 \enc_data_out_reg_reg[15]  ( .D(enc_data_out[15]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[15]) );
  DFFRHQX1 \enc_data_out_reg_reg[14]  ( .D(enc_data_out[14]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[14]) );
  DFFRHQX1 \enc_data_out_reg_reg[13]  ( .D(enc_data_out[13]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[13]) );
  DFFRHQX1 \enc_data_out_reg_reg[12]  ( .D(enc_data_out[12]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[12]) );
  DFFRHQX1 \enc_data_out_reg_reg[11]  ( .D(enc_data_out[11]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[11]) );
  DFFRHQX1 \enc_data_out_reg_reg[10]  ( .D(enc_data_out[10]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[10]) );
  DFFRHQX1 \enc_data_out_reg_reg[6]  ( .D(enc_data_out[6]), .CK(clk), .RN(rst), 
        .Q(enc_data_out_reg[6]) );
  DFFRHQX1 \enc_data_out_reg_reg[5]  ( .D(enc_data_out[5]), .CK(clk), .RN(rst), 
        .Q(enc_data_out_reg[5]) );
  DFFRHQX1 \enc_data_out_reg_reg[4]  ( .D(enc_data_out[4]), .CK(clk), .RN(rst), 
        .Q(enc_data_out_reg[4]) );
  DFFRHQX1 \enc_data_out_reg_reg[3]  ( .D(enc_data_out[3]), .CK(clk), .RN(rst), 
        .Q(enc_data_out_reg[3]) );
  DFFRHQX1 \enc_data_out_reg_reg[2]  ( .D(enc_data_out[2]), .CK(clk), .RN(rst), 
        .Q(enc_data_out_reg[2]) );
  DFFRHQX1 \enc_data_out_reg_reg[0]  ( .D(enc_data_out[0]), .CK(clk), .RN(rst), 
        .Q(enc_data_out_reg[0]) );
  DFFRHQX1 \enc_data_out_reg_reg[18]  ( .D(enc_data_out[18]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[18]) );
  DFFRHQX1 \enc_data_out_reg_reg[25]  ( .D(enc_data_out[25]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[25]) );
  DFFRHQX1 \enc_data_out_reg_reg[1]  ( .D(enc_data_out[1]), .CK(clk), .RN(rst), 
        .Q(enc_data_out_reg[1]) );
  DFFRHQX1 \enc_data_out_reg_reg[24]  ( .D(enc_data_out[24]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[24]) );
  DFFRHQX1 \enc_data_out_reg_reg[19]  ( .D(enc_data_out[19]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[19]) );
  DFFRHQX1 \enc_data_out_reg_reg[7]  ( .D(enc_data_out[7]), .CK(clk), .RN(rst), 
        .Q(enc_data_out_reg[7]) );
  DFFRHQX1 \enc_data_out_reg_reg[20]  ( .D(enc_data_out[20]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[20]) );
  DFFRHQX1 \enc_data_out_reg_reg[26]  ( .D(enc_data_out[26]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[26]) );
  DFFRHQX1 \enc_data_out_reg_reg[30]  ( .D(enc_data_out[30]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[30]) );
  DFFRHQX2 \enc_data_out_reg_reg[23]  ( .D(enc_data_out[23]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[23]) );
  DFFRHQX2 \enc_data_out_reg_reg[8]  ( .D(enc_data_out[8]), .CK(clk), .RN(rst), 
        .Q(enc_data_out_reg[8]) );
  DFFRHQX2 \enc_data_out_reg_reg[21]  ( .D(enc_data_out[21]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[21]) );
  DFFRHQX2 \enc_data_out_reg_reg[22]  ( .D(enc_data_out[22]), .CK(clk), .RN(
        rst), .Q(enc_data_out_reg[22]) );
  AOI22XL U133 ( .A0(n121), .A1(enc_data_out_reg[26]), .B0(1'b0), .B1(n124), 
        .Y(n80) );
  AOI22XL U134 ( .A0(n121), .A1(enc_data_out_reg[27]), .B0(1'b0), .B1(n124), 
        .Y(n79) );
  AOI22XL U135 ( .A0(n121), .A1(enc_data_out_reg[28]), .B0(1'b0), .B1(n118), 
        .Y(n78) );
  AOI22XL U136 ( .A0(n121), .A1(enc_data_out_reg[29]), .B0(1'b0), .B1(dec_ena), 
        .Y(n77) );
  AOI22XL U137 ( .A0(n121), .A1(enc_data_out_reg[30]), .B0(1'b0), .B1(n123), 
        .Y(n75) );
  AOI22XL U138 ( .A0(n120), .A1(enc_data_out_reg[31]), .B0(1'b0), .B1(n123), 
        .Y(n74) );
  XNOR2X2 U139 ( .A(enc_data_out_reg[10]), .B(noise[10]), .Y(n65) );
  OAI2BB2X2 U140 ( .B0(n35), .B1(n104), .A0N(data_in[9]), .A1N(n100), .Y(
        dec_data_in[9]) );
  CLKINVX8 U141 ( .A(n168), .Y(n117) );
  INVX20 U142 ( .A(dec_in_sel), .Y(n168) );
  OAI2BB2X4 U143 ( .B0(n62), .B1(n104), .A0N(data_in[13]), .A1N(n109), .Y(
        dec_data_in[13]) );
  CLKBUFX20 U144 ( .A(n113), .Y(n108) );
  OAI2BB2X2 U145 ( .B0(n51), .B1(n111), .A0N(data_in[23]), .A1N(n109), .Y(
        dec_data_in[23]) );
  XNOR2X1 U146 ( .A(enc_data_out_reg[15]), .B(noise[15]), .Y(n60) );
  XNOR2X2 U147 ( .A(enc_data_out_reg[1]), .B(noise[1]), .Y(n55) );
  BUFX20 U148 ( .A(n114), .Y(n100) );
  XNOR2X2 U149 ( .A(enc_data_out_reg[12]), .B(noise[12]), .Y(n63) );
  XNOR2X2 U150 ( .A(enc_data_out_reg[17]), .B(noise[17]), .Y(n58) );
  XNOR2X2 U151 ( .A(enc_data_out_reg[18]), .B(noise[18]), .Y(n57) );
  XNOR2X2 U152 ( .A(enc_data_out_reg[20]), .B(noise[20]), .Y(n54) );
  XNOR2X2 U153 ( .A(enc_data_out_reg[28]), .B(noise[28]), .Y(n46) );
  XNOR2X2 U154 ( .A(enc_data_out_reg[29]), .B(noise[29]), .Y(n45) );
  XNOR2X2 U155 ( .A(enc_data_out_reg[30]), .B(noise[30]), .Y(n43) );
  XNOR2X2 U156 ( .A(enc_data_out_reg[26]), .B(noise[26]), .Y(n48) );
  XNOR2X2 U157 ( .A(enc_data_out_reg[31]), .B(noise[31]), .Y(n42) );
  XNOR2X2 U158 ( .A(enc_data_out_reg[27]), .B(noise[27]), .Y(n47) );
  XNOR2X1 U159 ( .A(enc_data_out_reg[5]), .B(noise[5]), .Y(n39) );
  XNOR2X1 U160 ( .A(enc_data_out_reg[7]), .B(noise[7]), .Y(n37) );
  XNOR2X2 U161 ( .A(enc_data_out_reg[6]), .B(noise[6]), .Y(n38) );
  XNOR2X1 U162 ( .A(enc_data_out_reg[8]), .B(noise[8]), .Y(n36) );
  XNOR2X1 U163 ( .A(enc_data_out_reg[13]), .B(noise[13]), .Y(n62) );
  XNOR2X1 U164 ( .A(enc_data_out_reg[4]), .B(noise[4]), .Y(n40) );
  XNOR2X2 U165 ( .A(enc_data_out_reg[14]), .B(noise[14]), .Y(n61) );
  INVX1 U166 ( .A(codeword_width[1]), .Y(n135) );
  XNOR2X1 U167 ( .A(enc_data_out_reg[0]), .B(noise[0]), .Y(n66) );
  XNOR2X1 U168 ( .A(enc_data_out_reg[22]), .B(noise[22]), .Y(n52) );
  XNOR2X2 U169 ( .A(enc_data_out_reg[16]), .B(noise[16]), .Y(n59) );
  XNOR2X1 U170 ( .A(enc_data_out_reg[25]), .B(noise[25]), .Y(n49) );
  INVX8 U171 ( .A(n106), .Y(n114) );
  INVX8 U172 ( .A(n106), .Y(n110) );
  BUFX12 U173 ( .A(n114), .Y(n101) );
  OAI2BB2X2 U174 ( .B0(n46), .B1(n110), .A0N(data_in[28]), .A1N(n109), .Y(
        dec_data_in[28]) );
  BUFX20 U175 ( .A(n114), .Y(n99) );
  OAI2BB2XL U176 ( .B0(n52), .B1(n104), .A0N(data_in[22]), .A1N(n104), .Y(
        dec_data_in[22]) );
  INVX4 U177 ( .A(n168), .Y(n115) );
  CLKBUFX16 U178 ( .A(n113), .Y(n109) );
  INVX8 U179 ( .A(n168), .Y(n106) );
  XNOR2X2 U180 ( .A(enc_data_out_reg[9]), .B(noise[9]), .Y(n35) );
  OAI2BB2X1 U181 ( .B0(n40), .B1(n110), .A0N(n101), .A1N(data_in[4]), .Y(
        dec_data_in[4]) );
  INVX8 U182 ( .A(n115), .Y(n113) );
  OAI2BB2X2 U183 ( .B0(n39), .B1(n110), .A0N(data_in[5]), .A1N(n101), .Y(
        dec_data_in[5]) );
  OAI2BB2X2 U184 ( .B0(n58), .B1(n112), .A0N(data_in[17]), .A1N(n111), .Y(
        dec_data_in[17]) );
  INVX8 U185 ( .A(n117), .Y(n102) );
  CLKINVX8 U186 ( .A(n168), .Y(n116) );
  INVX20 U187 ( .A(n116), .Y(n104) );
  OAI2BB2X4 U188 ( .B0(n43), .B1(n102), .A0N(data_in[30]), .A1N(n109), .Y(
        dec_data_in[30]) );
  XNOR2X1 U189 ( .A(enc_data_out_reg[23]), .B(noise[23]), .Y(n51) );
  INVX8 U190 ( .A(n117), .Y(n107) );
  OAI2BB2XL U191 ( .B0(n50), .B1(n104), .A0N(data_in[24]), .A1N(n109), .Y(
        dec_data_in[24]) );
  OAI2BB2XL U192 ( .B0(n57), .B1(n104), .A0N(data_in[18]), .A1N(n109), .Y(
        dec_data_in[18]) );
  INVX8 U193 ( .A(n117), .Y(n112) );
  OAI2BB2X4 U194 ( .B0(n64), .B1(n108), .A0N(data_in[11]), .A1N(n100), .Y(
        dec_data_in[11]) );
  OAI2BB2X4 U195 ( .B0(n53), .B1(n111), .A0N(data_in[21]), .A1N(n111), .Y(
        dec_data_in[21]) );
  XNOR2X1 U196 ( .A(enc_data_out_reg[21]), .B(noise[21]), .Y(n53) );
  INVX20 U197 ( .A(n116), .Y(n111) );
  OAI2BB2X4 U198 ( .B0(n60), .B1(n112), .A0N(data_in[15]), .A1N(n109), .Y(
        dec_data_in[15]) );
  OAI2BB2X4 U199 ( .B0(n37), .B1(n109), .A0N(data_in[7]), .A1N(n100), .Y(
        dec_data_in[7]) );
  BUFX8 U200 ( .A(dec_data_in[18]), .Y(n105) );
  OAI2BB2X4 U201 ( .B0(n48), .B1(n104), .A0N(data_in[26]), .A1N(n107), .Y(
        dec_data_in[26]) );
  AOI22XL U202 ( .A0(n120), .A1(enc_data_out_reg[0]), .B0(dec_data_out_reg[0]), 
        .B1(n122), .Y(n98) );
  AOI22XL U203 ( .A0(n120), .A1(enc_data_out_reg[10]), .B0(
        dec_data_out_reg[10]), .B1(n123), .Y(n97) );
  AOI22XL U204 ( .A0(n120), .A1(enc_data_out_reg[11]), .B0(
        dec_data_out_reg[11]), .B1(n127), .Y(n96) );
  AOI22XL U205 ( .A0(n120), .A1(enc_data_out_reg[12]), .B0(
        dec_data_out_reg[12]), .B1(n127), .Y(n95) );
  AOI22XL U206 ( .A0(n120), .A1(enc_data_out_reg[13]), .B0(
        dec_data_out_reg[13]), .B1(n126), .Y(n94) );
  AOI22XL U207 ( .A0(n120), .A1(enc_data_out_reg[14]), .B0(
        dec_data_out_reg[14]), .B1(n126), .Y(n93) );
  AOI22XL U208 ( .A0(n120), .A1(enc_data_out_reg[15]), .B0(
        dec_data_out_reg[15]), .B1(n127), .Y(n92) );
  AOI22XL U209 ( .A0(n131), .A1(enc_data_out_reg[4]), .B0(dec_data_out_reg[4]), 
        .B1(n126), .Y(n72) );
  AOI22XL U210 ( .A0(n130), .A1(enc_data_out_reg[6]), .B0(dec_data_out_reg[6]), 
        .B1(n122), .Y(n70) );
  CLKINVX3 U211 ( .A(n128), .Y(n120) );
  CLKINVX3 U212 ( .A(n128), .Y(n121) );
  INVX1 U213 ( .A(n130), .Y(n125) );
  INVX1 U214 ( .A(n129), .Y(n128) );
  INVX1 U215 ( .A(n130), .Y(n122) );
  INVX1 U216 ( .A(n131), .Y(n127) );
  INVX1 U217 ( .A(n130), .Y(n126) );
  INVX1 U218 ( .A(n131), .Y(n124) );
  INVX1 U219 ( .A(n131), .Y(n123) );
  INVX1 U220 ( .A(data_out_sel), .Y(n129) );
  INVX1 U221 ( .A(n132), .Y(n130) );
  INVX1 U222 ( .A(n132), .Y(n131) );
  INVX1 U223 ( .A(n133), .Y(n132) );
  INVX1 U224 ( .A(n135), .Y(n134) );
  INVX1 U225 ( .A(data_out_sel), .Y(n133) );
  INVX1 U226 ( .A(n119), .Y(n118) );
  INVX1 U227 ( .A(dec_ena), .Y(n119) );
  XNOR2X2 U228 ( .A(enc_data_out_reg[24]), .B(noise[24]), .Y(n50) );
  INVX1 U229 ( .A(n86), .Y(data_out[20]) );
  INVX1 U230 ( .A(n98), .Y(data_out[0]) );
  INVX1 U231 ( .A(n87), .Y(data_out[1]) );
  AOI22XL U232 ( .A0(n120), .A1(enc_data_out_reg[1]), .B0(n103), .B1(n125), 
        .Y(n87) );
  INVX1 U233 ( .A(n76), .Y(data_out[2]) );
  AOI22XL U234 ( .A0(n121), .A1(enc_data_out_reg[2]), .B0(dec_data_out_reg[2]), 
        .B1(n123), .Y(n76) );
  INVX1 U235 ( .A(n97), .Y(data_out[10]) );
  INVX1 U236 ( .A(n89), .Y(data_out[18]) );
  AOI22XL U237 ( .A0(n120), .A1(enc_data_out_reg[18]), .B0(
        dec_data_out_reg[18]), .B1(n125), .Y(n89) );
  INVX1 U238 ( .A(n88), .Y(data_out[19]) );
  AOI22XL U239 ( .A0(n120), .A1(enc_data_out_reg[19]), .B0(
        dec_data_out_reg[19]), .B1(n127), .Y(n88) );
  INVX1 U240 ( .A(n85), .Y(data_out[21]) );
  AOI22XL U241 ( .A0(n121), .A1(enc_data_out_reg[21]), .B0(
        dec_data_out_reg[21]), .B1(n125), .Y(n85) );
  INVX1 U242 ( .A(n81), .Y(data_out[25]) );
  AOI22XL U243 ( .A0(n121), .A1(enc_data_out_reg[25]), .B0(
        dec_data_out_reg[25]), .B1(n127), .Y(n81) );
  INVX1 U244 ( .A(n96), .Y(data_out[11]) );
  INVX1 U245 ( .A(n95), .Y(data_out[12]) );
  INVX1 U246 ( .A(n94), .Y(data_out[13]) );
  INVX1 U247 ( .A(n93), .Y(data_out[14]) );
  INVX1 U248 ( .A(n92), .Y(data_out[15]) );
  INVX1 U249 ( .A(n91), .Y(data_out[16]) );
  AOI22XL U250 ( .A0(n120), .A1(enc_data_out_reg[16]), .B0(
        dec_data_out_reg[16]), .B1(n126), .Y(n91) );
  INVX1 U251 ( .A(n90), .Y(data_out[17]) );
  AOI22XL U252 ( .A0(n120), .A1(enc_data_out_reg[17]), .B0(
        dec_data_out_reg[17]), .B1(n125), .Y(n90) );
  INVX1 U253 ( .A(n84), .Y(data_out[22]) );
  AOI22XL U254 ( .A0(n121), .A1(enc_data_out_reg[22]), .B0(
        dec_data_out_reg[22]), .B1(n124), .Y(n84) );
  INVX1 U255 ( .A(n83), .Y(data_out[23]) );
  AOI22XL U256 ( .A0(n121), .A1(enc_data_out_reg[23]), .B0(
        dec_data_out_reg[23]), .B1(n124), .Y(n83) );
  INVX1 U257 ( .A(n82), .Y(data_out[24]) );
  AOI22XL U258 ( .A0(n121), .A1(enc_data_out_reg[24]), .B0(
        dec_data_out_reg[24]), .B1(n126), .Y(n82) );
  INVX1 U259 ( .A(n80), .Y(data_out[26]) );
  INVX1 U260 ( .A(n79), .Y(data_out[27]) );
  INVX1 U261 ( .A(n78), .Y(data_out[28]) );
  INVX1 U262 ( .A(n77), .Y(data_out[29]) );
  INVX1 U263 ( .A(n75), .Y(data_out[30]) );
  INVX1 U264 ( .A(n73), .Y(data_out[3]) );
  AOI22XL U265 ( .A0(n131), .A1(enc_data_out_reg[3]), .B0(dec_data_out_reg[3]), 
        .B1(n123), .Y(n73) );
  INVX1 U266 ( .A(n69), .Y(data_out[7]) );
  AOI22XL U267 ( .A0(n130), .A1(enc_data_out_reg[7]), .B0(dec_data_out_reg[7]), 
        .B1(n122), .Y(n69) );
  INVX1 U268 ( .A(n68), .Y(data_out[8]) );
  AOI22XL U269 ( .A0(n120), .A1(enc_data_out_reg[8]), .B0(dec_data_out_reg[8]), 
        .B1(n122), .Y(n68) );
  INVX1 U270 ( .A(n67), .Y(data_out[9]) );
  AOI22XL U271 ( .A0(n121), .A1(enc_data_out_reg[9]), .B0(dec_data_out_reg[9]), 
        .B1(n122), .Y(n67) );
  INVX1 U272 ( .A(n72), .Y(data_out[4]) );
  INVX1 U273 ( .A(n71), .Y(data_out[5]) );
  AOI22XL U274 ( .A0(n129), .A1(enc_data_out_reg[5]), .B0(dec_data_out_reg[5]), 
        .B1(n124), .Y(n71) );
  INVX1 U275 ( .A(n70), .Y(data_out[6]) );
  INVX1 U276 ( .A(n74), .Y(data_out[31]) );
  AOI22X1 U277 ( .A0(n121), .A1(enc_data_out_reg[20]), .B0(
        dec_data_out_reg[20]), .B1(n125), .Y(n86) );
  OAI2BB2X4 U284 ( .B0(n61), .B1(n107), .A0N(data_in[14]), .A1N(n108), .Y(
        dec_data_in[14]) );
  OAI2BB2X4 U285 ( .B0(n65), .B1(n112), .A0N(data_in[10]), .A1N(n100), .Y(
        dec_data_in[10]) );
  OAI2BB2X2 U286 ( .B0(n41), .B1(n110), .A0N(n99), .A1N(data_in[3]), .Y(
        dec_data_in[3]) );
  OAI2BB2X4 U287 ( .B0(n45), .B1(n102), .A0N(data_in[29]), .A1N(n108), .Y(
        dec_data_in[29]) );
  OAI2BB2X4 U288 ( .B0(n47), .B1(n102), .A0N(data_in[27]), .A1N(n108), .Y(
        dec_data_in[27]) );
  OAI2BB2X2 U289 ( .B0(n63), .B1(n112), .A0N(data_in[12]), .A1N(n101), .Y(
        dec_data_in[12]) );
  OAI2BB2X4 U290 ( .B0(n55), .B1(n111), .A0N(data_in[1]), .A1N(n112), .Y(
        dec_data_in[1]) );
endmodule

