[[block]] struct Uniforms {
  u_mvp: mat4x4<f32>;
};
[[binding(0), group(0)]] var<uniform> uniforms: Uniforms;

struct VertexOutput {
  [[builtin(position)]] Position: vec4<f32>;
  [[location(0)]] v_uv: vec2<f32>;
};

[[stage(vertex)]]
fn main([[location(0)]] a_position: vec4<f32>, [[location(1)]] a_uv: vec2<f32>) -> VertexOutput {
  var output: VertexOutput;

  output.Position = uniforms.u_mvp * a_position;
  output.v_uv = a_uv;

  return output;
}
