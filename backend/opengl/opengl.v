module opengl

import backend
import backend.opengl.gl

const (
	null = voidptr(0)
)

pub struct OpenGL {
}

pub fn init_opengl() backend.Backend {
	return 
	backend.init_backend(new_opengl, opengl.null, opengl.null, opengl.null, opengl.null,
		opengl.null, opengl.null, opengl.null, opengl.null, opengl.null, opengl.null,
		opengl.null, new_program, program_get_id, program_delete, program_link, program_validate,
		program_attach_shader, program_detach_shader, program_use, program_un_use, opengl.null,
		opengl.null, opengl.null, opengl.null, opengl.null, opengl.null, opengl.null,
		opengl.null, free_opengl, viewport, clear, draw)
}

pub fn new_opengl() &OpenGL {
	return &OpenGL{}
}

pub fn free_opengl(mut opengl OpenGL) {
}

pub fn viewport(mut opengl OpenGL, width int, height int) {
	gl.viewport(0, 0, width, height)
}

pub fn clear(mut opengl OpenGL, color backend.Color) {
	c := color.to_rgba_float()
	gl.clear_color(c.r, c.g, c.b, c.a)
	gl.clear(gl.depth_buffer_bit)
}

pub fn draw(mut opengl OpenGL, amount int) {
}
