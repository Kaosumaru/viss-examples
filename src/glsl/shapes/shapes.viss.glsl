
precision mediump float;

uniform float uTime;
uniform vec2 uResolution;


varying vec2 vUv;

#pragma editor: preview, export
float smoothedge(float v) {
    return smoothstep(0.0, 1.0 / uResolution.x, v);
}

#pragma editor: preview, export
float circle(vec2 p, float radius) {
  return length(p) - radius;
}

#pragma editor: preview, export
float rect(vec2 p, vec2 size) {  
  vec2 d = abs(p) - size;
  return min(max(d.x, d.y), 0.0) + length(max(d,0.0));
}

#pragma editor: preview, export
float roundRect(vec2 p, vec2 size, float radius) {
  vec2 d = abs(p) - size;
  return min(max(d.x, d.y), 0.0) + length(max(d,0.0))- radius;
}

#pragma editor: preview, export
float ring(vec2 p, float radius, float width) {
  return abs(length(p) - radius * 0.5) - width;
}

#pragma editor: preview, export
float hexagon(vec2 p, float radius) {
    vec2 q = abs(p);
    return max(abs(q.y), q.x * 0.866025 + q.y * 0.5) - radius;
}

#pragma editor: preview, export
float triangle(vec2 p, float size) {
    vec2 q = abs(p);
    return max(q.x * 0.866025 + p.y * 0.5, -p.y * 0.5) - size * 0.5;
}

#pragma editor: preview, export
float ellipse(vec2 p, vec2 r, float s) {
    return (length(p / r) - s);
}

#pragma editor: preview, export
float capsule(vec2 p, vec2 a, vec2 b, float r) {
    vec2 pa = p - a, ba = b - a;
    float h = clamp( dot(pa,ba)/dot(ba,ba), 0.0, 1.0 );
    return length( pa - ba*h ) - r;
}


void main() {
  vec2 _coords_da41cc47_4e0a_493f_b40b_5d9920dc9c53_0 = (vUv * 2.0 - 1.0);
  vec2 _vec2_9ec5f13c_1b3f_452e_ba03_b45e6a275fa2_0 = vec2(-0.5, 0.0);
  vec2 _substract_543b75b8_5372_4150_8ced_032983cb6c63_2 = (_coords_da41cc47_4e0a_493f_b40b_5d9920dc9c53_0 - _vec2_9ec5f13c_1b3f_452e_ba03_b45e6a275fa2_0);
  float _glslFunction_5452a159_7bde_4956_b33e_a8e949e34a3c_3 = circle(_substract_543b75b8_5372_4150_8ced_032983cb6c63_2, 0.3);
  vec2 _coords_96268141_6368_454e_8de4_233108f67b3d_0 = (vUv * 2.0 - 1.0);
  vec2 _vec2_58f1c49d_1a4f_40ca_b9bc_0c59e2095ff0_0 = vec2(0.5, 0.0);
  vec2 _substract_81b4926f_549f_4eb6_a85e_35375ae14d6a_2 = (_coords_96268141_6368_454e_8de4_233108f67b3d_0 - _vec2_58f1c49d_1a4f_40ca_b9bc_0c59e2095ff0_0);
  float _glslFunction_4e56e2a2_5097_47c1_af4e_9da6d6e0a5dd_3 = hexagon(_substract_81b4926f_549f_4eb6_a85e_35375ae14d6a_2, 0.3);
  float _min_3a7c339a_9bdd_490c_9a99_03b395354b5e_8 = min(_glslFunction_5452a159_7bde_4956_b33e_a8e949e34a3c_3, _glslFunction_4e56e2a2_5097_47c1_af4e_9da6d6e0a5dd_3);
  float _glslFunction_1ba07b6d_d124_46c4_8fa9_6d00a18f9ee3_9 = smoothedge(_min_3a7c339a_9bdd_490c_9a99_03b395354b5e_8);
  vec4 _output_c13437f1_a1eb_47df_8791_18a6d7b2e260_10 = vec4(vec3(_glslFunction_1ba07b6d_d124_46c4_8fa9_6d00a18f9ee3_9), 1.0);
  gl_FragColor = _output_c13437f1_a1eb_47df_8791_18a6d7b2e260_10; 
}