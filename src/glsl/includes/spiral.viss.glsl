
precision mediump float;

uniform float uTime;
uniform vec2 uResolution;


varying vec2 vUv;



void main() {
  float _glslFunction_94a8b5e4_d393_4255_bfd3_992d5eeff603_0 = spiral(vUv, uTime, 0.1, 0.1, 0.1);
  vec4 _output_04a6fd5d_7c60_4f71_b1b2_4294b60825e8_1 = vec4(vec3(_glslFunction_94a8b5e4_d393_4255_bfd3_992d5eeff603_0), 1.0);
  gl_FragColor = _output_04a6fd5d_7c60_4f71_b1b2_4294b60825e8_1; 
}