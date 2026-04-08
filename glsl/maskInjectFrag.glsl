/**
 * One-time pass: copy A/B from the simulation texture and set blue (obstacle mask)
 * from a canvas texture — no reaction-diffusion step.
 */
varying vec2 v_uv;
uniform sampler2D previousIterationTexture;
uniform sampler2D maskTexture;

void main() {
  vec4 prev = texture2D(previousIterationTexture, v_uv);
  float m = texture2D(maskTexture, v_uv).r;
  gl_FragColor = vec4(prev.r, prev.g, m, 1.0);
}
