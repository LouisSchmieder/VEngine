module backend

pub fn (shader Shader) init(str string) {
	shader.shader_init(shader.data, str)
}

pub fn (shader Shader) compile() ? {
	shader.shader_compile(shader.data) ?
}

pub fn (shader Shader) start() {
	shader.shader_start(shader.data)
}

pub fn (shader Shader) stop() {
	shader.shader_stop(shader.data)
}

pub fn (shader Shader) get_id() u32 {
	return shader.shader_get_id(shader.data)
}

pub fn (shader Shader) get_uniform_buffer(name string) UniformBuffer {
	return UniformBuffer{
		data: shader.shader_get_uniform_buffer(shader.data, name)
		ub_set_vector: shader.ub_set_vector
		ub_set_matrix: shader.ub_set_matrix
		ub_set_float: shader.ub_set_float
		ub_set_double: shader.ub_set_double
		ub_set_bool: shader.ub_set_bool
		ub_set_int: shader.ub_set_int
	}
}

pub fn (shader Shader) bind_attribute(idx int, name string) {
	shader.shader_bind_attribute(shader.data, idx, name)
}
