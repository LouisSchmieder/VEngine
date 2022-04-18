module mathf

import math

pub struct Vector {
mut:
	buffer []f32
}

pub fn vec(ordinates []f32) Vector {
	return Vector{
		buffer: ordinates
	}
}

pub fn (vec Vector) len() f32 {
	mut len := f32(0)
	for v in vec.buffer {
		len += v * v
	}
	return sqrt(len)
}

pub fn (vec Vector) to_buffer() []f32 {
	return vec.buffer
}

pub fn (vec Vector) get_dimension() int {
	return vec.buffer.len
}

pub fn (vec Vector) dot(vec2 Vector) f32 {
	if vec.get_dimension() != vec2.get_dimension() {
		return 0
	} else {
		mut val := f32(0)
		for i in 0 .. vec.get_dimension() {
			val += vec.get(i) * vec2.get(i)
		}
		return val
	}
}

pub fn (v Vector) cross(v1 Vector) Vector {
	return vec([
		f32(v.get(1) * v1.get(2) - v.get(2) * v1.get(1)),
		f32(v.get(2) * v1.get(0) - v.get(0) * v1.get(2)),
		f32(v.get(0) * v1.get(1) - v.get(2) * v1.get(0))
	])
}

pub fn (vec Vector) angle(vec2 Vector) f32 {
	return to_deg(f32(math.acos(math.abs(vec.dot(vec2)) / (vec.len() * vec2.len()))))
}

pub fn (v Vector) normalize() Vector {
	mut buffer := []f32{}
	m := 1.0 / v.len()
	for o in v.buffer {
		buffer << m * o
	}
	return vec(buffer)
}

pub fn (vec Vector) get(ordinate int) f32 {
	return vec.buffer[ordinate]
}
