
precision mediump float;

uniform float uTime;
uniform vec2 uResolution;
uniform sampler2D tex;
uniform sampler2D tex2;

varying vec2 vUv;



void main() {
  vec4 _texture2D_5c245303_9c7c_40e5_b18c_9998279b032d_0 = texture2D(tex2, vUv);
  vec4 _texture2D_1e30e28b_7382_42d5_ac93_7633c6f7777d_0 = texture2D(tex, vUv);
  vec4 _mix_ec82be85_aa82_4cea_95b7_1b4846c64914_2 = mix(_texture2D_5c245303_9c7c_40e5_b18c_9998279b032d_0, _texture2D_1e30e28b_7382_42d5_ac93_7633c6f7777d_0, 0.5);
  vec2 _coords_4602b39d_2766_499b_aeab_fbbe99eb67c3_0 = (vUv * 2.0 - 1.0);
  float _length_fdd87a56_4ab7_4cd4_87a2_010f676f9e68_1 = length(_coords_4602b39d_2766_499b_aeab_fbbe99eb67c3_0);
  float _substract_1ce41c13_1f1f_4235_a082_7d30437eaa12_2 = (1.0 - _length_fdd87a56_4ab7_4cd4_87a2_010f676f9e68_1);
  vec4 _multiply_d5ed6f80_b2b2_4ebf_9321_763ff1bfb25f_3 = (_substract_1ce41c13_1f1f_4235_a082_7d30437eaa12_2 * vec4(1.0, 0.0, 0.0, 1.0));
  vec4 _multiply_ec7b8bb7_00b5_4150_b47d_02351791760a_7 = (_mix_ec82be85_aa82_4cea_95b7_1b4846c64914_2 * _multiply_d5ed6f80_b2b2_4ebf_9321_763ff1bfb25f_3);
  gl_FragColor = _multiply_ec7b8bb7_00b5_4150_b47d_02351791760a_7; 
}