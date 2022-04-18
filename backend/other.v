module backend

pub type Color = RGBA_BYTE | RGBA_FLOAT | RGB_BYTE | RGB_FLOAT

pub fn (color Color) to_rgba_float() RGBA_FLOAT {
	match color {
		RGBA_BYTE {
			return RGBA_FLOAT{
				r: f32(color.r) / f32(255)
				g: f32(color.g) / f32(255)
				b: f32(color.b) / f32(255)
				a: f32(color.a) / f32(255)
			}
		}
		RGB_BYTE {
			return RGBA_FLOAT{
				r: f32(color.r) / f32(255)
				g: f32(color.g) / f32(255)
				b: f32(color.b) / f32(255)
				a: 1
			}
		}
		RGBA_FLOAT {
			return color
		}
		RGB_FLOAT {
			return RGBA_FLOAT{
				RGB_FLOAT: color
				a: 1
			}
		}
	}
}

pub struct BackendSettings {
pub:
	vertex_type VertexType
	draw_type   DrawType
}

pub struct RGB_BYTE {
pub:
	r byte
	g byte
	b byte
}

pub struct RGBA_BYTE {
	RGB_BYTE
pub:
	a byte
}

pub struct RGB_FLOAT {
pub:
	r f32
	g f32
	b f32
}

pub struct RGBA_FLOAT {
	RGB_FLOAT
pub:
	a f32
}

pub enum ShaderType {
	vertex_shader
	fragment_shader
	geometry_shader
	compute_shader
}

pub enum DrawType {
	lines
	triangles
	points
	fens
}

pub enum VertexType {
	uint
	int
}
