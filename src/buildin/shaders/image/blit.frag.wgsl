struct VertexOutput {
  [[builtin(position)]] Position: vec4<f32>;
  [[location(0)]] v_uv: vec2<f32>;
};

[[stage(fragment)]]
fn main(vo: VertexOutput) -> [[location(0)]] vec4<f32> {
  return textureSample(u_texture, u_sampler, vo.v_uv);
}