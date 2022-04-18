module backend

pub fn (program Program) get_id() u32 {
	return program.program_get_id(program.data)
}

pub fn (program Program) delete() {
	program.program_delete(program.data)
}

pub fn (program Program) link() {
	program.program_link(program.data)
}

pub fn (program Program) validate() ? {
	program.program_validate(program.data) ?
}

pub fn (program Program) attach_shader(shader Shader) {
	program.program_attach_shader(program.data, shader)
}

pub fn (program Program) detach_shader(shader Shader) {
	program.program_detach_shader(program.data, shader)
}

pub fn (program Program) use() {
	program.program_use(program.data)
}

pub fn (program Program) un_use() {
	program.program_un_use(program.data)
}
