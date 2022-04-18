module backend

pub struct Backend {
	data voidptr

	vao_data         VAOData
	voa_bind         VAOBind
	vao_unbind       VAOUnbind
	vao_store        VAOStore
	vao_bind_indices VAOBindIndices

	ub_set_vector UBSetVector
	ub_set_matrix UBSetMatrix
	ub_set_float  UBSetFloat
	ub_set_double UBSetDouble
	ub_set_bool   UBSetBool
	ub_set_int    UBSetInt

	program_data          ProgramData
	program_get_id        ProgramGetID
	program_delete        ProgramDelete
	program_link          ProgramLink
	program_validate      ProgramValidate
	program_attach_shader ProgramAttachShader
	program_detach_shader ProgramDetachShader
	program_use           ProgramUse
	program_un_use        ProgramUnUse

	shader_data               ShaderData
	shader_init               ShaderInit
	shader_compile            ShaderCompile
	shader_start              ShaderStart
	shader_stop               ShaderStop
	shader_get_id             ShaderGetID
	shader_get_uniform_buffer ShaderGetUniformBuffer
	shader_bind_attribute     ShaderBindAttribute

	backend_free     BackendFree
	backend_viewport BackendViewport
	backend_clear    BackendClear
	backend_draw     BackendDraw
}

pub struct VertexArrayObject {
	data voidptr

	voa_bind         VAOBind
	vao_unbind       VAOUnbind
	vao_store        VAOStore
	vao_bind_indices VAOBindIndices
}

pub struct UniformBuffer {
	data voidptr

	ub_set_vector UBSetVector
	ub_set_matrix UBSetMatrix
	ub_set_float  UBSetFloat
	ub_set_double UBSetDouble
	ub_set_bool   UBSetBool
	ub_set_int    UBSetInt
}

pub struct Program {
	data voidptr

	program_get_id        ProgramGetID
	program_delete        ProgramDelete
	program_link          ProgramLink
	program_validate      ProgramValidate
	program_attach_shader ProgramAttachShader
	program_detach_shader ProgramDetachShader
	program_use           ProgramUse
	program_un_use        ProgramUnUse
}

pub struct Shader {
	data voidptr

	shader_init               ShaderInit
	shader_compile            ShaderCompile
	shader_start              ShaderStart
	shader_stop               ShaderStop
	shader_get_id             ShaderGetID
	shader_get_uniform_buffer ShaderGetUniformBuffer
	shader_bind_attribute     ShaderBindAttribute

	ub_set_vector UBSetVector
	ub_set_matrix UBSetMatrix
	ub_set_float  UBSetFloat
	ub_set_double UBSetDouble
	ub_set_bool   UBSetBool
	ub_set_int    UBSetInt
}
