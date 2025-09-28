
precision mediump float;

uniform float uTime;
uniform vec2 uResolution;


varying vec2 vUv;


float gradient(float p)
{
    vec2 pt0 = vec2(0.00,0.0);
    vec2 pt1 = vec2(0.86,0.1);
    vec2 pt2 = vec2(0.955,0.40);
    vec2 pt3 = vec2(0.99,1.0);
    vec2 pt4 = vec2(1.00,0.0);
    if (p < pt0.x) return pt0.y;
    if (p < pt1.x) return mix(pt0.y, pt1.y, (p-pt0.x) / (pt1.x-pt0.x));
    if (p < pt2.x) return mix(pt1.y, pt2.y, (p-pt1.x) / (pt2.x-pt1.x));
    if (p < pt3.x) return mix(pt2.y, pt3.y, (p-pt2.x) / (pt3.x-pt2.x));
    if (p < pt4.x) return mix(pt3.y, pt4.y, (p-pt3.x) / (pt4.x-pt3.x));
    return pt4.y;
}

#pragma editor: preview, export
float wave(vec2 uv, vec2 s12, vec2 t12, vec2 f12, vec2 h12)
{
    vec2 x12 = sin((uTime * s12 + t12 + uv.x) * f12) * h12;

    float g = gradient(uv.y / (0.5 + x12.x + x12.y));
    
	return g * 0.27;
}



void main() {
  vec2 _vec2_17c4f02d_4d47_4635_b560_577095d131d0_0 = vec2(0.0, 0.25);
  vec2 _substract_1eed4ccc_59a1_4ac5_b4f0_1601ca9f3b21_1 = (vUv - _vec2_17c4f02d_4d47_4635_b560_577095d131d0_0);
  vec2 _vec2_f496a38d_2507_4df0_847b_41c57ea4172b_0 = vec2(0.03, 0.06);
  vec2 _vec2_729ea325_5408_4685_9aca_dda50f0aa486_0 = vec2(0.0, 0.02);
  vec2 _vec2_97cbbb46_7da6_45ee_86b4_84eb0304a9f5_0 = vec2(8.0, 3.7);
  vec2 _vec2_75c44ad9_959f_42fb_bf6f_8214d9749192_0 = vec2(0.06, 0.05);
  float _glslFunction_77a0c9e3_6292_42e3_a1a0_cb11f7383f8b_6 = wave(_substract_1eed4ccc_59a1_4ac5_b4f0_1601ca9f3b21_1, _vec2_f496a38d_2507_4df0_847b_41c57ea4172b_0, _vec2_729ea325_5408_4685_9aca_dda50f0aa486_0, _vec2_97cbbb46_7da6_45ee_86b4_84eb0304a9f5_0, _vec2_75c44ad9_959f_42fb_bf6f_8214d9749192_0);
  vec2 _vec2_01d95e7c_5223_48ee_a811_2b772ab5279a_0 = vec2(0.0, 0.25);
  vec2 _substract_42d52be7_e6dd_41c0_8d43_15a173499968_1 = (vUv - _vec2_01d95e7c_5223_48ee_a811_2b772ab5279a_0);
  vec2 _vec2_8a1586ac_f95e_442f_82ef_281d579f6a53_0 = vec2(0.04, 0.07);
  vec2 _vec2_cb4ea0a3_4f77_4c5a_93b8_78e7040d33f9_0 = vec2(0.16, 0.37);
  vec2 _vec2_c83169c5_0626_462d_90fd_1857801ac420_0 = vec2(6.7, 2.89);
  vec2 _vec2_71a63d12_9188_472e_90d7_621986b7411d_0 = vec2(0.06, 0.05);
  float _glslFunction_f9ed0576_b7dd_40c8_b81c_614ef29af7e4_6 = wave(_substract_42d52be7_e6dd_41c0_8d43_15a173499968_1, _vec2_8a1586ac_f95e_442f_82ef_281d579f6a53_0, _vec2_cb4ea0a3_4f77_4c5a_93b8_78e7040d33f9_0, _vec2_c83169c5_0626_462d_90fd_1857801ac420_0, _vec2_71a63d12_9188_472e_90d7_621986b7411d_0);
  float _add_a2611dff_6120_443c_bee4_c3b6f579fb87_14 = (_glslFunction_77a0c9e3_6292_42e3_a1a0_cb11f7383f8b_6 + _glslFunction_f9ed0576_b7dd_40c8_b81c_614ef29af7e4_6);
  vec2 _vec2_6063f941_1866_4f4b_86e1_e2a5f5935c99_0 = vec2(0.0, 0.75);
  vec2 _substract_702be235_dea2_42bb_b4fb_c146be50ad95_1 = (_vec2_6063f941_1866_4f4b_86e1_e2a5f5935c99_0 - vUv);
  vec2 _vec2_f9fbbcbf_63fe_4c6b_9164_a48399454e4f_0 = vec2(0.035, 0.055);
  vec2 _vec2_8e820edd_11eb_414f_9fb5_12b479253154_0 = vec2(-0.09, 0.27);
  vec2 _vec2_9cfbf80e_94c8_4099_bfe0_e656f4cce691_0 = vec2(6.5, 3.89);
  vec2 _vec2_9eaf3dea_841e_458f_b686_d4e0ffc32968_0 = vec2(0.06, 0.05);
  float _glslFunction_f98caa9b_833e_42c1_944f_f1b67e1e86b2_6 = wave(_substract_702be235_dea2_42bb_b4fb_c146be50ad95_1, _vec2_f9fbbcbf_63fe_4c6b_9164_a48399454e4f_0, _vec2_8e820edd_11eb_414f_9fb5_12b479253154_0, _vec2_9cfbf80e_94c8_4099_bfe0_e656f4cce691_0, _vec2_9eaf3dea_841e_458f_b686_d4e0ffc32968_0);
  vec2 _vec2_bef692b1_27b1_4ca3_95c2_beb00f223baa_0 = vec2(0.0, 0.75);
  vec2 _substract_c4a32e73_883b_47f3_b155_ad131c786f58_1 = (_vec2_bef692b1_27b1_4ca3_95c2_beb00f223baa_0 - vUv);
  vec2 _vec2_a17dd400_29f4_4a03_b51e_080fad0cdee9_0 = vec2(0.032, 0.09);
  vec2 _vec2_e9060c4c_4154_47af_9ed8_782179592aa1_0 = vec2(0.08, -0.22);
  vec2 _vec2_ec514f03_6a1c_4af5_a26c_a74f341a4440_0 = vec2(6.5, 3.89);
  vec2 _vec2_b6e32d2b_5628_4d76_a8eb_7ca52e2716ab_0 = vec2(0.06, 0.05);
  float _glslFunction_dee28ad0_29a7_4c9c_82f7_498a7e831606_6 = wave(_substract_c4a32e73_883b_47f3_b155_ad131c786f58_1, _vec2_a17dd400_29f4_4a03_b51e_080fad0cdee9_0, _vec2_e9060c4c_4154_47af_9ed8_782179592aa1_0, _vec2_ec514f03_6a1c_4af5_a26c_a74f341a4440_0, _vec2_b6e32d2b_5628_4d76_a8eb_7ca52e2716ab_0);
  float _add_d535ca82_fd27_4ab6_a1c3_c5f270b6c09b_14 = (_glslFunction_f98caa9b_833e_42c1_944f_f1b67e1e86b2_6 + _glslFunction_dee28ad0_29a7_4c9c_82f7_498a7e831606_6);
  float _add_257471cc_05a9_4ed6_acf0_3b0ae4bec031_30 = (_add_a2611dff_6120_443c_bee4_c3b6f579fb87_14 + _add_d535ca82_fd27_4ab6_a1c3_c5f270b6c09b_14);
  float _add_7302d785_f288_449b_9655_f1f949fa6045_0 = (vUv.x + (1.0 -  vUv.y));
  float _multiply_07547829_d0c3_459b_a169_b547900a1aac_1 = (_add_7302d785_f288_449b_9655_f1f949fa6045_0 * 0.55);
  vec4 _mix_ad0577b9_8db4_4f68_a14b_fd0e9639c9a3_2 = mix(vec4(0.069, 0.069, 0.517, 1.0), vec4(0.336, 0.582, 0.917, 1.0), _multiply_07547829_d0c3_459b_a169_b547900a1aac_1);
  vec4 _add_fd388b63_3a53_46c1_9bd1_c36a5bf8a12e_34 = (_add_257471cc_05a9_4ed6_acf0_3b0ae4bec031_30 + _mix_ad0577b9_8db4_4f68_a14b_fd0e9639c9a3_2);
  gl_FragColor = _add_fd388b63_3a53_46c1_9bd1_c36a5bf8a12e_34; 
}