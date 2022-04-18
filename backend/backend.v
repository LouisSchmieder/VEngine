module backend

pub fn (mut backend Backend) free() {
	backend.backend_free(backend.data)
}

pub fn (backend Backend) viewport(width int, height int) {
	backend.backend_viewport(backend.data, width, height)
}

pub fn (backend Backend) clear(color Color) {
	backend.backend_clear(backend.data, color)
}

pub fn (backend Backend) draw(amount int) {
	backend.backend_draw(backend.data, amount)
}

pub fn (backend Backend) create_vao() VertexArrayObject {
	return VertexArrayObject{
		data: backend.vao_data()
		voa_bind: backend.voa_bind
		vao_unbind: backend.vao_unbind
		vao_store: backend.vao_store
		vao_bind_indices: backend.vao_bind_indices
	}
}

pub fn (backend Backend) create_program() Program {
	return Program{
		data: backend.program_data()
		program_get_id: backend.program_get_id
		program_delete: backend.program_delete
		program_link: backend.program_link
		program_validate: backend.program_validate
		program_attach_shader: backend.program_attach_shader
		program_detach_shader: backend.program_detach_shader
		program_use: backend.program_use
		program_un_use: backend.program_un_use
	}
}

pub fn (backend Backend) create_shader() Shader {
	return Shader{
		data: backend.shader_data()
		shader_init: backend.shader_init
		shader_compile: backend.shader_compile
		shader_start: backend.shader_start
		shader_stop: backend.shader_stop
		shader_get_uniform_buffer: backend.shader_get_uniform_buffer
		shader_bind_attribute: backend.shader_bind_attribute
		shader_get_id: backend.shader_get_id
		ub_set_vector: backend.ub_set_vector
		ub_set_matrix: backend.ub_set_matrix
		ub_set_float: backend.ub_set_float
		ub_set_double: backend.ub_set_double
		ub_set_bool: backend.ub_set_bool
		ub_set_int: backend.ub_set_int
	}
}
