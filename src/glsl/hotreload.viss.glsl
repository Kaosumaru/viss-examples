
precision mediump float;

uniform float uTime;
uniform vec2 uResolution;
uniform sampler2D tex;

varying vec2 vUv;



void main() {
  float _sin_648ef2be_a32b_41a7_a1fc_7b2a5e0209fd_0 = sin(uTime);
  float _abs_1051fa2c_bca9_4dc6_bf61_048cf8a6a7f4_1 = abs(_sin_648ef2be_a32b_41a7_a1fc_7b2a5e0209fd_0);
  vec4 _multiply_08f47099_8de6_4980_8c90_78653ff0520d_2 = (vec4(0.017, 0.0, 1.0, 1.0) * _abs_1051fa2c_bca9_4dc6_bf61_048cf8a6a7f4_1);
  gl_FragColor = _multiply_08f47099_8de6_4980_8c90_78653ff0520d_2; 
}