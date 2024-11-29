use core::felt252_div;

pub const CONSTRAINT_DEGREE: u32 = 2;

pub type DynamicParams = Span<usize>;
pub mod DynamicParamsIndex {
    pub const add_mod_a0_suboffset: usize = 0;
    pub const add_mod_a1_suboffset: usize = 1;
    pub const add_mod_a2_suboffset: usize = 2;
    pub const add_mod_a3_suboffset: usize = 3;
    pub const add_mod_a_offset_suboffset: usize = 4;
    pub const add_mod_b0_suboffset: usize = 5;
    pub const add_mod_b1_suboffset: usize = 6;
    pub const add_mod_b2_suboffset: usize = 7;
    pub const add_mod_b3_suboffset: usize = 8;
    pub const add_mod_b_offset_suboffset: usize = 9;
    pub const add_mod_c0_suboffset: usize = 10;
    pub const add_mod_c1_suboffset: usize = 11;
    pub const add_mod_c2_suboffset: usize = 12;
    pub const add_mod_c3_suboffset: usize = 13;
    pub const add_mod_c_offset_suboffset: usize = 14;
    pub const add_mod_carry1_bit_column: usize = 15;
    pub const add_mod_carry1_bit_offset: usize = 16;
    pub const add_mod_carry1_sign_column: usize = 17;
    pub const add_mod_carry1_sign_offset: usize = 18;
    pub const add_mod_carry2_bit_column: usize = 19;
    pub const add_mod_carry2_bit_offset: usize = 20;
    pub const add_mod_carry2_sign_column: usize = 21;
    pub const add_mod_carry2_sign_offset: usize = 22;
    pub const add_mod_carry3_bit_column: usize = 23;
    pub const add_mod_carry3_bit_offset: usize = 24;
    pub const add_mod_carry3_sign_column: usize = 25;
    pub const add_mod_carry3_sign_offset: usize = 26;
    pub const add_mod_n_suboffset: usize = 27;
    pub const add_mod_offsets_ptr_suboffset: usize = 28;
    pub const add_mod_p0_suboffset: usize = 29;
    pub const add_mod_p1_suboffset: usize = 30;
    pub const add_mod_p2_suboffset: usize = 31;
    pub const add_mod_p3_suboffset: usize = 32;
    pub const add_mod_row_ratio: usize = 33;
    pub const add_mod_sub_p_bit_column: usize = 34;
    pub const add_mod_sub_p_bit_offset: usize = 35;
    pub const add_mod_values_ptr_suboffset: usize = 36;
    pub const bitwise_diluted_var_pool_suboffset: usize = 37;
    pub const bitwise_row_ratio: usize = 38;
    pub const bitwise_trim_unpacking192_suboffset: usize = 39;
    pub const bitwise_trim_unpacking193_suboffset: usize = 40;
    pub const bitwise_trim_unpacking194_suboffset: usize = 41;
    pub const bitwise_trim_unpacking195_suboffset: usize = 42;
    pub const bitwise_var_pool_suboffset: usize = 43;
    pub const bitwise_x_or_y_suboffset: usize = 44;
    pub const cpu_decode_mem_inst_suboffset: usize = 45;
    pub const cpu_decode_off0_suboffset: usize = 46;
    pub const cpu_decode_off1_suboffset: usize = 47;
    pub const cpu_decode_off2_suboffset: usize = 48;
    pub const cpu_decode_opcode_range_check_column_column: usize = 49;
    pub const cpu_decode_opcode_range_check_column_offset: usize = 50;
    pub const cpu_operands_mem_dst_suboffset: usize = 51;
    pub const cpu_operands_mem_op0_suboffset: usize = 52;
    pub const cpu_operands_mem_op1_suboffset: usize = 53;
    pub const cpu_operands_ops_mul_column: usize = 54;
    pub const cpu_operands_ops_mul_offset: usize = 55;
    pub const cpu_operands_res_column: usize = 56;
    pub const cpu_operands_res_offset: usize = 57;
    pub const cpu_registers_ap_column: usize = 58;
    pub const cpu_registers_ap_offset: usize = 59;
    pub const cpu_registers_fp_column: usize = 60;
    pub const cpu_registers_fp_offset: usize = 61;
    pub const cpu_update_registers_update_pc_tmp0_column: usize = 62;
    pub const cpu_update_registers_update_pc_tmp0_offset: usize = 63;
    pub const cpu_update_registers_update_pc_tmp1_column: usize = 64;
    pub const cpu_update_registers_update_pc_tmp1_offset: usize = 65;
    pub const cpu_component_step: usize = 66;
    pub const diluted_check_cumulative_value_column: usize = 67;
    pub const diluted_check_cumulative_value_offset: usize = 68;
    pub const diluted_check_permutation_cum_prod0_column: usize = 69;
    pub const diluted_check_permutation_cum_prod0_offset: usize = 70;
    pub const diluted_check_permuted_values_column: usize = 71;
    pub const diluted_check_permuted_values_offset: usize = 72;
    pub const diluted_pool_column: usize = 73;
    pub const diluted_pool_offset: usize = 74;
    pub const diluted_units_row_ratio: usize = 75;
    pub const ec_op_doubled_points_x_column: usize = 76;
    pub const ec_op_doubled_points_x_offset: usize = 77;
    pub const ec_op_doubled_points_y_column: usize = 78;
    pub const ec_op_doubled_points_y_offset: usize = 79;
    pub const ec_op_doubling_slope_column: usize = 80;
    pub const ec_op_doubling_slope_offset: usize = 81;
    pub const ec_op_ec_subset_sum_bit_unpacking_prod_ones192_column: usize = 82;
    pub const ec_op_ec_subset_sum_bit_unpacking_prod_ones192_offset: usize = 83;
    pub const ec_op_ec_subset_sum_bit_unpacking_prod_ones196_column: usize = 84;
    pub const ec_op_ec_subset_sum_bit_unpacking_prod_ones196_offset: usize = 85;
    pub const ec_op_ec_subset_sum_partial_sum_x_column: usize = 86;
    pub const ec_op_ec_subset_sum_partial_sum_x_offset: usize = 87;
    pub const ec_op_ec_subset_sum_partial_sum_y_column: usize = 88;
    pub const ec_op_ec_subset_sum_partial_sum_y_offset: usize = 89;
    pub const ec_op_ec_subset_sum_selector_column: usize = 90;
    pub const ec_op_ec_subset_sum_selector_offset: usize = 91;
    pub const ec_op_ec_subset_sum_slope_column: usize = 92;
    pub const ec_op_ec_subset_sum_slope_offset: usize = 93;
    pub const ec_op_ec_subset_sum_x_diff_inv_column: usize = 94;
    pub const ec_op_ec_subset_sum_x_diff_inv_offset: usize = 95;
    pub const ec_op_m_suboffset: usize = 96;
    pub const ec_op_p_x_suboffset: usize = 97;
    pub const ec_op_p_y_suboffset: usize = 98;
    pub const ec_op_q_x_suboffset: usize = 99;
    pub const ec_op_q_y_suboffset: usize = 100;
    pub const ec_op_r_x_suboffset: usize = 101;
    pub const ec_op_r_y_suboffset: usize = 102;
    pub const ec_op_builtin_row_ratio: usize = 103;
    pub const ecdsa_message_suboffset: usize = 104;
    pub const ecdsa_pubkey_suboffset: usize = 105;
    pub const ecdsa_signature0_add_results_inv_column: usize = 106;
    pub const ecdsa_signature0_add_results_inv_offset: usize = 107;
    pub const ecdsa_signature0_add_results_slope_column: usize = 108;
    pub const ecdsa_signature0_add_results_slope_offset: usize = 109;
    pub const ecdsa_signature0_doubling_slope_column: usize = 110;
    pub const ecdsa_signature0_doubling_slope_offset: usize = 111;
    pub const ecdsa_signature0_exponentiate_generator_partial_sum_x_column: usize = 112;
    pub const ecdsa_signature0_exponentiate_generator_partial_sum_x_offset: usize = 113;
    pub const ecdsa_signature0_exponentiate_generator_partial_sum_y_column: usize = 114;
    pub const ecdsa_signature0_exponentiate_generator_partial_sum_y_offset: usize = 115;
    pub const ecdsa_signature0_exponentiate_generator_selector_column: usize = 116;
    pub const ecdsa_signature0_exponentiate_generator_selector_offset: usize = 117;
    pub const ecdsa_signature0_exponentiate_generator_slope_column: usize = 118;
    pub const ecdsa_signature0_exponentiate_generator_slope_offset: usize = 119;
    pub const ecdsa_signature0_exponentiate_generator_x_diff_inv_column: usize = 120;
    pub const ecdsa_signature0_exponentiate_generator_x_diff_inv_offset: usize = 121;
    pub const ecdsa_signature0_exponentiate_key_partial_sum_x_column: usize = 122;
    pub const ecdsa_signature0_exponentiate_key_partial_sum_x_offset: usize = 123;
    pub const ecdsa_signature0_exponentiate_key_partial_sum_y_column: usize = 124;
    pub const ecdsa_signature0_exponentiate_key_partial_sum_y_offset: usize = 125;
    pub const ecdsa_signature0_exponentiate_key_selector_column: usize = 126;
    pub const ecdsa_signature0_exponentiate_key_selector_offset: usize = 127;
    pub const ecdsa_signature0_exponentiate_key_slope_column: usize = 128;
    pub const ecdsa_signature0_exponentiate_key_slope_offset: usize = 129;
    pub const ecdsa_signature0_exponentiate_key_x_diff_inv_column: usize = 130;
    pub const ecdsa_signature0_exponentiate_key_x_diff_inv_offset: usize = 131;
    pub const ecdsa_signature0_extract_r_inv_column: usize = 132;
    pub const ecdsa_signature0_extract_r_inv_offset: usize = 133;
    pub const ecdsa_signature0_extract_r_slope_column: usize = 134;
    pub const ecdsa_signature0_extract_r_slope_offset: usize = 135;
    pub const ecdsa_signature0_key_points_x_column: usize = 136;
    pub const ecdsa_signature0_key_points_x_offset: usize = 137;
    pub const ecdsa_signature0_key_points_y_column: usize = 138;
    pub const ecdsa_signature0_key_points_y_offset: usize = 139;
    pub const ecdsa_signature0_q_x_squared_column: usize = 140;
    pub const ecdsa_signature0_q_x_squared_offset: usize = 141;
    pub const ecdsa_signature0_r_w_inv_column: usize = 142;
    pub const ecdsa_signature0_r_w_inv_offset: usize = 143;
    pub const ecdsa_signature0_z_inv_column: usize = 144;
    pub const ecdsa_signature0_z_inv_offset: usize = 145;
    pub const ecdsa_builtin_row_ratio: usize = 146;
    pub const keccak_input_output_suboffset: usize = 147;
    pub const keccak_keccak_diluted_column0_suboffset: usize = 148;
    pub const keccak_keccak_diluted_column1_suboffset: usize = 149;
    pub const keccak_keccak_diluted_column2_suboffset: usize = 150;
    pub const keccak_keccak_diluted_column3_suboffset: usize = 151;
    pub const keccak_keccak_parse_to_diluted_cumulative_sum_column: usize = 152;
    pub const keccak_keccak_parse_to_diluted_cumulative_sum_offset: usize = 153;
    pub const keccak_keccak_parse_to_diluted_final_reshaped_input_column: usize = 154;
    pub const keccak_keccak_parse_to_diluted_final_reshaped_input_offset: usize = 155;
    pub const keccak_keccak_parse_to_diluted_reshaped_intermediate_column: usize = 156;
    pub const keccak_keccak_parse_to_diluted_reshaped_intermediate_offset: usize = 157;
    pub const keccak_keccak_rotated_parity0_column: usize = 158;
    pub const keccak_keccak_rotated_parity0_offset: usize = 159;
    pub const keccak_keccak_rotated_parity1_column: usize = 160;
    pub const keccak_keccak_rotated_parity1_offset: usize = 161;
    pub const keccak_keccak_rotated_parity2_column: usize = 162;
    pub const keccak_keccak_rotated_parity2_offset: usize = 163;
    pub const keccak_keccak_rotated_parity3_column: usize = 164;
    pub const keccak_keccak_rotated_parity3_offset: usize = 165;
    pub const keccak_keccak_rotated_parity4_column: usize = 166;
    pub const keccak_keccak_rotated_parity4_offset: usize = 167;
    pub const keccak_row_ratio: usize = 168;
    pub const mem_pool_addr_column: usize = 169;
    pub const mem_pool_addr_offset: usize = 170;
    pub const mem_pool_value_column: usize = 171;
    pub const mem_pool_value_offset: usize = 172;
    pub const memory_multi_column_perm_perm_cum_prod0_column: usize = 173;
    pub const memory_multi_column_perm_perm_cum_prod0_offset: usize = 174;
    pub const memory_sorted_addr_column: usize = 175;
    pub const memory_sorted_addr_offset: usize = 176;
    pub const memory_sorted_value_column: usize = 177;
    pub const memory_sorted_value_offset: usize = 178;
    pub const memory_units_row_ratio: usize = 179;
    pub const mul_mod_a0_suboffset: usize = 180;
    pub const mul_mod_a1_suboffset: usize = 181;
    pub const mul_mod_a2_suboffset: usize = 182;
    pub const mul_mod_a3_suboffset: usize = 183;
    pub const mul_mod_a_offset_suboffset: usize = 184;
    pub const mul_mod_b0_suboffset: usize = 185;
    pub const mul_mod_b1_suboffset: usize = 186;
    pub const mul_mod_b2_suboffset: usize = 187;
    pub const mul_mod_b3_suboffset: usize = 188;
    pub const mul_mod_b_offset_suboffset: usize = 189;
    pub const mul_mod_c0_suboffset: usize = 190;
    pub const mul_mod_c1_suboffset: usize = 191;
    pub const mul_mod_c2_suboffset: usize = 192;
    pub const mul_mod_c3_suboffset: usize = 193;
    pub const mul_mod_c_offset_suboffset: usize = 194;
    pub const mul_mod_carry0_part0_suboffset: usize = 195;
    pub const mul_mod_carry0_part1_suboffset: usize = 196;
    pub const mul_mod_carry0_part2_suboffset: usize = 197;
    pub const mul_mod_carry0_part3_suboffset: usize = 198;
    pub const mul_mod_carry0_part4_suboffset: usize = 199;
    pub const mul_mod_carry0_part5_suboffset: usize = 200;
    pub const mul_mod_carry0_part6_suboffset: usize = 201;
    pub const mul_mod_carry1_part0_suboffset: usize = 202;
    pub const mul_mod_carry1_part1_suboffset: usize = 203;
    pub const mul_mod_carry1_part2_suboffset: usize = 204;
    pub const mul_mod_carry1_part3_suboffset: usize = 205;
    pub const mul_mod_carry1_part4_suboffset: usize = 206;
    pub const mul_mod_carry1_part5_suboffset: usize = 207;
    pub const mul_mod_carry1_part6_suboffset: usize = 208;
    pub const mul_mod_carry2_part0_suboffset: usize = 209;
    pub const mul_mod_carry2_part1_suboffset: usize = 210;
    pub const mul_mod_carry2_part2_suboffset: usize = 211;
    pub const mul_mod_carry2_part3_suboffset: usize = 212;
    pub const mul_mod_carry2_part4_suboffset: usize = 213;
    pub const mul_mod_carry2_part5_suboffset: usize = 214;
    pub const mul_mod_carry2_part6_suboffset: usize = 215;
    pub const mul_mod_carry3_part0_suboffset: usize = 216;
    pub const mul_mod_carry3_part1_suboffset: usize = 217;
    pub const mul_mod_carry3_part2_suboffset: usize = 218;
    pub const mul_mod_carry3_part3_suboffset: usize = 219;
    pub const mul_mod_carry3_part4_suboffset: usize = 220;
    pub const mul_mod_carry3_part5_suboffset: usize = 221;
    pub const mul_mod_carry3_part6_suboffset: usize = 222;
    pub const mul_mod_carry4_part0_suboffset: usize = 223;
    pub const mul_mod_carry4_part1_suboffset: usize = 224;
    pub const mul_mod_carry4_part2_suboffset: usize = 225;
    pub const mul_mod_carry4_part3_suboffset: usize = 226;
    pub const mul_mod_carry4_part4_suboffset: usize = 227;
    pub const mul_mod_carry4_part5_suboffset: usize = 228;
    pub const mul_mod_carry4_part6_suboffset: usize = 229;
    pub const mul_mod_carry5_part0_suboffset: usize = 230;
    pub const mul_mod_carry5_part1_suboffset: usize = 231;
    pub const mul_mod_carry5_part2_suboffset: usize = 232;
    pub const mul_mod_carry5_part3_suboffset: usize = 233;
    pub const mul_mod_carry5_part4_suboffset: usize = 234;
    pub const mul_mod_carry5_part5_suboffset: usize = 235;
    pub const mul_mod_carry5_part6_suboffset: usize = 236;
    pub const mul_mod_n_suboffset: usize = 237;
    pub const mul_mod_offsets_ptr_suboffset: usize = 238;
    pub const mul_mod_p0_suboffset: usize = 239;
    pub const mul_mod_p1_suboffset: usize = 240;
    pub const mul_mod_p2_suboffset: usize = 241;
    pub const mul_mod_p3_suboffset: usize = 242;
    pub const mul_mod_p_multiplier0_part0_suboffset: usize = 243;
    pub const mul_mod_p_multiplier0_part1_suboffset: usize = 244;
    pub const mul_mod_p_multiplier0_part2_suboffset: usize = 245;
    pub const mul_mod_p_multiplier0_part3_suboffset: usize = 246;
    pub const mul_mod_p_multiplier0_part4_suboffset: usize = 247;
    pub const mul_mod_p_multiplier0_part5_suboffset: usize = 248;
    pub const mul_mod_p_multiplier1_part0_suboffset: usize = 249;
    pub const mul_mod_p_multiplier1_part1_suboffset: usize = 250;
    pub const mul_mod_p_multiplier1_part2_suboffset: usize = 251;
    pub const mul_mod_p_multiplier1_part3_suboffset: usize = 252;
    pub const mul_mod_p_multiplier1_part4_suboffset: usize = 253;
    pub const mul_mod_p_multiplier1_part5_suboffset: usize = 254;
    pub const mul_mod_p_multiplier2_part0_suboffset: usize = 255;
    pub const mul_mod_p_multiplier2_part1_suboffset: usize = 256;
    pub const mul_mod_p_multiplier2_part2_suboffset: usize = 257;
    pub const mul_mod_p_multiplier2_part3_suboffset: usize = 258;
    pub const mul_mod_p_multiplier2_part4_suboffset: usize = 259;
    pub const mul_mod_p_multiplier2_part5_suboffset: usize = 260;
    pub const mul_mod_p_multiplier3_part0_suboffset: usize = 261;
    pub const mul_mod_p_multiplier3_part1_suboffset: usize = 262;
    pub const mul_mod_p_multiplier3_part2_suboffset: usize = 263;
    pub const mul_mod_p_multiplier3_part3_suboffset: usize = 264;
    pub const mul_mod_p_multiplier3_part4_suboffset: usize = 265;
    pub const mul_mod_p_multiplier3_part5_suboffset: usize = 266;
    pub const mul_mod_row_ratio: usize = 267;
    pub const mul_mod_values_ptr_suboffset: usize = 268;
    pub const num_columns_first: usize = 269;
    pub const num_columns_second: usize = 270;
    pub const orig_public_memory_suboffset: usize = 271;
    pub const pedersen_hash0_ec_subset_sum_bit_unpacking_prod_ones192_column: usize = 272;
    pub const pedersen_hash0_ec_subset_sum_bit_unpacking_prod_ones192_offset: usize = 273;
    pub const pedersen_hash0_ec_subset_sum_bit_unpacking_prod_ones196_column: usize = 274;
    pub const pedersen_hash0_ec_subset_sum_bit_unpacking_prod_ones196_offset: usize = 275;
    pub const pedersen_hash0_ec_subset_sum_partial_sum_x_column: usize = 276;
    pub const pedersen_hash0_ec_subset_sum_partial_sum_x_offset: usize = 277;
    pub const pedersen_hash0_ec_subset_sum_partial_sum_y_column: usize = 278;
    pub const pedersen_hash0_ec_subset_sum_partial_sum_y_offset: usize = 279;
    pub const pedersen_hash0_ec_subset_sum_selector_column: usize = 280;
    pub const pedersen_hash0_ec_subset_sum_selector_offset: usize = 281;
    pub const pedersen_hash0_ec_subset_sum_slope_column: usize = 282;
    pub const pedersen_hash0_ec_subset_sum_slope_offset: usize = 283;
    pub const pedersen_input0_suboffset: usize = 284;
    pub const pedersen_input1_suboffset: usize = 285;
    pub const pedersen_output_suboffset: usize = 286;
    pub const pedersen_builtin_row_ratio: usize = 287;
    pub const poseidon_param_0_input_output_suboffset: usize = 288;
    pub const poseidon_param_1_input_output_suboffset: usize = 289;
    pub const poseidon_param_2_input_output_suboffset: usize = 290;
    pub const poseidon_poseidon_full_rounds_state0_column: usize = 291;
    pub const poseidon_poseidon_full_rounds_state0_offset: usize = 292;
    pub const poseidon_poseidon_full_rounds_state0_squared_column: usize = 293;
    pub const poseidon_poseidon_full_rounds_state0_squared_offset: usize = 294;
    pub const poseidon_poseidon_full_rounds_state1_column: usize = 295;
    pub const poseidon_poseidon_full_rounds_state1_offset: usize = 296;
    pub const poseidon_poseidon_full_rounds_state1_squared_column: usize = 297;
    pub const poseidon_poseidon_full_rounds_state1_squared_offset: usize = 298;
    pub const poseidon_poseidon_full_rounds_state2_column: usize = 299;
    pub const poseidon_poseidon_full_rounds_state2_offset: usize = 300;
    pub const poseidon_poseidon_full_rounds_state2_squared_column: usize = 301;
    pub const poseidon_poseidon_full_rounds_state2_squared_offset: usize = 302;
    pub const poseidon_poseidon_partial_rounds_state0_column: usize = 303;
    pub const poseidon_poseidon_partial_rounds_state0_offset: usize = 304;
    pub const poseidon_poseidon_partial_rounds_state0_squared_column: usize = 305;
    pub const poseidon_poseidon_partial_rounds_state0_squared_offset: usize = 306;
    pub const poseidon_poseidon_partial_rounds_state1_column: usize = 307;
    pub const poseidon_poseidon_partial_rounds_state1_offset: usize = 308;
    pub const poseidon_poseidon_partial_rounds_state1_squared_column: usize = 309;
    pub const poseidon_poseidon_partial_rounds_state1_squared_offset: usize = 310;
    pub const poseidon_row_ratio: usize = 311;
    pub const range_check16_perm_cum_prod0_column: usize = 312;
    pub const range_check16_perm_cum_prod0_offset: usize = 313;
    pub const range_check16_sorted_column: usize = 314;
    pub const range_check16_sorted_offset: usize = 315;
    pub const range_check16_pool_column: usize = 316;
    pub const range_check16_pool_offset: usize = 317;
    pub const range_check96_builtin_inner_range_check0_suboffset: usize = 318;
    pub const range_check96_builtin_inner_range_check1_suboffset: usize = 319;
    pub const range_check96_builtin_inner_range_check2_suboffset: usize = 320;
    pub const range_check96_builtin_inner_range_check3_suboffset: usize = 321;
    pub const range_check96_builtin_inner_range_check4_suboffset: usize = 322;
    pub const range_check96_builtin_inner_range_check5_suboffset: usize = 323;
    pub const range_check96_builtin_mem_suboffset: usize = 324;
    pub const range_check96_builtin_row_ratio: usize = 325;
    pub const range_check_builtin_inner_range_check_suboffset: usize = 326;
    pub const range_check_builtin_mem_suboffset: usize = 327;
    pub const range_check_builtin_row_ratio: usize = 328;
    pub const range_check_units_row_ratio: usize = 329;
    pub const uses_add_mod_builtin: usize = 330;
    pub const uses_bitwise_builtin: usize = 331;
    pub const uses_ec_op_builtin: usize = 332;
    pub const uses_ecdsa_builtin: usize = 333;
    pub const uses_keccak_builtin: usize = 334;
    pub const uses_mul_mod_builtin: usize = 335;
    pub const uses_pedersen_builtin: usize = 336;
    pub const uses_poseidon_builtin: usize = 337;
    pub const uses_range_check96_builtin: usize = 338;
    pub const uses_range_check_builtin: usize = 339;
}

pub fn pow(base: felt252, exp: felt252) -> felt252 {
    if exp == 0 {
        return 1;
    }
    let mut exp: u256 = exp.into();
    let mut res = 1;
    let mut curr_base = base;

    loop {
        if exp == 0 {
            break;
        } else {
            if exp % 2 == 1 {
                res = res * curr_base;
            }
            curr_base = curr_base * curr_base;
            exp = exp / 2;
        }
    };
    res
}

pub impl Felt252Div of Div<felt252> {
    fn div(lhs: felt252, rhs: felt252) -> felt252 {
        felt252_div(lhs, rhs.try_into().unwrap())
    }
}

pub impl DivRemFelt252 of DivRem<felt252> {
    fn div_rem(lhs: felt252, rhs: NonZero<felt252>) -> (felt252, felt252) {
        let (q, r) = DivRem::div_rem(
            Into::<felt252, u256>::into(lhs),
            TryInto::<u256, NonZero<u256>>::try_into(Into::<felt252, u256>::into(rhs.into()))
                .unwrap(),
        );
        (q.try_into().unwrap(), r.try_into().unwrap())
    }
}

pub impl Felt252PartialOrd of PartialOrd<felt252> {
    fn le(lhs: felt252, rhs: felt252) -> bool {
        Into::<felt252, u256>::into(lhs) <= Into::<felt252, u256>::into(rhs)
    }

    fn ge(lhs: felt252, rhs: felt252) -> bool {
        Into::<felt252, u256>::into(lhs) >= Into::<felt252, u256>::into(rhs)
    }

    fn lt(lhs: felt252, rhs: felt252) -> bool {
        Into::<felt252, u256>::into(lhs) < Into::<felt252, u256>::into(rhs)
    }

    fn gt(lhs: felt252, rhs: felt252) -> bool {
        Into::<felt252, u256>::into(lhs) > Into::<felt252, u256>::into(rhs)
    }
}
