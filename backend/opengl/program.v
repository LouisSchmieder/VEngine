module opengl

import backend
import backend.opengl.gl

pub struct Program {
	id u32
}

pub fn new_program() &Program {
	id := gl.create_program()
	return &Program{
		id: id
	}
}

pub fn program_get_id(program &Program) u32 {
	return program.id
}

pub fn program_delete(program &Program) {
	gl.delete_program(program.id)
}

pub fn program_link(program &Program) {
	gl.link_program(program.id)
}

pub fn program_validate(program &Program) ? {
	gl.validate_program(program.id)
}

pub fn program_attach_shader(program &Program, shader backend.Shader) {
	gl.attach_shader(program.id, shader.get_id())
}

pub fn program_detach_shader(program &Program, shader backend.Shader) {
	gl.detach_shader(program.id, shader.get_id())
}

pub fn program_use(program &Program) {
	gl.use_program(program.id)
}

pub fn program_un_use(program &Program) {
	gl.use_program(0)
}
