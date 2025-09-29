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
