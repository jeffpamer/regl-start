// circle code comes from:
// https://www.desultoryquest.com/blog/drawing-anti-aliased-circular-points-using-opengl-slash-webgl/

precision mediump float;
uniform vec4 color;

void main() {
  float r = 0.0, delta = 0.0, alpha = 1.0;
  vec2 cxy = 2.0 * gl_PointCoord - 1.0;
  r = dot(cxy, cxy);
  if (r > 1.0) {
      discard;
  }
  gl_FragColor = color * alpha;
}