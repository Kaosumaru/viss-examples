
precision mediump float;

uniform float uTime;
uniform vec2 uResolution;


varying vec2 vUv;



void main() {
  vec2 _coords_42aee062_f12b_4718_aed4_85ad90640498_0 = (vUv * 2.0 - 1.0);
  float _glslFunction_94a8b5e4_d393_4255_bfd3_992d5eeff603_1 = spiral(_coords_42aee062_f12b_4718_aed4_85ad90640498_0, uTime, 0.1, 0.1, 0.1);
  vec4 _output_04a6fd5d_7c60_4f71_b1b2_4294b60825e8_2 = vec4(vec3(_glslFunction_94a8b5e4_d393_4255_bfd3_992d5eeff603_1), 1.0);
  gl_FragColor = _output_04a6fd5d_7c60_4f71_b1b2_4294b60825e8_2; 
}