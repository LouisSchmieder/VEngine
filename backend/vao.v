module backend

pub fn (vao VertexArrayObject) bind(i int) {
	vao.voa_bind(vao.data, i)
}

pub fn (vao VertexArrayObject) unbind() {
	vao.vao_unbind(vao.data)
}

pub fn (vao VertexArrayObject) store(a int, b int, data []f32) {
	vao.vao_store(vao.data, a, b, data)
}

pub fn (vao VertexArrayObject) bind_indices(data []int) {
	vao.vao_bind_indices(vao.data, data)
}
