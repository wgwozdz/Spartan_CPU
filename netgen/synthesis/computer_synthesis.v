////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.49d
//  \   \         Application: netgen
//  /   /         Filename: computer_synthesis.v
// /___/   /\     Timestamp: Mon Nov 10 18:35:36 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim computer.ngc computer_synthesis.v 
// Device	: xc3s500e-4-fg320
// Input file	: computer.ngc
// Output file	: C:\Users\Public\Documents\FPGA\CPU\netgen\synthesis\computer_synthesis.v
// # of Modules	: 1
// Design Name	: computer
// Xilinx        : C:\Xilinx\14.4\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module computer (
  clk, led
);
  input clk;
  output [7 : 0] led;
  wire N0;
  wire N1;
  wire N10;
  wire N112;
  wire N121;
  wire N20;
  wire N21;
  wire N22;
  wire N23;
  wire N24;
  wire clk_BUFGP_11;
  wire \mem/mem_127_0_68 ;
  wire \mem/mem_127_1_69 ;
  wire \mem/mem_127_10_70 ;
  wire \mem/mem_127_11_71 ;
  wire \mem/mem_127_12_72 ;
  wire \mem/mem_127_13_73 ;
  wire \mem/mem_127_14_74 ;
  wire \mem/mem_127_15_75 ;
  wire \mem/mem_127_2_76 ;
  wire \mem/mem_127_3_77 ;
  wire \mem/mem_127_4_78 ;
  wire \mem/mem_127_5_79 ;
  wire \mem/mem_127_6_80 ;
  wire \mem/mem_127_7_81 ;
  wire \mem/mem_127_8_82 ;
  wire \mem/mem_127_9_83 ;
  wire \mem/mux16_10_f53 ;
  wire \mem/mux16_114_85 ;
  wire \mem/mux16_11_f61 ;
  wire \mem/mux16_12_f56 ;
  wire \mem/mux16_13_f51 ;
  wire \mem/mux16_13_f5_0_rt_89 ;
  wire \mem/mux16_147 ;
  wire \mem/mux16_3_91 ;
  wire \mem/mux16_4_92 ;
  wire \mem/mux16_9_f62 ;
  wire \mem/mux17_10_f53 ;
  wire \mem/mux17_114_95 ;
  wire \mem/mux17_11_f61 ;
  wire \mem/mux17_12_f56 ;
  wire \mem/mux17_12_f5_5_98 ;
  wire \mem/mux17_13_f51 ;
  wire \mem/mux17_13_f5_0_100 ;
  wire \mem/mux17_3_101 ;
  wire \mem/mux17_4_102 ;
  wire \mem/mux17_9_f62 ;
  wire \mem/mux18_10_f53 ;
  wire \mem/mux18_114_105 ;
  wire \mem/mux18_11_f61 ;
  wire \mem/mux18_12_f56 ;
  wire \mem/mux18_12_f5_5_108 ;
  wire \mem/mux18_3_109 ;
  wire \mem/mux18_4_110 ;
  wire \mem/mux18_9_f62 ;
  wire \mem/mux19_10_f53 ;
  wire \mem/mux19_114_113 ;
  wire \mem/mux19_11_f61 ;
  wire \mem/mux19_12_f56 ;
  wire \mem/mux19_12_f5_5_116 ;
  wire \mem/mux19_13_f51 ;
  wire \mem/mux19_13_f5_0_118 ;
  wire \mem/mux19_3_119 ;
  wire \mem/mux19_4_120 ;
  wire \mem/mux19_9_f62 ;
  wire \mem/mux20_10_f53 ;
  wire \mem/mux20_114_123 ;
  wire \mem/mux20_11_f61 ;
  wire \mem/mux20_12_f56 ;
  wire \mem/mux20_12_f5_5_126 ;
  wire \mem/mux20_3_127 ;
  wire \mem/mux20_4_128 ;
  wire \mem/mux20_9_f62 ;
  wire \mem/mux21_10_f53 ;
  wire \mem/mux21_114_131 ;
  wire \mem/mux21_11_f61 ;
  wire \mem/mux21_12_f56 ;
  wire \mem/mux21_12_f5_5_134 ;
  wire \mem/mux21_13_f51 ;
  wire \mem/mux21_13_f5_0_136 ;
  wire \mem/mux21_3_137 ;
  wire \mem/mux21_4_138 ;
  wire \mem/mux21_9_f62 ;
  wire \mem/mux22_10_f53 ;
  wire \mem/mux22_114_141 ;
  wire \mem/mux22_11_f61 ;
  wire \mem/mux22_12_f56 ;
  wire \mem/mux22_12_f5_5_144 ;
  wire \mem/mux22_3_145 ;
  wire \mem/mux22_4_146 ;
  wire \mem/mux22_9_f62 ;
  wire \mem/mux23_10_f53 ;
  wire \mem/mux23_114_149 ;
  wire \mem/mux23_11_f61 ;
  wire \mem/mux23_12_f56 ;
  wire \mem/mux23_12_f5_5_152 ;
  wire \mem/mux23_3_153 ;
  wire \mem/mux23_4_154 ;
  wire \mem/mux23_9_f62 ;
  wire \mem/mux24_10_f53 ;
  wire \mem/mux24_114_157 ;
  wire \mem/mux24_11_f61 ;
  wire \mem/mux24_12_f56 ;
  wire \mem/mux24_12_f5_5_160 ;
  wire \mem/mux24_13_f51 ;
  wire \mem/mux24_13_f5_0_rt_162 ;
  wire \mem/mux24_3_163 ;
  wire \mem/mux24_4_164 ;
  wire \mem/mux24_9_f62 ;
  wire \mem/mux25_10_f53 ;
  wire \mem/mux25_114_167 ;
  wire \mem/mux25_11_f61 ;
  wire \mem/mux25_12_f56 ;
  wire \mem/mux25_12_f5_5_170 ;
  wire \mem/mux25_3_171 ;
  wire \mem/mux25_4_172 ;
  wire \mem/mux25_9_f62 ;
  wire \mem/mux26_10_f53 ;
  wire \mem/mux26_114_175 ;
  wire \mem/mux26_11_f61 ;
  wire \mem/mux26_12_f56 ;
  wire \mem/mux26_12_f5_5_178 ;
  wire \mem/mux26_13_f51 ;
  wire \mem/mux26_13_f5_0_180 ;
  wire \mem/mux26_13_f5_01 ;
  wire \mem/mux26_3_182 ;
  wire \mem/mux26_4_183 ;
  wire \mem/mux26_9_f62 ;
  wire \mem/mux27_10_f53 ;
  wire \mem/mux27_114_186 ;
  wire \mem/mux27_11_f61 ;
  wire \mem/mux27_12_f56 ;
  wire \mem/mux27_12_f5_5_189 ;
  wire \mem/mux27_13_f51 ;
  wire \mem/mux27_13_f5_0_rt_191 ;
  wire \mem/mux27_3_192 ;
  wire \mem/mux27_4_193 ;
  wire \mem/mux27_9_f62 ;
  wire \mem/mux28_10_f53 ;
  wire \mem/mux28_114_196 ;
  wire \mem/mux28_3_197 ;
  wire \mem/mux28_9_f62 ;
  wire \mem/mux29_10_f53 ;
  wire \mem/mux29_114_200 ;
  wire \mem/mux29_11_f61 ;
  wire \mem/mux29_13_f51 ;
  wire \mem/mux29_13_f5_0_rt_203 ;
  wire \mem/mux29_3_204 ;
  wire \mem/mux29_4_205 ;
  wire \mem/mux29_9_f62 ;
  wire \mem/mux30_10_f53 ;
  wire \mem/mux30_114_208 ;
  wire \mem/mux30_11_f61 ;
  wire \mem/mux30_12_f56 ;
  wire \mem/mux30_12_f5_5_211 ;
  wire \mem/mux30_13_f51 ;
  wire \mem/mux30_13_f5_0_213 ;
  wire \mem/mux30_3_214 ;
  wire \mem/mux30_4_215 ;
  wire \mem/mux30_9_f62 ;
  wire \mem/mux31_10_f53 ;
  wire \mem/mux31_114_218 ;
  wire \mem/mux31_11_f61 ;
  wire \mem/mux31_12_f56 ;
  wire \mem/mux31_12_f5_5_221 ;
  wire \mem/mux31_3_222 ;
  wire \mem/mux31_4_223 ;
  wire \mem/mux31_9_f62 ;
  wire \uut/comparator/flags_0_mux0000 ;
  wire \uut/comparator/flags_1_mux0000 ;
  wire \uut/comparator/flags_2_mux0000 ;
  wire \uut/comparator/flags_3_mux0000 ;
  wire \uut/control_unit/cmp_load_293 ;
  wire \uut/control_unit/cmp_load_mux0000 ;
  wire \uut/control_unit/cmp_load_mux00001_295 ;
  wire \uut/control_unit/flags_pass_296 ;
  wire \uut/control_unit/flags_pass_mux000016 ;
  wire \uut/control_unit/flags_pass_mux000027_298 ;
  wire \uut/control_unit/flags_pass_mux000039_299 ;
  wire \uut/control_unit/flags_pass_mux00004 ;
  wire \uut/control_unit/flags_pass_mux00005_301 ;
  wire \uut/control_unit/i_bus_pass_302 ;
  wire \uut/control_unit/i_bus_pass_mux000027_303 ;
  wire \uut/control_unit/i_bus_pass_mux000039_304 ;
  wire \uut/control_unit/i_bus_pass_mux00005_305 ;
  wire \uut/control_unit/instruction_not0001_inv ;
  wire \uut/control_unit/mem_write_323 ;
  wire \uut/control_unit/mem_write_mux0000 ;
  wire \uut/control_unit/mem_write_mux00001_325 ;
  wire \uut/control_unit/next_step_cmp_eq0011 ;
  wire \uut/control_unit/next_step_mux0000<0>1 ;
  wire \uut/control_unit/next_step_mux0000<1>21_332 ;
  wire \uut/control_unit/next_step_mux0000<1>25_333 ;
  wire \uut/control_unit/next_step_mux0000<1>34 ;
  wire \uut/control_unit/next_step_mux0000<1>7_335 ;
  wire \uut/control_unit/next_step_mux0000<2>11_337 ;
  wire \uut/control_unit/next_step_mux0000<2>18_338 ;
  wire \uut/control_unit/next_step_mux0000<2>30_339 ;
  wire \uut/control_unit/next_step_mux0000<3>0 ;
  wire \uut/control_unit/next_step_mux0000<3>14_341 ;
  wire \uut/control_unit/next_step_mux0000<3>33 ;
  wire \uut/control_unit/next_step_or0005 ;
  wire \uut/control_unit/pc_increment_344 ;
  wire \uut/control_unit/pc_increment_mux000059 ;
  wire \uut/control_unit/pc_increment_mux0000591 ;
  wire \uut/control_unit/reg1_addr_not0001 ;
  wire \uut/control_unit/reg1_read_352 ;
  wire \uut/control_unit/reg1_read_cmp_eq0001 ;
  wire \uut/control_unit/reg1_read_cmp_eq0002 ;
  wire \uut/control_unit/reg1_read_mux0000 ;
  wire \uut/control_unit/reg1_read_mux00005_356 ;
  wire \uut/control_unit/reg3_addr_and0000 ;
  wire \uut/control_unit/reg3_addr_not0001 ;
  wire \uut/control_unit/reg3_write_367 ;
  wire \uut/control_unit/reg3_write_cmp_eq0000 ;
  wire \uut/control_unit/reg3_write_mux00001_369 ;
  wire \uut/control_unit/reg3_write_mux00002 ;
  wire \uut/control_unit/reg3_write_mux000021_371 ;
  wire \uut/program_counter/Mcount_i_addr ;
  wire \uut/program_counter/Mcount_i_addr1 ;
  wire \uut/program_counter/Mcount_i_addr2 ;
  wire \uut/program_counter/Mcount_i_addr3 ;
  wire \uut/program_counter/Mcount_i_addr4 ;
  wire \uut/program_counter/Mcount_i_addr5 ;
  wire \uut/program_counter/Mcount_i_addr6 ;
  wire \uut/program_counter/Mcount_i_addr_cy<0>_rt_381 ;
  wire \uut/program_counter/Mcount_i_addr_cy<1>_rt_383 ;
  wire \uut/program_counter/Mcount_i_addr_cy<2>_rt_385 ;
  wire \uut/program_counter/Mcount_i_addr_cy<3>_rt_387 ;
  wire \uut/program_counter/Mcount_i_addr_cy<4>_rt_389 ;
  wire \uut/program_counter/Mcount_i_addr_cy<5>_rt_391 ;
  wire \uut/program_counter/Mcount_i_addr_xor<6>_rt_392 ;
  wire \NLW_uut/register_file/Mram_registers16_SPO_UNCONNECTED ;
  wire \NLW_uut/register_file/Mram_registers15_SPO_UNCONNECTED ;
  wire \NLW_uut/register_file/Mram_registers14_SPO_UNCONNECTED ;
  wire \NLW_uut/register_file/Mram_registers13_SPO_UNCONNECTED ;
  wire \NLW_uut/register_file/Mram_registers12_SPO_UNCONNECTED ;
  wire \NLW_uut/register_file/Mram_registers11_SPO_UNCONNECTED ;
  wire \NLW_uut/register_file/Mram_registers10_SPO_UNCONNECTED ;
  wire \NLW_uut/register_file/Mram_registers9_SPO_UNCONNECTED ;
  wire \NLW_uut/register_file/Mram_registers8_SPO_UNCONNECTED ;
  wire \NLW_uut/register_file/Mram_registers7_SPO_UNCONNECTED ;
  wire \NLW_uut/register_file/Mram_registers6_SPO_UNCONNECTED ;
  wire \NLW_uut/register_file/Mram_registers5_SPO_UNCONNECTED ;
  wire \NLW_uut/register_file/Mram_registers4_SPO_UNCONNECTED ;
  wire \NLW_uut/register_file/Mram_registers3_SPO_UNCONNECTED ;
  wire \NLW_uut/register_file/Mram_registers2_SPO_UNCONNECTED ;
  wire \NLW_uut/register_file/Mram_registers1_SPO_UNCONNECTED ;
  wire [15 : 0] d_bus;
  wire [15 : 0] \mem/_varindex0000 ;
  wire [15 : 0] \mem/i_bus ;
  wire [7 : 0] \uut/comparator/Mcompar_flags_1_cmp_ne0000_cy ;
  wire [7 : 0] \uut/comparator/Mcompar_flags_1_cmp_ne0000_lut ;
  wire [15 : 0] \uut/comparator/Mcompar_flags_2_cmp_lt0000_cy ;
  wire [15 : 0] \uut/comparator/Mcompar_flags_2_cmp_lt0000_lut ;
  wire [15 : 0] \uut/comparator/flags ;
  wire [15 : 0] \uut/control_unit/instruction ;
  wire [3 : 0] \uut/control_unit/next_step ;
  wire [2 : 2] \uut/control_unit/next_step_mux0000 ;
  wire [3 : 0] \uut/control_unit/reg1_addr ;
  wire [3 : 0] \uut/control_unit/reg3_addr ;
  wire [3 : 0] \uut/control_unit/reg3_addr_mux0000 ;
  wire [0 : 0] \uut/logic_unit/Mtridata_bus3 ;
  wire [5 : 0] \uut/program_counter/Mcount_i_addr_cy ;
  wire [6 : 0] \uut/program_counter/i_addr ;
  wire [15 : 0] \uut/register_file/_varindex0000 ;
  GND   XST_GND (
    .G(\uut/logic_unit/Mtridata_bus3 [0])
  );
  VCC   XST_VCC (
    .P(N1)
  );
  MUXCY   \uut/program_counter/Mcount_i_addr_cy<0>  (
    .CI(N1),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/Mcount_i_addr_cy<0>_rt_381 ),
    .O(\uut/program_counter/Mcount_i_addr_cy [0])
  );
  XORCY   \uut/program_counter/Mcount_i_addr_xor<0>  (
    .CI(N1),
    .LI(\uut/program_counter/Mcount_i_addr_cy<0>_rt_381 ),
    .O(\uut/program_counter/Mcount_i_addr )
  );
  MUXCY   \uut/program_counter/Mcount_i_addr_cy<1>  (
    .CI(\uut/program_counter/Mcount_i_addr_cy [0]),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/Mcount_i_addr_cy<1>_rt_383 ),
    .O(\uut/program_counter/Mcount_i_addr_cy [1])
  );
  XORCY   \uut/program_counter/Mcount_i_addr_xor<1>  (
    .CI(\uut/program_counter/Mcount_i_addr_cy [0]),
    .LI(\uut/program_counter/Mcount_i_addr_cy<1>_rt_383 ),
    .O(\uut/program_counter/Mcount_i_addr1 )
  );
  MUXCY   \uut/program_counter/Mcount_i_addr_cy<2>  (
    .CI(\uut/program_counter/Mcount_i_addr_cy [1]),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/Mcount_i_addr_cy<2>_rt_385 ),
    .O(\uut/program_counter/Mcount_i_addr_cy [2])
  );
  XORCY   \uut/program_counter/Mcount_i_addr_xor<2>  (
    .CI(\uut/program_counter/Mcount_i_addr_cy [1]),
    .LI(\uut/program_counter/Mcount_i_addr_cy<2>_rt_385 ),
    .O(\uut/program_counter/Mcount_i_addr2 )
  );
  MUXCY   \uut/program_counter/Mcount_i_addr_cy<3>  (
    .CI(\uut/program_counter/Mcount_i_addr_cy [2]),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/Mcount_i_addr_cy<3>_rt_387 ),
    .O(\uut/program_counter/Mcount_i_addr_cy [3])
  );
  XORCY   \uut/program_counter/Mcount_i_addr_xor<3>  (
    .CI(\uut/program_counter/Mcount_i_addr_cy [2]),
    .LI(\uut/program_counter/Mcount_i_addr_cy<3>_rt_387 ),
    .O(\uut/program_counter/Mcount_i_addr3 )
  );
  MUXCY   \uut/program_counter/Mcount_i_addr_cy<4>  (
    .CI(\uut/program_counter/Mcount_i_addr_cy [3]),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/Mcount_i_addr_cy<4>_rt_389 ),
    .O(\uut/program_counter/Mcount_i_addr_cy [4])
  );
  XORCY   \uut/program_counter/Mcount_i_addr_xor<4>  (
    .CI(\uut/program_counter/Mcount_i_addr_cy [3]),
    .LI(\uut/program_counter/Mcount_i_addr_cy<4>_rt_389 ),
    .O(\uut/program_counter/Mcount_i_addr4 )
  );
  MUXCY   \uut/program_counter/Mcount_i_addr_cy<5>  (
    .CI(\uut/program_counter/Mcount_i_addr_cy [4]),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/Mcount_i_addr_cy<5>_rt_391 ),
    .O(\uut/program_counter/Mcount_i_addr_cy [5])
  );
  XORCY   \uut/program_counter/Mcount_i_addr_xor<5>  (
    .CI(\uut/program_counter/Mcount_i_addr_cy [4]),
    .LI(\uut/program_counter/Mcount_i_addr_cy<5>_rt_391 ),
    .O(\uut/program_counter/Mcount_i_addr5 )
  );
  XORCY   \uut/program_counter/Mcount_i_addr_xor<6>  (
    .CI(\uut/program_counter/Mcount_i_addr_cy [5]),
    .LI(\uut/program_counter/Mcount_i_addr_xor<6>_rt_392 ),
    .O(\uut/program_counter/Mcount_i_addr6 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \uut/program_counter/i_addr_0  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/pc_increment_344 ),
    .D(\uut/program_counter/Mcount_i_addr ),
    .Q(\uut/program_counter/i_addr [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \uut/program_counter/i_addr_1  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/pc_increment_344 ),
    .D(\uut/program_counter/Mcount_i_addr1 ),
    .Q(\uut/program_counter/i_addr [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \uut/program_counter/i_addr_2  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/pc_increment_344 ),
    .D(\uut/program_counter/Mcount_i_addr2 ),
    .Q(\uut/program_counter/i_addr [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \uut/program_counter/i_addr_3  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/pc_increment_344 ),
    .D(\uut/program_counter/Mcount_i_addr3 ),
    .Q(\uut/program_counter/i_addr [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \uut/program_counter/i_addr_4  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/pc_increment_344 ),
    .D(\uut/program_counter/Mcount_i_addr4 ),
    .Q(\uut/program_counter/i_addr [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \uut/program_counter/i_addr_5  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/pc_increment_344 ),
    .D(\uut/program_counter/Mcount_i_addr5 ),
    .Q(\uut/program_counter/i_addr [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \uut/program_counter/i_addr_6  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/pc_increment_344 ),
    .D(\uut/program_counter/Mcount_i_addr6 ),
    .Q(\uut/program_counter/i_addr [6])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \mem/mux31_114  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mem_127_9_83 ),
    .I2(\uut/program_counter/i_addr [0]),
    .O(\mem/mux31_114_218 )
  );
  MUXF5   \mem/mux31_10_f5_2  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux31_114_218 ),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux31_10_f53 )
  );
  MUXF6   \mem/mux31_9_f6_1  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux31_10_f53 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux31_9_f62 )
  );
  MUXF5   \mem/mux31_12_f5_5  (
    .I0(\mem/mux31_12_f5_5_221 ),
    .I1(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux31_12_f56 )
  );
  MUXF6   \mem/mux31_11_f6_0  (
    .I0(N1),
    .I1(\mem/mux31_12_f56 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux31_11_f61 )
  );
  MUXF5   \mem/mux31_2_f5  (
    .I0(\mem/mux31_4_223 ),
    .I1(\mem/mux31_3_222 ),
    .S(\uut/program_counter/i_addr [6]),
    .O(\mem/_varindex0000 [9])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \mem/mux30_114  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mem_127_8_82 ),
    .I2(\uut/program_counter/i_addr [0]),
    .O(\mem/mux30_114_208 )
  );
  MUXF5   \mem/mux30_10_f5_2  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux30_114_208 ),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux30_10_f53 )
  );
  MUXF6   \mem/mux30_9_f6_1  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux30_10_f53 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux30_9_f62 )
  );
  MUXF5   \mem/mux30_12_f5_5  (
    .I0(\mem/mux30_12_f5_5_211 ),
    .I1(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux30_12_f56 )
  );
  MUXF5   \mem/mux30_13_f5_0  (
    .I0(\mem/mux30_13_f5_0_213 ),
    .I1(N1),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux30_13_f51 )
  );
  MUXF6   \mem/mux30_11_f6_0  (
    .I0(\mem/mux30_13_f51 ),
    .I1(\mem/mux30_12_f56 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux30_11_f61 )
  );
  MUXF5   \mem/mux30_2_f5  (
    .I0(\mem/mux30_4_215 ),
    .I1(\mem/mux30_3_214 ),
    .S(\uut/program_counter/i_addr [6]),
    .O(\mem/_varindex0000 [8])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \mem/mux29_114  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mem_127_7_81 ),
    .I2(\uut/program_counter/i_addr [0]),
    .O(\mem/mux29_114_200 )
  );
  MUXF5   \mem/mux29_10_f5_2  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux29_114_200 ),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux29_10_f53 )
  );
  MUXF6   \mem/mux29_9_f6_1  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux29_10_f53 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux29_9_f62 )
  );
  MUXF5   \mem/mux29_13_f5_0  (
    .I0(\mem/mux29_13_f5_0_rt_203 ),
    .I1(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux29_13_f51 )
  );
  MUXF6   \mem/mux29_11_f6_0  (
    .I0(\mem/mux29_13_f51 ),
    .I1(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux29_11_f61 )
  );
  MUXF5   \mem/mux29_2_f5  (
    .I0(\mem/mux29_4_205 ),
    .I1(\mem/mux29_3_204 ),
    .S(\uut/program_counter/i_addr [6]),
    .O(\mem/_varindex0000 [7])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \mem/mux28_114  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mem_127_6_80 ),
    .I2(\uut/program_counter/i_addr [0]),
    .O(\mem/mux28_114_196 )
  );
  MUXF5   \mem/mux28_10_f5_2  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux28_114_196 ),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux28_10_f53 )
  );
  MUXF6   \mem/mux28_9_f6_1  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux28_10_f53 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux28_9_f62 )
  );
  MUXF5   \mem/mux28_2_f5  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux28_3_197 ),
    .S(\uut/program_counter/i_addr [6]),
    .O(\mem/_varindex0000 [6])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \mem/mux27_114  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mem_127_5_79 ),
    .I2(\uut/program_counter/i_addr [0]),
    .O(\mem/mux27_114_186 )
  );
  MUXF5   \mem/mux27_10_f5_2  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux27_114_186 ),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux27_10_f53 )
  );
  MUXF6   \mem/mux27_9_f6_1  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux27_10_f53 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux27_9_f62 )
  );
  MUXF5   \mem/mux27_12_f5_5  (
    .I0(\mem/mux27_12_f5_5_189 ),
    .I1(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux27_12_f56 )
  );
  MUXF5   \mem/mux27_13_f5_0  (
    .I0(\mem/mux27_13_f5_0_rt_191 ),
    .I1(N1),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux27_13_f51 )
  );
  MUXF6   \mem/mux27_11_f6_0  (
    .I0(\mem/mux27_13_f51 ),
    .I1(\mem/mux27_12_f56 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux27_11_f61 )
  );
  MUXF5   \mem/mux27_2_f5  (
    .I0(\mem/mux27_4_193 ),
    .I1(\mem/mux27_3_192 ),
    .S(\uut/program_counter/i_addr [6]),
    .O(\mem/_varindex0000 [5])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \mem/mux26_114  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mem_127_4_78 ),
    .I2(\uut/program_counter/i_addr [0]),
    .O(\mem/mux26_114_175 )
  );
  MUXF5   \mem/mux26_10_f5_2  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux26_114_175 ),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux26_10_f53 )
  );
  MUXF6   \mem/mux26_9_f6_1  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux26_10_f53 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux26_9_f62 )
  );
  MUXF5   \mem/mux26_12_f5_5  (
    .I0(\mem/mux26_12_f5_5_178 ),
    .I1(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux26_12_f56 )
  );
  MUXF5   \mem/mux26_13_f5_0  (
    .I0(\mem/mux26_13_f5_0_180 ),
    .I1(\mem/mux26_13_f5_01 ),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux26_13_f51 )
  );
  MUXF6   \mem/mux26_11_f6_0  (
    .I0(\mem/mux26_13_f51 ),
    .I1(\mem/mux26_12_f56 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux26_11_f61 )
  );
  MUXF5   \mem/mux26_2_f5  (
    .I0(\mem/mux26_4_183 ),
    .I1(\mem/mux26_3_182 ),
    .S(\uut/program_counter/i_addr [6]),
    .O(\mem/_varindex0000 [4])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \mem/mux25_114  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mem_127_3_77 ),
    .I2(\uut/program_counter/i_addr [0]),
    .O(\mem/mux25_114_167 )
  );
  MUXF5   \mem/mux25_10_f5_2  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux25_114_167 ),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux25_10_f53 )
  );
  MUXF6   \mem/mux25_9_f6_1  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux25_10_f53 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux25_9_f62 )
  );
  MUXF5   \mem/mux25_12_f5_5  (
    .I0(\mem/mux25_12_f5_5_170 ),
    .I1(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux25_12_f56 )
  );
  MUXF6   \mem/mux25_11_f6_0  (
    .I0(N1),
    .I1(\mem/mux25_12_f56 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux25_11_f61 )
  );
  MUXF5   \mem/mux25_2_f5  (
    .I0(\mem/mux25_4_172 ),
    .I1(\mem/mux25_3_171 ),
    .S(\uut/program_counter/i_addr [6]),
    .O(\mem/_varindex0000 [3])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \mem/mux24_114  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mem_127_2_76 ),
    .I2(\uut/program_counter/i_addr [0]),
    .O(\mem/mux24_114_157 )
  );
  MUXF5   \mem/mux24_10_f5_2  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux24_114_157 ),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux24_10_f53 )
  );
  MUXF6   \mem/mux24_9_f6_1  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux24_10_f53 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux24_9_f62 )
  );
  MUXF5   \mem/mux24_12_f5_5  (
    .I0(\mem/mux24_12_f5_5_160 ),
    .I1(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux24_12_f56 )
  );
  MUXF5   \mem/mux24_13_f5_0  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux24_13_f5_0_rt_162 ),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux24_13_f51 )
  );
  MUXF6   \mem/mux24_11_f6_0  (
    .I0(\mem/mux24_13_f51 ),
    .I1(\mem/mux24_12_f56 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux24_11_f61 )
  );
  MUXF5   \mem/mux24_2_f5  (
    .I0(\mem/mux24_4_164 ),
    .I1(\mem/mux24_3_163 ),
    .S(\uut/program_counter/i_addr [6]),
    .O(\mem/_varindex0000 [2])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \mem/mux23_114  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mem_127_1_69 ),
    .I2(\uut/program_counter/i_addr [0]),
    .O(\mem/mux23_114_149 )
  );
  MUXF5   \mem/mux23_10_f5_2  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux23_114_149 ),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux23_10_f53 )
  );
  MUXF6   \mem/mux23_9_f6_1  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux23_10_f53 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux23_9_f62 )
  );
  MUXF5   \mem/mux23_12_f5_5  (
    .I0(\mem/mux23_12_f5_5_152 ),
    .I1(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux23_12_f56 )
  );
  MUXF6   \mem/mux23_11_f6_0  (
    .I0(N1),
    .I1(\mem/mux23_12_f56 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux23_11_f61 )
  );
  MUXF5   \mem/mux23_2_f5  (
    .I0(\mem/mux23_4_154 ),
    .I1(\mem/mux23_3_153 ),
    .S(\uut/program_counter/i_addr [6]),
    .O(\mem/_varindex0000 [1])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \mem/mux22_114  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mem_127_15_75 ),
    .I2(\uut/program_counter/i_addr [0]),
    .O(\mem/mux22_114_141 )
  );
  MUXF5   \mem/mux22_10_f5_2  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux22_114_141 ),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux22_10_f53 )
  );
  MUXF6   \mem/mux22_9_f6_1  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux22_10_f53 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux22_9_f62 )
  );
  MUXF5   \mem/mux22_12_f5_5  (
    .I0(\mem/mux22_12_f5_5_144 ),
    .I1(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux22_12_f56 )
  );
  MUXF6   \mem/mux22_11_f6_0  (
    .I0(N1),
    .I1(\mem/mux22_12_f56 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux22_11_f61 )
  );
  MUXF5   \mem/mux22_2_f5  (
    .I0(\mem/mux22_4_146 ),
    .I1(\mem/mux22_3_145 ),
    .S(\uut/program_counter/i_addr [6]),
    .O(\mem/_varindex0000 [15])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \mem/mux21_114  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mem_127_14_74 ),
    .I2(\uut/program_counter/i_addr [0]),
    .O(\mem/mux21_114_131 )
  );
  MUXF5   \mem/mux21_10_f5_2  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux21_114_131 ),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux21_10_f53 )
  );
  MUXF6   \mem/mux21_9_f6_1  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux21_10_f53 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux21_9_f62 )
  );
  MUXF5   \mem/mux21_12_f5_5  (
    .I0(\mem/mux21_12_f5_5_134 ),
    .I1(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux21_12_f56 )
  );
  MUXF5   \mem/mux21_13_f5_0  (
    .I0(\mem/mux21_13_f5_0_136 ),
    .I1(N1),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux21_13_f51 )
  );
  MUXF6   \mem/mux21_11_f6_0  (
    .I0(\mem/mux21_13_f51 ),
    .I1(\mem/mux21_12_f56 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux21_11_f61 )
  );
  MUXF5   \mem/mux21_2_f5  (
    .I0(\mem/mux21_4_138 ),
    .I1(\mem/mux21_3_137 ),
    .S(\uut/program_counter/i_addr [6]),
    .O(\mem/_varindex0000 [14])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \mem/mux20_114  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mem_127_13_73 ),
    .I2(\uut/program_counter/i_addr [0]),
    .O(\mem/mux20_114_123 )
  );
  MUXF5   \mem/mux20_10_f5_2  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux20_114_123 ),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux20_10_f53 )
  );
  MUXF6   \mem/mux20_9_f6_1  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux20_10_f53 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux20_9_f62 )
  );
  MUXF5   \mem/mux20_12_f5_5  (
    .I0(\mem/mux20_12_f5_5_126 ),
    .I1(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux20_12_f56 )
  );
  MUXF6   \mem/mux20_11_f6_0  (
    .I0(N1),
    .I1(\mem/mux20_12_f56 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux20_11_f61 )
  );
  MUXF5   \mem/mux20_2_f5  (
    .I0(\mem/mux20_4_128 ),
    .I1(\mem/mux20_3_127 ),
    .S(\uut/program_counter/i_addr [6]),
    .O(\mem/_varindex0000 [13])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \mem/mux19_114  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mem_127_12_72 ),
    .I2(\uut/program_counter/i_addr [0]),
    .O(\mem/mux19_114_113 )
  );
  MUXF5   \mem/mux19_10_f5_2  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux19_114_113 ),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux19_10_f53 )
  );
  MUXF6   \mem/mux19_9_f6_1  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux19_10_f53 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux19_9_f62 )
  );
  MUXF5   \mem/mux19_12_f5_5  (
    .I0(\mem/mux19_12_f5_5_116 ),
    .I1(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux19_12_f56 )
  );
  MUXF5   \mem/mux19_13_f5_0  (
    .I0(\mem/mux19_13_f5_0_118 ),
    .I1(N1),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux19_13_f51 )
  );
  MUXF6   \mem/mux19_11_f6_0  (
    .I0(\mem/mux19_13_f51 ),
    .I1(\mem/mux19_12_f56 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux19_11_f61 )
  );
  MUXF5   \mem/mux19_2_f5  (
    .I0(\mem/mux19_4_120 ),
    .I1(\mem/mux19_3_119 ),
    .S(\uut/program_counter/i_addr [6]),
    .O(\mem/_varindex0000 [12])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \mem/mux18_114  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mem_127_11_71 ),
    .I2(\uut/program_counter/i_addr [0]),
    .O(\mem/mux18_114_105 )
  );
  MUXF5   \mem/mux18_10_f5_2  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux18_114_105 ),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux18_10_f53 )
  );
  MUXF6   \mem/mux18_9_f6_1  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux18_10_f53 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux18_9_f62 )
  );
  MUXF5   \mem/mux18_12_f5_5  (
    .I0(\mem/mux18_12_f5_5_108 ),
    .I1(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux18_12_f56 )
  );
  MUXF6   \mem/mux18_11_f6_0  (
    .I0(N1),
    .I1(\mem/mux18_12_f56 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux18_11_f61 )
  );
  MUXF5   \mem/mux18_2_f5  (
    .I0(\mem/mux18_4_110 ),
    .I1(\mem/mux18_3_109 ),
    .S(\uut/program_counter/i_addr [6]),
    .O(\mem/_varindex0000 [11])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \mem/mux17_114  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mem_127_10_70 ),
    .I2(\uut/program_counter/i_addr [0]),
    .O(\mem/mux17_114_95 )
  );
  MUXF5   \mem/mux17_10_f5_2  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux17_114_95 ),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux17_10_f53 )
  );
  MUXF6   \mem/mux17_9_f6_1  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux17_10_f53 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux17_9_f62 )
  );
  MUXF5   \mem/mux17_12_f5_5  (
    .I0(\mem/mux17_12_f5_5_98 ),
    .I1(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux17_12_f56 )
  );
  MUXF5   \mem/mux17_13_f5_0  (
    .I0(\mem/mux17_13_f5_0_100 ),
    .I1(N1),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux17_13_f51 )
  );
  MUXF6   \mem/mux17_11_f6_0  (
    .I0(\mem/mux17_13_f51 ),
    .I1(\mem/mux17_12_f56 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux17_11_f61 )
  );
  MUXF5   \mem/mux17_2_f5  (
    .I0(\mem/mux17_4_102 ),
    .I1(\mem/mux17_3_101 ),
    .S(\uut/program_counter/i_addr [6]),
    .O(\mem/_varindex0000 [10])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \mem/mux16_114  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mem_127_0_68 ),
    .I2(\uut/program_counter/i_addr [0]),
    .O(\mem/mux16_114_85 )
  );
  MUXF5   \mem/mux16_10_f5_2  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux16_114_85 ),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux16_10_f53 )
  );
  MUXF6   \mem/mux16_9_f6_1  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux16_10_f53 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux16_9_f62 )
  );
  MUXF5   \mem/mux16_12_f5_5  (
    .I0(\mem/mux16_147 ),
    .I1(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux16_12_f56 )
  );
  MUXF5   \mem/mux16_13_f5_0  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\mem/mux16_13_f5_0_rt_89 ),
    .S(\uut/program_counter/i_addr [1]),
    .O(\mem/mux16_13_f51 )
  );
  MUXF6   \mem/mux16_11_f6_0  (
    .I0(\mem/mux16_13_f51 ),
    .I1(\mem/mux16_12_f56 ),
    .S(\uut/program_counter/i_addr [2]),
    .O(\mem/mux16_11_f61 )
  );
  MUXF5   \mem/mux16_2_f5  (
    .I0(\mem/mux16_4_92 ),
    .I1(\mem/mux16_3_91 ),
    .S(\uut/program_counter/i_addr [6]),
    .O(\mem/_varindex0000 [0])
  );
  FD   \mem/i_bus_15  (
    .C(clk_BUFGP_11),
    .D(\mem/_varindex0000 [15]),
    .Q(\mem/i_bus [15])
  );
  FD   \mem/i_bus_14  (
    .C(clk_BUFGP_11),
    .D(\mem/_varindex0000 [14]),
    .Q(\mem/i_bus [14])
  );
  FD   \mem/i_bus_13  (
    .C(clk_BUFGP_11),
    .D(\mem/_varindex0000 [13]),
    .Q(\mem/i_bus [13])
  );
  FD   \mem/i_bus_12  (
    .C(clk_BUFGP_11),
    .D(\mem/_varindex0000 [12]),
    .Q(\mem/i_bus [12])
  );
  FD   \mem/i_bus_11  (
    .C(clk_BUFGP_11),
    .D(\mem/_varindex0000 [11]),
    .Q(\mem/i_bus [11])
  );
  FD   \mem/i_bus_10  (
    .C(clk_BUFGP_11),
    .D(\mem/_varindex0000 [10]),
    .Q(\mem/i_bus [10])
  );
  FD   \mem/i_bus_9  (
    .C(clk_BUFGP_11),
    .D(\mem/_varindex0000 [9]),
    .Q(\mem/i_bus [9])
  );
  FD   \mem/i_bus_8  (
    .C(clk_BUFGP_11),
    .D(\mem/_varindex0000 [8]),
    .Q(\mem/i_bus [8])
  );
  FD   \mem/i_bus_7  (
    .C(clk_BUFGP_11),
    .D(\mem/_varindex0000 [7]),
    .Q(\mem/i_bus [7])
  );
  FD   \mem/i_bus_6  (
    .C(clk_BUFGP_11),
    .D(\mem/_varindex0000 [6]),
    .Q(\mem/i_bus [6])
  );
  FD   \mem/i_bus_5  (
    .C(clk_BUFGP_11),
    .D(\mem/_varindex0000 [5]),
    .Q(\mem/i_bus [5])
  );
  FD   \mem/i_bus_4  (
    .C(clk_BUFGP_11),
    .D(\mem/_varindex0000 [4]),
    .Q(\mem/i_bus [4])
  );
  FD   \mem/i_bus_3  (
    .C(clk_BUFGP_11),
    .D(\mem/_varindex0000 [3]),
    .Q(\mem/i_bus [3])
  );
  FD   \mem/i_bus_2  (
    .C(clk_BUFGP_11),
    .D(\mem/_varindex0000 [2]),
    .Q(\mem/i_bus [2])
  );
  FD   \mem/i_bus_1  (
    .C(clk_BUFGP_11),
    .D(\mem/_varindex0000 [1]),
    .Q(\mem/i_bus [1])
  );
  FD   \mem/i_bus_0  (
    .C(clk_BUFGP_11),
    .D(\mem/_varindex0000 [0]),
    .Q(\mem/i_bus [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \mem/mem_127_15  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/mem_write_323 ),
    .D(d_bus[15]),
    .Q(\mem/mem_127_15_75 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \mem/mem_127_14  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/mem_write_323 ),
    .D(d_bus[14]),
    .Q(\mem/mem_127_14_74 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \mem/mem_127_13  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/mem_write_323 ),
    .D(d_bus[13]),
    .Q(\mem/mem_127_13_73 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \mem/mem_127_12  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/mem_write_323 ),
    .D(d_bus[12]),
    .Q(\mem/mem_127_12_72 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \mem/mem_127_11  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/mem_write_323 ),
    .D(d_bus[11]),
    .Q(\mem/mem_127_11_71 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \mem/mem_127_10  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/mem_write_323 ),
    .D(d_bus[10]),
    .Q(\mem/mem_127_10_70 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \mem/mem_127_9  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/mem_write_323 ),
    .D(d_bus[9]),
    .Q(\mem/mem_127_9_83 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \mem/mem_127_8  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/mem_write_323 ),
    .D(d_bus[8]),
    .Q(\mem/mem_127_8_82 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \mem/mem_127_7  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/mem_write_323 ),
    .D(d_bus[7]),
    .Q(\mem/mem_127_7_81 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \mem/mem_127_6  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/mem_write_323 ),
    .D(d_bus[6]),
    .Q(\mem/mem_127_6_80 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \mem/mem_127_5  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/mem_write_323 ),
    .D(d_bus[5]),
    .Q(\mem/mem_127_5_79 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \mem/mem_127_4  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/mem_write_323 ),
    .D(d_bus[4]),
    .Q(\mem/mem_127_4_78 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \mem/mem_127_3  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/mem_write_323 ),
    .D(d_bus[3]),
    .Q(\mem/mem_127_3_77 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \mem/mem_127_2  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/mem_write_323 ),
    .D(d_bus[2]),
    .Q(\mem/mem_127_2_76 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \mem/mem_127_1  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/mem_write_323 ),
    .D(d_bus[1]),
    .Q(\mem/mem_127_1_69 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \mem/mem_127_0  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/mem_write_323 ),
    .D(d_bus[0]),
    .Q(\mem/mem_127_0_68 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \uut/control_unit/reg1_addr_3  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/reg1_addr_not0001 ),
    .D(\uut/control_unit/instruction [3]),
    .Q(\uut/control_unit/reg1_addr [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \uut/control_unit/reg1_addr_2  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/reg1_addr_not0001 ),
    .D(\uut/control_unit/instruction [2]),
    .Q(\uut/control_unit/reg1_addr [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \uut/control_unit/reg1_addr_1  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/reg1_addr_not0001 ),
    .D(\uut/control_unit/instruction [1]),
    .Q(\uut/control_unit/reg1_addr [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \uut/control_unit/reg1_addr_0  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/reg1_addr_not0001 ),
    .D(\uut/control_unit/instruction [0]),
    .Q(\uut/control_unit/reg1_addr [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \uut/control_unit/reg3_addr_3  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/reg3_addr_not0001 ),
    .D(\uut/control_unit/reg3_addr_mux0000 [3]),
    .Q(\uut/control_unit/reg3_addr [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \uut/control_unit/reg3_addr_2  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/reg3_addr_not0001 ),
    .D(\uut/control_unit/reg3_addr_mux0000 [2]),
    .Q(\uut/control_unit/reg3_addr [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \uut/control_unit/reg3_addr_1  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/reg3_addr_not0001 ),
    .D(\uut/control_unit/reg3_addr_mux0000 [1]),
    .Q(\uut/control_unit/reg3_addr [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \uut/control_unit/reg3_addr_0  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/reg3_addr_not0001 ),
    .D(\uut/control_unit/reg3_addr_mux0000 [0]),
    .Q(\uut/control_unit/reg3_addr [0])
  );
  FDE   \uut/control_unit/instruction_15  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/instruction_not0001_inv ),
    .D(\mem/i_bus [15]),
    .Q(\uut/control_unit/instruction [15])
  );
  FDE   \uut/control_unit/instruction_14  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/instruction_not0001_inv ),
    .D(\mem/i_bus [14]),
    .Q(\uut/control_unit/instruction [14])
  );
  FDE   \uut/control_unit/instruction_13  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/instruction_not0001_inv ),
    .D(\mem/i_bus [13]),
    .Q(\uut/control_unit/instruction [13])
  );
  FDE   \uut/control_unit/instruction_12  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/instruction_not0001_inv ),
    .D(\mem/i_bus [12]),
    .Q(\uut/control_unit/instruction [12])
  );
  FDE   \uut/control_unit/instruction_11  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/instruction_not0001_inv ),
    .D(\mem/i_bus [11]),
    .Q(\uut/control_unit/instruction [11])
  );
  FDE   \uut/control_unit/instruction_10  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/instruction_not0001_inv ),
    .D(\mem/i_bus [10]),
    .Q(\uut/control_unit/instruction [10])
  );
  FDE   \uut/control_unit/instruction_9  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/instruction_not0001_inv ),
    .D(\mem/i_bus [9]),
    .Q(\uut/control_unit/instruction [9])
  );
  FDE   \uut/control_unit/instruction_8  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/instruction_not0001_inv ),
    .D(\mem/i_bus [8]),
    .Q(\uut/control_unit/instruction [8])
  );
  FDE   \uut/control_unit/instruction_7  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/instruction_not0001_inv ),
    .D(\mem/i_bus [7]),
    .Q(\uut/control_unit/instruction [7])
  );
  FDE   \uut/control_unit/instruction_6  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/instruction_not0001_inv ),
    .D(\mem/i_bus [6]),
    .Q(\uut/control_unit/instruction [6])
  );
  FDE   \uut/control_unit/instruction_5  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/instruction_not0001_inv ),
    .D(\mem/i_bus [5]),
    .Q(\uut/control_unit/instruction [5])
  );
  FDE   \uut/control_unit/instruction_4  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/instruction_not0001_inv ),
    .D(\mem/i_bus [4]),
    .Q(\uut/control_unit/instruction [4])
  );
  FDE   \uut/control_unit/instruction_3  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/instruction_not0001_inv ),
    .D(\mem/i_bus [3]),
    .Q(\uut/control_unit/instruction [3])
  );
  FDE   \uut/control_unit/instruction_2  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/instruction_not0001_inv ),
    .D(\mem/i_bus [2]),
    .Q(\uut/control_unit/instruction [2])
  );
  FDE   \uut/control_unit/instruction_1  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/instruction_not0001_inv ),
    .D(\mem/i_bus [1]),
    .Q(\uut/control_unit/instruction [1])
  );
  FDE   \uut/control_unit/instruction_0  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/instruction_not0001_inv ),
    .D(\mem/i_bus [0]),
    .Q(\uut/control_unit/instruction [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \uut/control_unit/next_step_1  (
    .C(clk_BUFGP_11),
    .D(\uut/control_unit/next_step_mux0000 [2]),
    .Q(\uut/control_unit/next_step [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \uut/control_unit/cmp_load  (
    .C(clk_BUFGP_11),
    .D(\uut/control_unit/cmp_load_mux0000 ),
    .Q(\uut/control_unit/cmp_load_293 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \uut/control_unit/mem_write  (
    .C(clk_BUFGP_11),
    .D(\uut/control_unit/mem_write_mux0000 ),
    .Q(\uut/control_unit/mem_write_323 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \uut/control_unit/reg1_read  (
    .C(clk_BUFGP_11),
    .D(\uut/control_unit/reg1_read_mux0000 ),
    .Q(\uut/control_unit/reg1_read_352 )
  );
  RAM16X1D   \uut/register_file/Mram_registers16  (
    .A0(\uut/control_unit/reg3_addr [0]),
    .A1(\uut/control_unit/reg3_addr [1]),
    .A2(\uut/control_unit/reg3_addr [2]),
    .A3(\uut/control_unit/reg3_addr [3]),
    .D(d_bus[15]),
    .DPRA0(\uut/control_unit/reg1_addr [0]),
    .DPRA1(\uut/control_unit/reg1_addr [1]),
    .DPRA2(\uut/control_unit/reg1_addr [2]),
    .DPRA3(\uut/control_unit/reg1_addr [3]),
    .WCLK(clk_BUFGP_11),
    .WE(\uut/control_unit/reg3_write_367 ),
    .SPO(\NLW_uut/register_file/Mram_registers16_SPO_UNCONNECTED ),
    .DPO(\uut/register_file/_varindex0000 [15])
  );
  RAM16X1D   \uut/register_file/Mram_registers15  (
    .A0(\uut/control_unit/reg3_addr [0]),
    .A1(\uut/control_unit/reg3_addr [1]),
    .A2(\uut/control_unit/reg3_addr [2]),
    .A3(\uut/control_unit/reg3_addr [3]),
    .D(d_bus[14]),
    .DPRA0(\uut/control_unit/reg1_addr [0]),
    .DPRA1(\uut/control_unit/reg1_addr [1]),
    .DPRA2(\uut/control_unit/reg1_addr [2]),
    .DPRA3(\uut/control_unit/reg1_addr [3]),
    .WCLK(clk_BUFGP_11),
    .WE(\uut/control_unit/reg3_write_367 ),
    .SPO(\NLW_uut/register_file/Mram_registers15_SPO_UNCONNECTED ),
    .DPO(\uut/register_file/_varindex0000 [14])
  );
  RAM16X1D   \uut/register_file/Mram_registers14  (
    .A0(\uut/control_unit/reg3_addr [0]),
    .A1(\uut/control_unit/reg3_addr [1]),
    .A2(\uut/control_unit/reg3_addr [2]),
    .A3(\uut/control_unit/reg3_addr [3]),
    .D(d_bus[13]),
    .DPRA0(\uut/control_unit/reg1_addr [0]),
    .DPRA1(\uut/control_unit/reg1_addr [1]),
    .DPRA2(\uut/control_unit/reg1_addr [2]),
    .DPRA3(\uut/control_unit/reg1_addr [3]),
    .WCLK(clk_BUFGP_11),
    .WE(\uut/control_unit/reg3_write_367 ),
    .SPO(\NLW_uut/register_file/Mram_registers14_SPO_UNCONNECTED ),
    .DPO(\uut/register_file/_varindex0000 [13])
  );
  RAM16X1D   \uut/register_file/Mram_registers13  (
    .A0(\uut/control_unit/reg3_addr [0]),
    .A1(\uut/control_unit/reg3_addr [1]),
    .A2(\uut/control_unit/reg3_addr [2]),
    .A3(\uut/control_unit/reg3_addr [3]),
    .D(d_bus[12]),
    .DPRA0(\uut/control_unit/reg1_addr [0]),
    .DPRA1(\uut/control_unit/reg1_addr [1]),
    .DPRA2(\uut/control_unit/reg1_addr [2]),
    .DPRA3(\uut/control_unit/reg1_addr [3]),
    .WCLK(clk_BUFGP_11),
    .WE(\uut/control_unit/reg3_write_367 ),
    .SPO(\NLW_uut/register_file/Mram_registers13_SPO_UNCONNECTED ),
    .DPO(\uut/register_file/_varindex0000 [12])
  );
  RAM16X1D   \uut/register_file/Mram_registers12  (
    .A0(\uut/control_unit/reg3_addr [0]),
    .A1(\uut/control_unit/reg3_addr [1]),
    .A2(\uut/control_unit/reg3_addr [2]),
    .A3(\uut/control_unit/reg3_addr [3]),
    .D(d_bus[11]),
    .DPRA0(\uut/control_unit/reg1_addr [0]),
    .DPRA1(\uut/control_unit/reg1_addr [1]),
    .DPRA2(\uut/control_unit/reg1_addr [2]),
    .DPRA3(\uut/control_unit/reg1_addr [3]),
    .WCLK(clk_BUFGP_11),
    .WE(\uut/control_unit/reg3_write_367 ),
    .SPO(\NLW_uut/register_file/Mram_registers12_SPO_UNCONNECTED ),
    .DPO(\uut/register_file/_varindex0000 [11])
  );
  RAM16X1D   \uut/register_file/Mram_registers11  (
    .A0(\uut/control_unit/reg3_addr [0]),
    .A1(\uut/control_unit/reg3_addr [1]),
    .A2(\uut/control_unit/reg3_addr [2]),
    .A3(\uut/control_unit/reg3_addr [3]),
    .D(d_bus[10]),
    .DPRA0(\uut/control_unit/reg1_addr [0]),
    .DPRA1(\uut/control_unit/reg1_addr [1]),
    .DPRA2(\uut/control_unit/reg1_addr [2]),
    .DPRA3(\uut/control_unit/reg1_addr [3]),
    .WCLK(clk_BUFGP_11),
    .WE(\uut/control_unit/reg3_write_367 ),
    .SPO(\NLW_uut/register_file/Mram_registers11_SPO_UNCONNECTED ),
    .DPO(\uut/register_file/_varindex0000 [10])
  );
  RAM16X1D   \uut/register_file/Mram_registers10  (
    .A0(\uut/control_unit/reg3_addr [0]),
    .A1(\uut/control_unit/reg3_addr [1]),
    .A2(\uut/control_unit/reg3_addr [2]),
    .A3(\uut/control_unit/reg3_addr [3]),
    .D(d_bus[9]),
    .DPRA0(\uut/control_unit/reg1_addr [0]),
    .DPRA1(\uut/control_unit/reg1_addr [1]),
    .DPRA2(\uut/control_unit/reg1_addr [2]),
    .DPRA3(\uut/control_unit/reg1_addr [3]),
    .WCLK(clk_BUFGP_11),
    .WE(\uut/control_unit/reg3_write_367 ),
    .SPO(\NLW_uut/register_file/Mram_registers10_SPO_UNCONNECTED ),
    .DPO(\uut/register_file/_varindex0000 [9])
  );
  RAM16X1D   \uut/register_file/Mram_registers9  (
    .A0(\uut/control_unit/reg3_addr [0]),
    .A1(\uut/control_unit/reg3_addr [1]),
    .A2(\uut/control_unit/reg3_addr [2]),
    .A3(\uut/control_unit/reg3_addr [3]),
    .D(d_bus[8]),
    .DPRA0(\uut/control_unit/reg1_addr [0]),
    .DPRA1(\uut/control_unit/reg1_addr [1]),
    .DPRA2(\uut/control_unit/reg1_addr [2]),
    .DPRA3(\uut/control_unit/reg1_addr [3]),
    .WCLK(clk_BUFGP_11),
    .WE(\uut/control_unit/reg3_write_367 ),
    .SPO(\NLW_uut/register_file/Mram_registers9_SPO_UNCONNECTED ),
    .DPO(\uut/register_file/_varindex0000 [8])
  );
  RAM16X1D   \uut/register_file/Mram_registers8  (
    .A0(\uut/control_unit/reg3_addr [0]),
    .A1(\uut/control_unit/reg3_addr [1]),
    .A2(\uut/control_unit/reg3_addr [2]),
    .A3(\uut/control_unit/reg3_addr [3]),
    .D(d_bus[7]),
    .DPRA0(\uut/control_unit/reg1_addr [0]),
    .DPRA1(\uut/control_unit/reg1_addr [1]),
    .DPRA2(\uut/control_unit/reg1_addr [2]),
    .DPRA3(\uut/control_unit/reg1_addr [3]),
    .WCLK(clk_BUFGP_11),
    .WE(\uut/control_unit/reg3_write_367 ),
    .SPO(\NLW_uut/register_file/Mram_registers8_SPO_UNCONNECTED ),
    .DPO(\uut/register_file/_varindex0000 [7])
  );
  RAM16X1D   \uut/register_file/Mram_registers7  (
    .A0(\uut/control_unit/reg3_addr [0]),
    .A1(\uut/control_unit/reg3_addr [1]),
    .A2(\uut/control_unit/reg3_addr [2]),
    .A3(\uut/control_unit/reg3_addr [3]),
    .D(d_bus[6]),
    .DPRA0(\uut/control_unit/reg1_addr [0]),
    .DPRA1(\uut/control_unit/reg1_addr [1]),
    .DPRA2(\uut/control_unit/reg1_addr [2]),
    .DPRA3(\uut/control_unit/reg1_addr [3]),
    .WCLK(clk_BUFGP_11),
    .WE(\uut/control_unit/reg3_write_367 ),
    .SPO(\NLW_uut/register_file/Mram_registers7_SPO_UNCONNECTED ),
    .DPO(\uut/register_file/_varindex0000 [6])
  );
  RAM16X1D   \uut/register_file/Mram_registers6  (
    .A0(\uut/control_unit/reg3_addr [0]),
    .A1(\uut/control_unit/reg3_addr [1]),
    .A2(\uut/control_unit/reg3_addr [2]),
    .A3(\uut/control_unit/reg3_addr [3]),
    .D(d_bus[5]),
    .DPRA0(\uut/control_unit/reg1_addr [0]),
    .DPRA1(\uut/control_unit/reg1_addr [1]),
    .DPRA2(\uut/control_unit/reg1_addr [2]),
    .DPRA3(\uut/control_unit/reg1_addr [3]),
    .WCLK(clk_BUFGP_11),
    .WE(\uut/control_unit/reg3_write_367 ),
    .SPO(\NLW_uut/register_file/Mram_registers6_SPO_UNCONNECTED ),
    .DPO(\uut/register_file/_varindex0000 [5])
  );
  RAM16X1D   \uut/register_file/Mram_registers5  (
    .A0(\uut/control_unit/reg3_addr [0]),
    .A1(\uut/control_unit/reg3_addr [1]),
    .A2(\uut/control_unit/reg3_addr [2]),
    .A3(\uut/control_unit/reg3_addr [3]),
    .D(d_bus[4]),
    .DPRA0(\uut/control_unit/reg1_addr [0]),
    .DPRA1(\uut/control_unit/reg1_addr [1]),
    .DPRA2(\uut/control_unit/reg1_addr [2]),
    .DPRA3(\uut/control_unit/reg1_addr [3]),
    .WCLK(clk_BUFGP_11),
    .WE(\uut/control_unit/reg3_write_367 ),
    .SPO(\NLW_uut/register_file/Mram_registers5_SPO_UNCONNECTED ),
    .DPO(\uut/register_file/_varindex0000 [4])
  );
  RAM16X1D   \uut/register_file/Mram_registers4  (
    .A0(\uut/control_unit/reg3_addr [0]),
    .A1(\uut/control_unit/reg3_addr [1]),
    .A2(\uut/control_unit/reg3_addr [2]),
    .A3(\uut/control_unit/reg3_addr [3]),
    .D(d_bus[3]),
    .DPRA0(\uut/control_unit/reg1_addr [0]),
    .DPRA1(\uut/control_unit/reg1_addr [1]),
    .DPRA2(\uut/control_unit/reg1_addr [2]),
    .DPRA3(\uut/control_unit/reg1_addr [3]),
    .WCLK(clk_BUFGP_11),
    .WE(\uut/control_unit/reg3_write_367 ),
    .SPO(\NLW_uut/register_file/Mram_registers4_SPO_UNCONNECTED ),
    .DPO(\uut/register_file/_varindex0000 [3])
  );
  RAM16X1D   \uut/register_file/Mram_registers3  (
    .A0(\uut/control_unit/reg3_addr [0]),
    .A1(\uut/control_unit/reg3_addr [1]),
    .A2(\uut/control_unit/reg3_addr [2]),
    .A3(\uut/control_unit/reg3_addr [3]),
    .D(d_bus[2]),
    .DPRA0(\uut/control_unit/reg1_addr [0]),
    .DPRA1(\uut/control_unit/reg1_addr [1]),
    .DPRA2(\uut/control_unit/reg1_addr [2]),
    .DPRA3(\uut/control_unit/reg1_addr [3]),
    .WCLK(clk_BUFGP_11),
    .WE(\uut/control_unit/reg3_write_367 ),
    .SPO(\NLW_uut/register_file/Mram_registers3_SPO_UNCONNECTED ),
    .DPO(\uut/register_file/_varindex0000 [2])
  );
  RAM16X1D   \uut/register_file/Mram_registers2  (
    .A0(\uut/control_unit/reg3_addr [0]),
    .A1(\uut/control_unit/reg3_addr [1]),
    .A2(\uut/control_unit/reg3_addr [2]),
    .A3(\uut/control_unit/reg3_addr [3]),
    .D(d_bus[1]),
    .DPRA0(\uut/control_unit/reg1_addr [0]),
    .DPRA1(\uut/control_unit/reg1_addr [1]),
    .DPRA2(\uut/control_unit/reg1_addr [2]),
    .DPRA3(\uut/control_unit/reg1_addr [3]),
    .WCLK(clk_BUFGP_11),
    .WE(\uut/control_unit/reg3_write_367 ),
    .SPO(\NLW_uut/register_file/Mram_registers2_SPO_UNCONNECTED ),
    .DPO(\uut/register_file/_varindex0000 [1])
  );
  RAM16X1D   \uut/register_file/Mram_registers1  (
    .A0(\uut/control_unit/reg3_addr [0]),
    .A1(\uut/control_unit/reg3_addr [1]),
    .A2(\uut/control_unit/reg3_addr [2]),
    .A3(\uut/control_unit/reg3_addr [3]),
    .D(d_bus[0]),
    .DPRA0(\uut/control_unit/reg1_addr [0]),
    .DPRA1(\uut/control_unit/reg1_addr [1]),
    .DPRA2(\uut/control_unit/reg1_addr [2]),
    .DPRA3(\uut/control_unit/reg1_addr [3]),
    .WCLK(clk_BUFGP_11),
    .WE(\uut/control_unit/reg3_write_367 ),
    .SPO(\NLW_uut/register_file/Mram_registers1_SPO_UNCONNECTED ),
    .DPO(\uut/register_file/_varindex0000 [0])
  );
  MUXCY   \uut/comparator/Mcompar_flags_2_cmp_lt0000_cy<15>  (
    .CI(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [14]),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [15]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [15])
  );
  MUXCY   \uut/comparator/Mcompar_flags_2_cmp_lt0000_cy<14>  (
    .CI(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [13]),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [14]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [14])
  );
  MUXCY   \uut/comparator/Mcompar_flags_2_cmp_lt0000_cy<13>  (
    .CI(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [12]),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [13]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [13])
  );
  MUXCY   \uut/comparator/Mcompar_flags_2_cmp_lt0000_cy<12>  (
    .CI(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [11]),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [12]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [12])
  );
  MUXCY   \uut/comparator/Mcompar_flags_2_cmp_lt0000_cy<11>  (
    .CI(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [10]),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [11]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [11])
  );
  MUXCY   \uut/comparator/Mcompar_flags_2_cmp_lt0000_cy<10>  (
    .CI(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [9]),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [10]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [10])
  );
  MUXCY   \uut/comparator/Mcompar_flags_2_cmp_lt0000_cy<9>  (
    .CI(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [8]),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [9]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [9])
  );
  MUXCY   \uut/comparator/Mcompar_flags_2_cmp_lt0000_cy<8>  (
    .CI(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [7]),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [8]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [8])
  );
  MUXCY   \uut/comparator/Mcompar_flags_2_cmp_lt0000_cy<7>  (
    .CI(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [6]),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [7]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [7])
  );
  MUXCY   \uut/comparator/Mcompar_flags_2_cmp_lt0000_cy<6>  (
    .CI(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [5]),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [6]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [6])
  );
  MUXCY   \uut/comparator/Mcompar_flags_2_cmp_lt0000_cy<5>  (
    .CI(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [4]),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [5]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [5])
  );
  MUXCY   \uut/comparator/Mcompar_flags_2_cmp_lt0000_cy<4>  (
    .CI(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [3]),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [4]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [4])
  );
  MUXCY   \uut/comparator/Mcompar_flags_2_cmp_lt0000_cy<3>  (
    .CI(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [2]),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [3]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [3])
  );
  MUXCY   \uut/comparator/Mcompar_flags_2_cmp_lt0000_cy<2>  (
    .CI(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [1]),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [2]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [2])
  );
  MUXCY   \uut/comparator/Mcompar_flags_2_cmp_lt0000_cy<1>  (
    .CI(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [0]),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [1]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [1])
  );
  MUXCY   \uut/comparator/Mcompar_flags_2_cmp_lt0000_cy<0>  (
    .CI(N1),
    .DI(\uut/logic_unit/Mtridata_bus3 [0]),
    .S(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [0]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [0])
  );
  MUXCY   \uut/comparator/Mcompar_flags_1_cmp_ne0000_cy<7>  (
    .CI(\uut/comparator/Mcompar_flags_1_cmp_ne0000_cy [6]),
    .DI(N1),
    .S(\uut/comparator/Mcompar_flags_1_cmp_ne0000_lut [7]),
    .O(\uut/comparator/Mcompar_flags_1_cmp_ne0000_cy [7])
  );
  MUXCY   \uut/comparator/Mcompar_flags_1_cmp_ne0000_cy<6>  (
    .CI(\uut/comparator/Mcompar_flags_1_cmp_ne0000_cy [5]),
    .DI(N1),
    .S(\uut/comparator/Mcompar_flags_1_cmp_ne0000_lut [6]),
    .O(\uut/comparator/Mcompar_flags_1_cmp_ne0000_cy [6])
  );
  MUXCY   \uut/comparator/Mcompar_flags_1_cmp_ne0000_cy<5>  (
    .CI(\uut/comparator/Mcompar_flags_1_cmp_ne0000_cy [4]),
    .DI(N1),
    .S(\uut/comparator/Mcompar_flags_1_cmp_ne0000_lut [5]),
    .O(\uut/comparator/Mcompar_flags_1_cmp_ne0000_cy [5])
  );
  MUXCY   \uut/comparator/Mcompar_flags_1_cmp_ne0000_cy<4>  (
    .CI(\uut/comparator/Mcompar_flags_1_cmp_ne0000_cy [3]),
    .DI(N1),
    .S(\uut/comparator/Mcompar_flags_1_cmp_ne0000_lut [4]),
    .O(\uut/comparator/Mcompar_flags_1_cmp_ne0000_cy [4])
  );
  MUXCY   \uut/comparator/Mcompar_flags_1_cmp_ne0000_cy<3>  (
    .CI(\uut/comparator/Mcompar_flags_1_cmp_ne0000_cy [2]),
    .DI(N1),
    .S(\uut/comparator/Mcompar_flags_1_cmp_ne0000_lut [3]),
    .O(\uut/comparator/Mcompar_flags_1_cmp_ne0000_cy [3])
  );
  MUXCY   \uut/comparator/Mcompar_flags_1_cmp_ne0000_cy<2>  (
    .CI(\uut/comparator/Mcompar_flags_1_cmp_ne0000_cy [1]),
    .DI(N1),
    .S(\uut/comparator/Mcompar_flags_1_cmp_ne0000_lut [2]),
    .O(\uut/comparator/Mcompar_flags_1_cmp_ne0000_cy [2])
  );
  MUXCY   \uut/comparator/Mcompar_flags_1_cmp_ne0000_cy<1>  (
    .CI(\uut/comparator/Mcompar_flags_1_cmp_ne0000_cy [0]),
    .DI(N1),
    .S(\uut/comparator/Mcompar_flags_1_cmp_ne0000_lut [1]),
    .O(\uut/comparator/Mcompar_flags_1_cmp_ne0000_cy [1])
  );
  MUXCY   \uut/comparator/Mcompar_flags_1_cmp_ne0000_cy<0>  (
    .CI(\uut/logic_unit/Mtridata_bus3 [0]),
    .DI(N1),
    .S(\uut/comparator/Mcompar_flags_1_cmp_ne0000_lut [0]),
    .O(\uut/comparator/Mcompar_flags_1_cmp_ne0000_cy [0])
  );
  FDE   \uut/comparator/flags_0  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/cmp_load_293 ),
    .D(\uut/comparator/flags_0_mux0000 ),
    .Q(\uut/comparator/flags [0])
  );
  FDE   \uut/comparator/flags_1  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/cmp_load_293 ),
    .D(\uut/comparator/flags_1_mux0000 ),
    .Q(\uut/comparator/flags [1])
  );
  FDE   \uut/comparator/flags_2  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/cmp_load_293 ),
    .D(\uut/comparator/flags_2_mux0000 ),
    .Q(\uut/comparator/flags [2])
  );
  FDE   \uut/comparator/flags_4  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/cmp_load_293 ),
    .D(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [4]),
    .Q(\uut/comparator/flags [4])
  );
  FDE   \uut/comparator/flags_5  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/cmp_load_293 ),
    .D(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [5]),
    .Q(\uut/comparator/flags [5])
  );
  FDE   \uut/comparator/flags_3  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/cmp_load_293 ),
    .D(\uut/comparator/flags_3_mux0000 ),
    .Q(\uut/comparator/flags [3])
  );
  FDE   \uut/comparator/flags_6  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/cmp_load_293 ),
    .D(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [6]),
    .Q(\uut/comparator/flags [6])
  );
  FDE   \uut/comparator/flags_7  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/cmp_load_293 ),
    .D(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [7]),
    .Q(\uut/comparator/flags [7])
  );
  FDE   \uut/comparator/flags_9  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/cmp_load_293 ),
    .D(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [9]),
    .Q(\uut/comparator/flags [9])
  );
  FDE   \uut/comparator/flags_10  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/cmp_load_293 ),
    .D(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [10]),
    .Q(\uut/comparator/flags [10])
  );
  FDE   \uut/comparator/flags_8  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/cmp_load_293 ),
    .D(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [8]),
    .Q(\uut/comparator/flags [8])
  );
  FDE   \uut/comparator/flags_11  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/cmp_load_293 ),
    .D(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [11]),
    .Q(\uut/comparator/flags [11])
  );
  FDE   \uut/comparator/flags_12  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/cmp_load_293 ),
    .D(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [12]),
    .Q(\uut/comparator/flags [12])
  );
  FDE   \uut/comparator/flags_14  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/cmp_load_293 ),
    .D(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [14]),
    .Q(\uut/comparator/flags [14])
  );
  FDE   \uut/comparator/flags_15  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/cmp_load_293 ),
    .D(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [15]),
    .Q(\uut/comparator/flags [15])
  );
  FDE   \uut/comparator/flags_13  (
    .C(clk_BUFGP_11),
    .CE(\uut/control_unit/cmp_load_293 ),
    .D(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [13]),
    .Q(\uut/comparator/flags [13])
  );
  LUT4 #(
    .INIT ( 16'h3713 ))
  \uut/control_unit/next_step_or00051  (
    .I0(\uut/control_unit/next_step [1]),
    .I1(\uut/control_unit/next_step [3]),
    .I2(\uut/control_unit/next_step [2]),
    .I3(\uut/control_unit/next_step [0]),
    .O(\uut/control_unit/next_step_or0005 )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \uut/control_unit/reg3_write_cmp_eq00001  (
    .I0(\uut/control_unit/next_step [2]),
    .I1(\uut/control_unit/next_step [3]),
    .I2(\uut/control_unit/next_step [0]),
    .I3(\uut/control_unit/next_step [1]),
    .O(\uut/control_unit/reg3_write_cmp_eq0000 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \uut/control_unit/reg3_addr_mux0000<3>1  (
    .I0(N0),
    .I1(\uut/control_unit/reg3_addr [3]),
    .I2(\uut/control_unit/instruction [3]),
    .I3(N121),
    .O(\uut/control_unit/reg3_addr_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \uut/control_unit/reg3_addr_mux0000<2>1  (
    .I0(N24),
    .I1(\uut/control_unit/reg3_addr [2]),
    .I2(\uut/control_unit/instruction [2]),
    .I3(N121),
    .O(\uut/control_unit/reg3_addr_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \uut/control_unit/reg3_addr_mux0000<1>1  (
    .I0(N0),
    .I1(\uut/control_unit/reg3_addr [1]),
    .I2(\uut/control_unit/instruction [1]),
    .I3(N121),
    .O(\uut/control_unit/reg3_addr_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \uut/control_unit/reg3_addr_mux0000<0>1  (
    .I0(N0),
    .I1(\uut/control_unit/reg3_addr [0]),
    .I2(\uut/control_unit/instruction [0]),
    .I3(N121),
    .O(\uut/control_unit/reg3_addr_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \uut/control_unit/mem_write_cmp_eq00021  (
    .I0(\uut/control_unit/next_step [0]),
    .I1(\uut/control_unit/next_step [2]),
    .I2(\uut/control_unit/next_step [1]),
    .I3(\uut/control_unit/next_step [3]),
    .O(\uut/control_unit/instruction_not0001_inv )
  );
  LUT4 #(
    .INIT ( 16'hF700 ))
  \uut/control_unit/next_step_mux0000<1>25  (
    .I0(\uut/control_unit/reg1_read_cmp_eq0001 ),
    .I1(\uut/control_unit/reg1_read_cmp_eq0002 ),
    .I2(\uut/control_unit/next_step_mux0000<1>7_335 ),
    .I3(\uut/control_unit/next_step_mux0000<1>21_332 ),
    .O(\uut/control_unit/next_step_mux0000<1>25_333 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \uut/control_unit/i_bus_pass_mux00005  (
    .I0(\uut/control_unit/i_bus_pass_302 ),
    .I1(N20),
    .O(\uut/control_unit/i_bus_pass_mux00005_305 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \uut/control_unit/i_bus_pass_mux000016  (
    .I0(N22),
    .I1(\uut/control_unit/next_step [3]),
    .I2(\uut/control_unit/next_step [2]),
    .O(\uut/control_unit/flags_pass_mux000016 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \uut/control_unit/i_bus_pass_mux000039  (
    .I0(\uut/control_unit/reg3_addr_and0000 ),
    .I1(\uut/control_unit/reg1_read_cmp_eq0002 ),
    .I2(\uut/control_unit/flags_pass_mux000016 ),
    .I3(\uut/control_unit/i_bus_pass_mux000027_303 ),
    .O(\uut/control_unit/i_bus_pass_mux000039_304 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \uut/control_unit/flags_pass_mux00005  (
    .I0(\uut/control_unit/flags_pass_296 ),
    .I1(\uut/control_unit/flags_pass_mux00004 ),
    .O(\uut/control_unit/flags_pass_mux00005_301 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \uut/control_unit/flags_pass_mux000039  (
    .I0(\uut/control_unit/reg3_addr_and0000 ),
    .I1(\uut/control_unit/reg1_read_cmp_eq0002 ),
    .I2(\uut/control_unit/flags_pass_mux000016 ),
    .I3(\uut/control_unit/flags_pass_mux000027_298 ),
    .O(\uut/control_unit/flags_pass_mux000039_299 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \uut/control_unit/reg1_read_cmp_eq00021  (
    .I0(\uut/control_unit/instruction [9]),
    .I1(\uut/control_unit/instruction [8]),
    .I2(\uut/control_unit/instruction [11]),
    .I3(\uut/control_unit/instruction [10]),
    .O(\uut/control_unit/reg1_read_cmp_eq0002 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \uut/control_unit/next_step_cmp_eq00111  (
    .I0(\uut/control_unit/instruction [1]),
    .I1(\uut/control_unit/instruction [0]),
    .I2(\uut/control_unit/instruction [3]),
    .I3(\uut/control_unit/instruction [2]),
    .O(\uut/control_unit/next_step_cmp_eq0011 )
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  \uut/control_unit/next_step_mux0000<2>18  (
    .I0(\uut/control_unit/reg1_read_cmp_eq0001 ),
    .I1(\uut/control_unit/next_step_mux0000<2>11_337 ),
    .I2(\uut/control_unit/reg1_read_cmp_eq0002 ),
    .O(\uut/control_unit/next_step_mux0000<2>18_338 )
  );
  LUT4 #(
    .INIT ( 16'hCF8F ))
  \uut/control_unit/next_step_mux0000<2>65  (
    .I0(\uut/control_unit/next_step_mux0000<2>30_339 ),
    .I1(\uut/control_unit/next_step_mux0000<1>21_332 ),
    .I2(\uut/control_unit/next_step_or0005 ),
    .I3(\uut/control_unit/next_step_mux0000<2>18_338 ),
    .O(\uut/control_unit/next_step_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \uut/control_unit/next_step_mux0000<3>15  (
    .I0(\uut/control_unit/reg1_read_cmp_eq0002 ),
    .I1(\uut/control_unit/reg1_read_cmp_eq0001 ),
    .I2(N23),
    .O(\uut/control_unit/reg3_addr_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \uut/control_unit/reg1_addr_not00011  (
    .I0(\uut/control_unit/instruction [4]),
    .I1(\uut/control_unit/instruction [5]),
    .I2(N21),
    .I3(\uut/control_unit/reg3_addr_not0001 ),
    .O(\uut/control_unit/reg1_addr_not0001 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \uut/register_file/reg1_bus<15>LogicTrst1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [15]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [15])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \uut/register_file/reg1_bus<14>LogicTrst1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [14]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [14])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \uut/register_file/reg1_bus<13>LogicTrst1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [13]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [13])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \uut/register_file/reg1_bus<12>LogicTrst1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [12]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [12])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \uut/register_file/reg1_bus<11>LogicTrst1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [11]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [11])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \uut/register_file/reg1_bus<10>LogicTrst1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [10]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [10])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \uut/register_file/reg1_bus<9>LogicTrst1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [9]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [9])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \uut/register_file/reg1_bus<8>LogicTrst1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [8]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [8])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \uut/register_file/reg1_bus<7>LogicTrst1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [7]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [7])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \uut/register_file/reg1_bus<6>LogicTrst1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [6]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [6])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \uut/register_file/reg1_bus<5>LogicTrst1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [5]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [5])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \uut/register_file/reg1_bus<4>LogicTrst1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [4]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [4])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \uut/register_file/reg1_bus<3>LogicTrst1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [3]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [3])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \uut/register_file/reg1_bus<2>LogicTrst1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [2]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [2])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \uut/register_file/reg1_bus<1>LogicTrst1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [1]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [1])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \uut/register_file/reg1_bus<0>LogicTrst1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [0]),
    .O(\uut/comparator/Mcompar_flags_2_cmp_lt0000_lut [0])
  );
  OBUF   led_7_OBUF (
    .I(\uut/comparator/flags [15]),
    .O(led[7])
  );
  OBUF   led_6_OBUF (
    .I(\uut/comparator/flags [14]),
    .O(led[6])
  );
  OBUF   led_5_OBUF (
    .I(\uut/comparator/flags [13]),
    .O(led[5])
  );
  OBUF   led_4_OBUF (
    .I(\uut/comparator/flags [12]),
    .O(led[4])
  );
  OBUF   led_3_OBUF (
    .I(\uut/comparator/flags [11]),
    .O(led[3])
  );
  OBUF   led_2_OBUF (
    .I(\uut/comparator/flags [10]),
    .O(led[2])
  );
  OBUF   led_1_OBUF (
    .I(\uut/comparator/flags [9]),
    .O(led[1])
  );
  OBUF   led_0_OBUF (
    .I(\uut/comparator/flags [8]),
    .O(led[0])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \uut/control_unit/flags_pass  (
    .C(clk_BUFGP_11),
    .D(\uut/control_unit/flags_pass_mux000039_299 ),
    .S(\uut/control_unit/flags_pass_mux00005_301 ),
    .Q(\uut/control_unit/flags_pass_296 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  \uut/control_unit/i_bus_pass  (
    .C(clk_BUFGP_11),
    .D(\uut/control_unit/i_bus_pass_mux000039_304 ),
    .S(\uut/control_unit/i_bus_pass_mux00005_305 ),
    .Q(\uut/control_unit/i_bus_pass_302 )
  );
  FDS #(
    .INIT ( 1'b1 ))
  \uut/control_unit/next_step_3  (
    .C(clk_BUFGP_11),
    .D(\uut/control_unit/next_step_mux0000<0>1 ),
    .S(\uut/control_unit/reg3_write_cmp_eq0000 ),
    .Q(\uut/control_unit/next_step [3])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \uut/control_unit/next_step_2  (
    .C(clk_BUFGP_11),
    .D(\uut/control_unit/next_step_mux0000<1>34 ),
    .S(\uut/control_unit/next_step_mux0000<1>25_333 ),
    .Q(\uut/control_unit/next_step [2])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \uut/control_unit/next_step_0  (
    .C(clk_BUFGP_11),
    .D(\uut/control_unit/next_step_mux0000<3>33 ),
    .S(\uut/control_unit/next_step_mux0000<3>0 ),
    .Q(\uut/control_unit/next_step [0])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \uut/control_unit/next_step_mux0000<3>331  (
    .I0(\uut/control_unit/instruction [4]),
    .I1(\uut/control_unit/next_step_mux0000<3>14_341 ),
    .I2(\uut/control_unit/reg3_addr_not0001 ),
    .O(\uut/control_unit/next_step_mux0000<3>33 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  \uut/control_unit/reg3_write  (
    .C(clk_BUFGP_11),
    .D(\uut/control_unit/reg3_write_mux00001_369 ),
    .S(\uut/control_unit/reg3_write_cmp_eq0000 ),
    .Q(\uut/control_unit/reg3_write_367 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  \uut/control_unit/pc_increment  (
    .C(clk_BUFGP_11),
    .D(\uut/control_unit/pc_increment_mux000059 ),
    .S(\uut/control_unit/next_step_mux0000<3>0 ),
    .Q(\uut/control_unit/pc_increment_344 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut/program_counter/Mcount_i_addr_cy<0>_rt  (
    .I0(\uut/program_counter/i_addr [0]),
    .O(\uut/program_counter/Mcount_i_addr_cy<0>_rt_381 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut/program_counter/Mcount_i_addr_cy<1>_rt  (
    .I0(\uut/program_counter/i_addr [1]),
    .O(\uut/program_counter/Mcount_i_addr_cy<1>_rt_383 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut/program_counter/Mcount_i_addr_cy<2>_rt  (
    .I0(\uut/program_counter/i_addr [2]),
    .O(\uut/program_counter/Mcount_i_addr_cy<2>_rt_385 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut/program_counter/Mcount_i_addr_cy<3>_rt  (
    .I0(\uut/program_counter/i_addr [3]),
    .O(\uut/program_counter/Mcount_i_addr_cy<3>_rt_387 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut/program_counter/Mcount_i_addr_cy<4>_rt  (
    .I0(\uut/program_counter/i_addr [4]),
    .O(\uut/program_counter/Mcount_i_addr_cy<4>_rt_389 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut/program_counter/Mcount_i_addr_cy<5>_rt  (
    .I0(\uut/program_counter/i_addr [5]),
    .O(\uut/program_counter/Mcount_i_addr_cy<5>_rt_391 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut/program_counter/Mcount_i_addr_xor<6>_rt  (
    .I0(\uut/program_counter/i_addr [6]),
    .O(\uut/program_counter/Mcount_i_addr_xor<6>_rt_392 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mem/mux29_13_f5_0_rt  (
    .I0(\uut/program_counter/i_addr [0]),
    .O(\mem/mux29_13_f5_0_rt_203 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mem/mux27_13_f5_0_rt  (
    .I0(\uut/program_counter/i_addr [0]),
    .O(\mem/mux27_13_f5_0_rt_191 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mem/mux24_13_f5_0_rt  (
    .I0(\uut/program_counter/i_addr [0]),
    .O(\mem/mux24_13_f5_0_rt_162 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mem/mux16_13_f5_0_rt  (
    .I0(\uut/program_counter/i_addr [0]),
    .O(\mem/mux16_13_f5_0_rt_89 )
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \uut/comparator/Mcompar_flags_1_cmp_ne0000_lut<0>1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [1]),
    .I2(\uut/register_file/_varindex0000 [0]),
    .O(\uut/comparator/Mcompar_flags_1_cmp_ne0000_lut [0])
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \uut/comparator/Mcompar_flags_1_cmp_ne0000_lut<1>1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [3]),
    .I2(\uut/register_file/_varindex0000 [2]),
    .O(\uut/comparator/Mcompar_flags_1_cmp_ne0000_lut [1])
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \uut/comparator/Mcompar_flags_1_cmp_ne0000_lut<2>1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [5]),
    .I2(\uut/register_file/_varindex0000 [4]),
    .O(\uut/comparator/Mcompar_flags_1_cmp_ne0000_lut [2])
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \uut/comparator/Mcompar_flags_1_cmp_ne0000_lut<3>1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [7]),
    .I2(\uut/register_file/_varindex0000 [6]),
    .O(\uut/comparator/Mcompar_flags_1_cmp_ne0000_lut [3])
  );
  LUT4 #(
    .INIT ( 16'hF7A2 ))
  \uut/comparator/flags_1_mux00001  (
    .I0(\uut/control_unit/cmp_load_293 ),
    .I1(\uut/control_unit/reg1_read_352 ),
    .I2(\uut/register_file/_varindex0000 [1]),
    .I3(\uut/comparator/Mcompar_flags_1_cmp_ne0000_cy [7]),
    .O(\uut/comparator/flags_1_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hA2F7 ))
  \uut/comparator/flags_0_mux00001  (
    .I0(\uut/control_unit/cmp_load_293 ),
    .I1(\uut/control_unit/reg1_read_352 ),
    .I2(\uut/register_file/_varindex0000 [0]),
    .I3(\uut/comparator/Mcompar_flags_1_cmp_ne0000_cy [7]),
    .O(\uut/comparator/flags_0_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \uut/comparator/Mcompar_flags_1_cmp_ne0000_lut<4>1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [8]),
    .I2(\uut/register_file/_varindex0000 [9]),
    .O(\uut/comparator/Mcompar_flags_1_cmp_ne0000_lut [4])
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \uut/comparator/Mcompar_flags_1_cmp_ne0000_lut<5>1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [10]),
    .I2(\uut/register_file/_varindex0000 [11]),
    .O(\uut/comparator/Mcompar_flags_1_cmp_ne0000_lut [5])
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \uut/comparator/Mcompar_flags_1_cmp_ne0000_lut<6>1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [12]),
    .I2(\uut/register_file/_varindex0000 [13]),
    .O(\uut/comparator/Mcompar_flags_1_cmp_ne0000_lut [6])
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \uut/comparator/Mcompar_flags_1_cmp_ne0000_lut<7>1  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(\uut/register_file/_varindex0000 [14]),
    .I2(\uut/register_file/_varindex0000 [15]),
    .O(\uut/comparator/Mcompar_flags_1_cmp_ne0000_lut [7])
  );
  LUT4 #(
    .INIT ( 16'hA2F7 ))
  \uut/comparator/flags_2_mux00001  (
    .I0(\uut/control_unit/cmp_load_293 ),
    .I1(\uut/control_unit/reg1_read_352 ),
    .I2(\uut/register_file/_varindex0000 [2]),
    .I3(\uut/comparator/Mcompar_flags_2_cmp_lt0000_cy [15]),
    .O(\uut/comparator/flags_2_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFFF6 ))
  \uut/control_unit/reg3_write_mux00001  (
    .I0(\uut/control_unit/next_step [0]),
    .I1(\uut/control_unit/next_step [2]),
    .I2(\uut/control_unit/next_step [1]),
    .I3(\uut/control_unit/next_step [3]),
    .O(N112)
  );
  LUT4 #(
    .INIT ( 16'h0081 ))
  \uut/control_unit/pc_increment_mux00000  (
    .I0(\uut/control_unit/next_step [0]),
    .I1(\uut/control_unit/next_step [1]),
    .I2(\uut/control_unit/next_step [2]),
    .I3(\uut/control_unit/next_step [3]),
    .O(\uut/control_unit/next_step_mux0000<3>0 )
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \uut/comparator/flags_3_mux00001  (
    .I0(\uut/register_file/_varindex0000 [3]),
    .I1(\uut/control_unit/cmp_load_293 ),
    .I2(\uut/control_unit/reg1_read_352 ),
    .O(\uut/comparator/flags_3_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h0110 ))
  \uut/control_unit/reg3_addr_mux0000<0>31  (
    .I0(\uut/control_unit/instruction [6]),
    .I1(\uut/control_unit/instruction [7]),
    .I2(\uut/control_unit/instruction [4]),
    .I3(\uut/control_unit/instruction [5]),
    .O(N121)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \uut/control_unit/reg1_read_mux00005  (
    .I0(\uut/control_unit/instruction [6]),
    .I1(\uut/control_unit/instruction [7]),
    .I2(\uut/control_unit/instruction [4]),
    .I3(\uut/control_unit/instruction [5]),
    .O(\uut/control_unit/reg1_read_mux00005_356 )
  );
  LUT4 #(
    .INIT ( 16'hFB51 ))
  \d_bus<9>LogicTrst1  (
    .I0(\uut/control_unit/i_bus_pass_302 ),
    .I1(\uut/control_unit/flags_pass_296 ),
    .I2(\uut/comparator/flags [9]),
    .I3(\mem/i_bus [9]),
    .O(d_bus[9])
  );
  LUT4 #(
    .INIT ( 16'hFB51 ))
  \d_bus<8>LogicTrst1  (
    .I0(\uut/control_unit/i_bus_pass_302 ),
    .I1(\uut/control_unit/flags_pass_296 ),
    .I2(\uut/comparator/flags [8]),
    .I3(\mem/i_bus [8]),
    .O(d_bus[8])
  );
  LUT4 #(
    .INIT ( 16'hFB51 ))
  \d_bus<7>LogicTrst1  (
    .I0(\uut/control_unit/i_bus_pass_302 ),
    .I1(\uut/control_unit/flags_pass_296 ),
    .I2(\uut/comparator/flags [7]),
    .I3(\mem/i_bus [7]),
    .O(d_bus[7])
  );
  LUT4 #(
    .INIT ( 16'hFB51 ))
  \d_bus<15>LogicTrst1  (
    .I0(\uut/control_unit/i_bus_pass_302 ),
    .I1(\uut/control_unit/flags_pass_296 ),
    .I2(\uut/comparator/flags [15]),
    .I3(\mem/i_bus [15]),
    .O(d_bus[15])
  );
  LUT4 #(
    .INIT ( 16'hFB51 ))
  \d_bus<14>LogicTrst1  (
    .I0(\uut/control_unit/i_bus_pass_302 ),
    .I1(\uut/control_unit/flags_pass_296 ),
    .I2(\uut/comparator/flags [14]),
    .I3(\mem/i_bus [14]),
    .O(d_bus[14])
  );
  LUT4 #(
    .INIT ( 16'hFB51 ))
  \d_bus<13>LogicTrst1  (
    .I0(\uut/control_unit/i_bus_pass_302 ),
    .I1(\uut/control_unit/flags_pass_296 ),
    .I2(\uut/comparator/flags [13]),
    .I3(\mem/i_bus [13]),
    .O(d_bus[13])
  );
  LUT4 #(
    .INIT ( 16'hFB51 ))
  \d_bus<12>LogicTrst1  (
    .I0(\uut/control_unit/i_bus_pass_302 ),
    .I1(\uut/control_unit/flags_pass_296 ),
    .I2(\uut/comparator/flags [12]),
    .I3(\mem/i_bus [12]),
    .O(d_bus[12])
  );
  LUT4 #(
    .INIT ( 16'hFB51 ))
  \d_bus<11>LogicTrst1  (
    .I0(\uut/control_unit/i_bus_pass_302 ),
    .I1(\uut/control_unit/flags_pass_296 ),
    .I2(\uut/comparator/flags [11]),
    .I3(\mem/i_bus [11]),
    .O(d_bus[11])
  );
  LUT4 #(
    .INIT ( 16'hFB51 ))
  \d_bus<10>LogicTrst1  (
    .I0(\uut/control_unit/i_bus_pass_302 ),
    .I1(\uut/control_unit/flags_pass_296 ),
    .I2(\uut/comparator/flags [10]),
    .I3(\mem/i_bus [10]),
    .O(d_bus[10])
  );
  LUT4 #(
    .INIT ( 16'hFB51 ))
  \d_bus<6>LogicTrst1  (
    .I0(\uut/control_unit/i_bus_pass_302 ),
    .I1(\uut/control_unit/flags_pass_296 ),
    .I2(\uut/comparator/flags [6]),
    .I3(\mem/i_bus [6]),
    .O(d_bus[6])
  );
  LUT4 #(
    .INIT ( 16'hFB51 ))
  \d_bus<5>LogicTrst1  (
    .I0(\uut/control_unit/i_bus_pass_302 ),
    .I1(\uut/control_unit/flags_pass_296 ),
    .I2(\uut/comparator/flags [5]),
    .I3(\mem/i_bus [5]),
    .O(d_bus[5])
  );
  LUT4 #(
    .INIT ( 16'hFB51 ))
  \d_bus<4>LogicTrst1  (
    .I0(\uut/control_unit/i_bus_pass_302 ),
    .I1(\uut/control_unit/flags_pass_296 ),
    .I2(\uut/comparator/flags [4]),
    .I3(\mem/i_bus [4]),
    .O(d_bus[4])
  );
  LUT4 #(
    .INIT ( 16'hFB51 ))
  \d_bus<3>LogicTrst1  (
    .I0(\uut/control_unit/i_bus_pass_302 ),
    .I1(\uut/control_unit/flags_pass_296 ),
    .I2(\uut/comparator/flags [3]),
    .I3(\mem/i_bus [3]),
    .O(d_bus[3])
  );
  LUT4 #(
    .INIT ( 16'hFB51 ))
  \d_bus<2>LogicTrst1  (
    .I0(\uut/control_unit/i_bus_pass_302 ),
    .I1(\uut/control_unit/flags_pass_296 ),
    .I2(\uut/comparator/flags [2]),
    .I3(\mem/i_bus [2]),
    .O(d_bus[2])
  );
  LUT4 #(
    .INIT ( 16'hFB51 ))
  \d_bus<1>LogicTrst1  (
    .I0(\uut/control_unit/i_bus_pass_302 ),
    .I1(\uut/control_unit/flags_pass_296 ),
    .I2(\uut/comparator/flags [1]),
    .I3(\mem/i_bus [1]),
    .O(d_bus[1])
  );
  LUT4 #(
    .INIT ( 16'hFB51 ))
  \d_bus<0>LogicTrst1  (
    .I0(\uut/control_unit/i_bus_pass_302 ),
    .I1(\uut/control_unit/flags_pass_296 ),
    .I2(\uut/comparator/flags [0]),
    .I3(\mem/i_bus [0]),
    .O(d_bus[0])
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \uut/control_unit/next_step_mux0000<0>11  (
    .I0(\uut/control_unit/next_step [1]),
    .I1(\uut/control_unit/next_step [2]),
    .I2(\uut/control_unit/next_step [3]),
    .I3(\uut/control_unit/next_step [0]),
    .O(\uut/control_unit/next_step_mux0000<0>1 )
  );
  LUT4 #(
    .INIT ( 16'hC8EC ))
  \uut/control_unit/next_step_mux0000<1>341  (
    .I0(\uut/control_unit/next_step [1]),
    .I1(\uut/control_unit/next_step [3]),
    .I2(\uut/control_unit/next_step [2]),
    .I3(\uut/control_unit/next_step [0]),
    .O(\uut/control_unit/next_step_mux0000<1>34 )
  );
  LUT4 #(
    .INIT ( 16'hF8A8 ))
  \uut/control_unit/reg1_read_mux000011  (
    .I0(\uut/control_unit/reg1_read_352 ),
    .I1(N112),
    .I2(\uut/control_unit/next_step_mux0000<1>21_332 ),
    .I3(N10),
    .O(\uut/control_unit/reg1_read_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \mem/mux31_4  (
    .I0(\uut/program_counter/i_addr [3]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [5]),
    .I3(\mem/mux31_11_f61 ),
    .O(\mem/mux31_4_223 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \mem/mux30_4  (
    .I0(\uut/program_counter/i_addr [3]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [5]),
    .I3(\mem/mux30_11_f61 ),
    .O(\mem/mux30_4_215 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \mem/mux29_4  (
    .I0(\uut/program_counter/i_addr [3]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [5]),
    .I3(\mem/mux29_11_f61 ),
    .O(\mem/mux29_4_205 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \mem/mux27_4  (
    .I0(\uut/program_counter/i_addr [3]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [5]),
    .I3(\mem/mux27_11_f61 ),
    .O(\mem/mux27_4_193 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \mem/mux26_4  (
    .I0(\uut/program_counter/i_addr [3]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [5]),
    .I3(\mem/mux26_11_f61 ),
    .O(\mem/mux26_4_183 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \mem/mux25_4  (
    .I0(\uut/program_counter/i_addr [3]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [5]),
    .I3(\mem/mux25_11_f61 ),
    .O(\mem/mux25_4_172 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \mem/mux24_4  (
    .I0(\uut/program_counter/i_addr [3]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [5]),
    .I3(\mem/mux24_11_f61 ),
    .O(\mem/mux24_4_164 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \mem/mux23_4  (
    .I0(\uut/program_counter/i_addr [3]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [5]),
    .I3(\mem/mux23_11_f61 ),
    .O(\mem/mux23_4_154 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \mem/mux22_4  (
    .I0(\uut/program_counter/i_addr [3]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [5]),
    .I3(\mem/mux22_11_f61 ),
    .O(\mem/mux22_4_146 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \mem/mux21_4  (
    .I0(\uut/program_counter/i_addr [3]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [5]),
    .I3(\mem/mux21_11_f61 ),
    .O(\mem/mux21_4_138 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \mem/mux20_4  (
    .I0(\uut/program_counter/i_addr [3]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [5]),
    .I3(\mem/mux20_11_f61 ),
    .O(\mem/mux20_4_128 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \mem/mux19_4  (
    .I0(\uut/program_counter/i_addr [3]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [5]),
    .I3(\mem/mux19_11_f61 ),
    .O(\mem/mux19_4_120 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \mem/mux18_4  (
    .I0(\uut/program_counter/i_addr [3]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [5]),
    .I3(\mem/mux18_11_f61 ),
    .O(\mem/mux18_4_110 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \mem/mux17_4  (
    .I0(\uut/program_counter/i_addr [3]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [5]),
    .I3(\mem/mux17_11_f61 ),
    .O(\mem/mux17_4_102 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \mem/mux16_4  (
    .I0(\uut/program_counter/i_addr [3]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [5]),
    .I3(\mem/mux16_11_f61 ),
    .O(\mem/mux16_4_92 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \mem/mux31_3  (
    .I0(\uut/program_counter/i_addr [5]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [3]),
    .I3(\mem/mux31_9_f62 ),
    .O(\mem/mux31_3_222 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \mem/mux30_3  (
    .I0(\uut/program_counter/i_addr [5]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [3]),
    .I3(\mem/mux30_9_f62 ),
    .O(\mem/mux30_3_214 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \mem/mux29_3  (
    .I0(\uut/program_counter/i_addr [5]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [3]),
    .I3(\mem/mux29_9_f62 ),
    .O(\mem/mux29_3_204 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \mem/mux28_3  (
    .I0(\uut/program_counter/i_addr [5]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [3]),
    .I3(\mem/mux28_9_f62 ),
    .O(\mem/mux28_3_197 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \mem/mux27_3  (
    .I0(\uut/program_counter/i_addr [5]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [3]),
    .I3(\mem/mux27_9_f62 ),
    .O(\mem/mux27_3_192 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \mem/mux26_3  (
    .I0(\uut/program_counter/i_addr [5]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [3]),
    .I3(\mem/mux26_9_f62 ),
    .O(\mem/mux26_3_182 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \mem/mux25_3  (
    .I0(\uut/program_counter/i_addr [5]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [3]),
    .I3(\mem/mux25_9_f62 ),
    .O(\mem/mux25_3_171 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \mem/mux24_3  (
    .I0(\uut/program_counter/i_addr [5]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [3]),
    .I3(\mem/mux24_9_f62 ),
    .O(\mem/mux24_3_163 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \mem/mux23_3  (
    .I0(\uut/program_counter/i_addr [5]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [3]),
    .I3(\mem/mux23_9_f62 ),
    .O(\mem/mux23_3_153 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \mem/mux22_3  (
    .I0(\uut/program_counter/i_addr [5]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [3]),
    .I3(\mem/mux22_9_f62 ),
    .O(\mem/mux22_3_145 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \mem/mux21_3  (
    .I0(\uut/program_counter/i_addr [5]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [3]),
    .I3(\mem/mux21_9_f62 ),
    .O(\mem/mux21_3_137 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \mem/mux20_3  (
    .I0(\uut/program_counter/i_addr [5]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [3]),
    .I3(\mem/mux20_9_f62 ),
    .O(\mem/mux20_3_127 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \mem/mux19_3  (
    .I0(\uut/program_counter/i_addr [5]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [3]),
    .I3(\mem/mux19_9_f62 ),
    .O(\mem/mux19_3_119 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \mem/mux18_3  (
    .I0(\uut/program_counter/i_addr [5]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [3]),
    .I3(\mem/mux18_9_f62 ),
    .O(\mem/mux18_3_109 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \mem/mux17_3  (
    .I0(\uut/program_counter/i_addr [5]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [3]),
    .I3(\mem/mux17_9_f62 ),
    .O(\mem/mux17_3_101 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \mem/mux16_3  (
    .I0(\uut/program_counter/i_addr [5]),
    .I1(\uut/program_counter/i_addr [4]),
    .I2(\uut/program_counter/i_addr [3]),
    .I3(\mem/mux16_9_f62 ),
    .O(\mem/mux16_3_91 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_11)
  );
  INV   \mem/mux16_1471_INV_0  (
    .I(\uut/program_counter/i_addr [0]),
    .O(\mem/mux16_147 )
  );
  INV   \mem/mux31_12_f5_51_INV_0  (
    .I(\uut/program_counter/i_addr [0]),
    .O(\mem/mux31_12_f5_5_221 )
  );
  INV   \mem/mux30_12_f5_51_INV_0  (
    .I(\uut/program_counter/i_addr [0]),
    .O(\mem/mux30_12_f5_5_211 )
  );
  INV   \mem/mux30_13_f5_01_INV_0  (
    .I(\uut/program_counter/i_addr [0]),
    .O(\mem/mux30_13_f5_0_213 )
  );
  INV   \mem/mux27_12_f5_51_INV_0  (
    .I(\uut/program_counter/i_addr [0]),
    .O(\mem/mux27_12_f5_5_189 )
  );
  INV   \mem/mux26_12_f5_51_INV_0  (
    .I(\uut/program_counter/i_addr [0]),
    .O(\mem/mux26_12_f5_5_178 )
  );
  INV   \mem/mux26_13_f5_01_INV_0  (
    .I(\uut/program_counter/i_addr [0]),
    .O(\mem/mux26_13_f5_0_180 )
  );
  INV   \mem/mux26_13_f5_02_INV_0  (
    .I(\uut/program_counter/i_addr [0]),
    .O(\mem/mux26_13_f5_01 )
  );
  INV   \mem/mux25_12_f5_51_INV_0  (
    .I(\uut/program_counter/i_addr [0]),
    .O(\mem/mux25_12_f5_5_170 )
  );
  INV   \mem/mux24_12_f5_51_INV_0  (
    .I(\uut/program_counter/i_addr [0]),
    .O(\mem/mux24_12_f5_5_160 )
  );
  INV   \mem/mux23_12_f5_51_INV_0  (
    .I(\uut/program_counter/i_addr [0]),
    .O(\mem/mux23_12_f5_5_152 )
  );
  INV   \mem/mux22_12_f5_51_INV_0  (
    .I(\uut/program_counter/i_addr [0]),
    .O(\mem/mux22_12_f5_5_144 )
  );
  INV   \mem/mux21_12_f5_51_INV_0  (
    .I(\uut/program_counter/i_addr [0]),
    .O(\mem/mux21_12_f5_5_134 )
  );
  INV   \mem/mux21_13_f5_01_INV_0  (
    .I(\uut/program_counter/i_addr [0]),
    .O(\mem/mux21_13_f5_0_136 )
  );
  INV   \mem/mux20_12_f5_51_INV_0  (
    .I(\uut/program_counter/i_addr [0]),
    .O(\mem/mux20_12_f5_5_126 )
  );
  INV   \mem/mux19_12_f5_51_INV_0  (
    .I(\uut/program_counter/i_addr [0]),
    .O(\mem/mux19_12_f5_5_116 )
  );
  INV   \mem/mux19_13_f5_01_INV_0  (
    .I(\uut/program_counter/i_addr [0]),
    .O(\mem/mux19_13_f5_0_118 )
  );
  INV   \mem/mux18_12_f5_51_INV_0  (
    .I(\uut/program_counter/i_addr [0]),
    .O(\mem/mux18_12_f5_5_108 )
  );
  INV   \mem/mux17_12_f5_51_INV_0  (
    .I(\uut/program_counter/i_addr [0]),
    .O(\mem/mux17_12_f5_5_98 )
  );
  INV   \mem/mux17_13_f5_01_INV_0  (
    .I(\uut/program_counter/i_addr [0]),
    .O(\mem/mux17_13_f5_0_100 )
  );
  LUT4 #(
    .INIT ( 16'hF064 ))
  \uut/control_unit/cmp_load_mux00001  (
    .I0(\uut/control_unit/next_step [0]),
    .I1(\uut/control_unit/next_step [2]),
    .I2(\uut/control_unit/cmp_load_293 ),
    .I3(\uut/control_unit/next_step [1]),
    .O(\uut/control_unit/cmp_load_mux00001_295 )
  );
  MUXF5   \uut/control_unit/cmp_load_mux0000_f5  (
    .I0(\uut/control_unit/cmp_load_mux00001_295 ),
    .I1(\uut/control_unit/cmp_load_293 ),
    .S(\uut/control_unit/next_step [3]),
    .O(\uut/control_unit/cmp_load_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hEEAD ))
  \uut/control_unit/pc_increment_mux00005911  (
    .I0(\uut/control_unit/next_step [2]),
    .I1(\uut/control_unit/next_step [3]),
    .I2(\uut/control_unit/next_step [0]),
    .I3(\uut/control_unit/next_step [1]),
    .O(\uut/control_unit/pc_increment_mux0000591 )
  );
  MUXF5   \uut/control_unit/pc_increment_mux0000591_f5  (
    .I0(\uut/logic_unit/Mtridata_bus3 [0]),
    .I1(\uut/control_unit/pc_increment_mux0000591 ),
    .S(\uut/control_unit/pc_increment_344 ),
    .O(\uut/control_unit/pc_increment_mux000059 )
  );
  LUT4 #(
    .INIT ( 16'hFFF6 ))
  \uut/control_unit/reg3_write_mux000021  (
    .I0(\uut/control_unit/next_step [0]),
    .I1(\uut/control_unit/next_step [2]),
    .I2(\uut/control_unit/next_step [3]),
    .I3(\uut/control_unit/next_step [1]),
    .O(\uut/control_unit/reg3_write_mux00002 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \uut/control_unit/reg3_write_mux000022  (
    .I0(\uut/control_unit/next_step [3]),
    .I1(\uut/control_unit/next_step [0]),
    .I2(\uut/control_unit/next_step [2]),
    .I3(\uut/control_unit/next_step [1]),
    .O(\uut/control_unit/reg3_write_mux000021_371 )
  );
  MUXF5   \uut/control_unit/reg3_write_mux00002_f5  (
    .I0(\uut/control_unit/reg3_write_mux000021_371 ),
    .I1(\uut/control_unit/reg3_write_mux00002 ),
    .S(\uut/control_unit/reg3_write_367 ),
    .O(\uut/control_unit/reg3_write_mux00001_369 )
  );
  LUT4 #(
    .INIT ( 16'hF620 ))
  \uut/control_unit/mem_write_mux00001  (
    .I0(\uut/control_unit/next_step [0]),
    .I1(\uut/control_unit/next_step [2]),
    .I2(\uut/control_unit/next_step [1]),
    .I3(\uut/control_unit/mem_write_323 ),
    .O(\uut/control_unit/mem_write_mux00001_325 )
  );
  MUXF5   \uut/control_unit/mem_write_mux0000_f5  (
    .I0(\uut/control_unit/mem_write_mux00001_325 ),
    .I1(\uut/control_unit/mem_write_323 ),
    .S(\uut/control_unit/next_step [3]),
    .O(\uut/control_unit/mem_write_mux0000 )
  );
  LUT4_L #(
    .INIT ( 16'hFFEF ))
  \uut/control_unit/next_step_mux0000<1>7  (
    .I0(\uut/control_unit/instruction [7]),
    .I1(\uut/control_unit/instruction [4]),
    .I2(\uut/control_unit/instruction [5]),
    .I3(\uut/control_unit/instruction [6]),
    .LO(\uut/control_unit/next_step_mux0000<1>7_335 )
  );
  LUT4_D #(
    .INIT ( 16'hFFFE ))
  \uut/control_unit/i_bus_pass_mux00004  (
    .I0(\uut/control_unit/next_step [1]),
    .I1(\uut/control_unit/next_step [0]),
    .I2(\uut/control_unit/next_step [3]),
    .I3(\uut/control_unit/next_step [2]),
    .LO(N20),
    .O(\uut/control_unit/flags_pass_mux00004 )
  );
  LUT4_L #(
    .INIT ( 16'h1000 ))
  \uut/control_unit/i_bus_pass_mux000027  (
    .I0(\uut/control_unit/next_step [1]),
    .I1(\uut/control_unit/instruction [5]),
    .I2(\uut/control_unit/instruction [4]),
    .I3(\uut/control_unit/next_step [0]),
    .LO(\uut/control_unit/i_bus_pass_mux000027_303 )
  );
  LUT4_L #(
    .INIT ( 16'h1000 ))
  \uut/control_unit/flags_pass_mux000027  (
    .I0(\uut/control_unit/next_step [1]),
    .I1(\uut/control_unit/instruction [4]),
    .I2(\uut/control_unit/instruction [5]),
    .I3(\uut/control_unit/next_step [0]),
    .LO(\uut/control_unit/flags_pass_mux000027_298 )
  );
  LUT2_D #(
    .INIT ( 4'h1 ))
  \uut/control_unit/next_step_cmp_eq000911  (
    .I0(\uut/control_unit/instruction [6]),
    .I1(\uut/control_unit/instruction [7]),
    .LO(N21),
    .O(\uut/control_unit/reg3_addr_and0000 )
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \uut/control_unit/reg1_read_cmp_eq00011  (
    .I0(\uut/control_unit/instruction [13]),
    .I1(\uut/control_unit/instruction [12]),
    .I2(\uut/control_unit/instruction [15]),
    .I3(\uut/control_unit/instruction [14]),
    .LO(N22),
    .O(\uut/control_unit/reg1_read_cmp_eq0001 )
  );
  LUT4_L #(
    .INIT ( 16'h5DFF ))
  \uut/control_unit/next_step_mux0000<2>11  (
    .I0(\uut/control_unit/instruction [4]),
    .I1(\uut/control_unit/instruction [6]),
    .I2(\uut/control_unit/instruction [7]),
    .I3(\uut/control_unit/instruction [5]),
    .LO(\uut/control_unit/next_step_mux0000<2>11_337 )
  );
  LUT3_L #(
    .INIT ( 8'h4C ))
  \uut/control_unit/next_step_mux0000<2>30  (
    .I0(\uut/control_unit/instruction [6]),
    .I1(\uut/control_unit/instruction [7]),
    .I2(\uut/control_unit/next_step_cmp_eq0011 ),
    .LO(\uut/control_unit/next_step_mux0000<2>30_339 )
  );
  LUT4_D #(
    .INIT ( 16'h0100 ))
  \uut/control_unit/next_step_mux0000<1>21  (
    .I0(\uut/control_unit/next_step [1]),
    .I1(\uut/control_unit/next_step [2]),
    .I2(\uut/control_unit/next_step [3]),
    .I3(\uut/control_unit/next_step [0]),
    .LO(N23),
    .O(\uut/control_unit/next_step_mux0000<1>21_332 )
  );
  LUT4_D #(
    .INIT ( 16'hFFEB ))
  \uut/control_unit/reg3_addr_mux0000<0>11  (
    .I0(\uut/control_unit/instruction [6]),
    .I1(\uut/control_unit/instruction [5]),
    .I2(\uut/control_unit/instruction [4]),
    .I3(\uut/control_unit/instruction [7]),
    .LO(N24),
    .O(N0)
  );
  LUT4_L #(
    .INIT ( 16'h8101 ))
  \uut/control_unit/next_step_mux0000<3>14  (
    .I0(\uut/control_unit/instruction [5]),
    .I1(\uut/control_unit/instruction [6]),
    .I2(\uut/control_unit/instruction [7]),
    .I3(\uut/control_unit/next_step_cmp_eq0011 ),
    .LO(\uut/control_unit/next_step_mux0000<3>14_341 )
  );
  LUT3_L #(
    .INIT ( 8'h80 ))
  \uut/control_unit/reg1_read_mux000011_SW0  (
    .I0(\uut/control_unit/reg1_read_cmp_eq0001 ),
    .I1(\uut/control_unit/reg1_read_cmp_eq0002 ),
    .I2(\uut/control_unit/reg1_read_mux00005_356 ),
    .LO(N10)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

