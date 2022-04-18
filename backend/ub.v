module backend

import engine.mathf

pub fn (ub UniformBuffer) set_vector(data mathf.Vector) {
	ub.ub_set_vector(ub.data, data)
}

pub fn (ub UniformBuffer) set_matrix(data mathf.Matrix) {
	ub.ub_set_matrix(ub.data, data)
}

pub fn (ub UniformBuffer) set_float(data f32) {
	ub.ub_set_float(ub.data, data)
}

pub fn (ub UniformBuffer) set_double(data f64) {
	ub.ub_set_double(ub.data, data)
}

pub fn (ub UniformBuffer) set_bool(data bool) {
	ub.ub_set_bool(ub.data, data)
}

pub fn (ub UniformBuffer) set_int(data int) {
	ub.ub_set_int(ub.data, data)
}
