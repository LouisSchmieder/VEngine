module backend

pub fn init_backend(data voidptr, vao_data VAOData, voa_bind VAOBind, vao_unbind VAOUnbind, vao_store VAOStore, vao_bind_indices VAOBindIndices, ub_set_vector UBSetVector, ub_set_matrix UBSetMatrix, ub_set_float UBSetFloat, ub_set_double UBSetDouble, ub_set_bool UBSetBool, ub_set_int UBSetInt, program_data ProgramData, program_get_id ProgramGetID, program_delete ProgramDelete, program_link ProgramLink, program_validate ProgramValidate, program_attach_shader ProgramAttachShader, program_detach_shader ProgramDetachShader, program_use ProgramUse, program_un_use ProgramUnUse, shader_data ShaderData, shader_init ShaderInit, shader_compile ShaderCompile, shader_start ShaderStart, shader_stop ShaderStop, shader_get_id ShaderGetID, shader_get_uniform_buffer ShaderGetUniformBuffer, shader_bind_attribute ShaderBindAttribute, backend_free BackendFree, backend_viewport BackendViewport, backend_clear BackendClear, backend_draw BackendDraw) Backend {
	return Backend{
		data: data
		vao_data: vao_data
		voa_bind: voa_bind
		vao_unbind: vao_unbind
		vao_store: vao_store
		vao_bind_indices: vao_bind_indices
		ub_set_vector: ub_set_vector
		ub_set_matrix: ub_set_matrix
		ub_set_float: ub_set_float
		ub_set_double: ub_set_double
		ub_set_bool: ub_set_bool
		ub_set_int: ub_set_int
		program_data: program_data
		program_get_id: program_get_id
		program_delete: program_delete
		program_link: program_link
		program_validate: program_validate
		program_attach_shader: program_attach_shader
		program_detach_shader: program_detach_shader
		program_use: program_use
		program_un_use: program_un_use
		shader_data: shader_data
		shader_init: shader_init
		shader_compile: shader_compile
		shader_start: shader_start
		shader_stop: shader_stop
		shader_get_id: shader_get_id
		shader_get_uniform_buffer: shader_get_uniform_buffer
		shader_bind_attribute: shader_bind_attribute
		backend_free: backend_free
		backend_viewport: backend_viewport
		backend_clear: backend_clear
		backend_draw: backend_draw
	}
}
