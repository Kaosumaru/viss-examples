
precision mediump float;

uniform float uTime;
uniform vec2 uResolution;


varying vec2 vUv;

#define PI 3.14159265358979323846

#pragma editor: preview, export
float add(float a, float b) {
  return a + b;
}

#pragma editor: preview, export
float spiral(vec2 uv, float time, float dis, float width, float blur)
{
    vec2 o=uv;
    float angle=atan(o.y,o.x);
    float l=length(o);
    float offset=l+(angle/(2.*PI))*dis;
    float circles=mod(offset-time,dis);
    return (smoothstep(circles-blur,circles,width)-smoothstep(circles,circles+blur,width));
}

void main() {
  float _glslFunction_94a8b5e4_d393_4255_bfd3_992d5eeff603_0 = spiral(vUv, uTime, 0.1, 0.1, 0.1);
  vec4 _output_04a6fd5d_7c60_4f71_b1b2_4294b60825e8_1 = vec4(vec3(_glslFunction_94a8b5e4_d393_4255_bfd3_992d5eeff603_0), 1.0);
  gl_FragColor = _output_04a6fd5d_7c60_4f71_b1b2_4294b60825e8_1; 
}