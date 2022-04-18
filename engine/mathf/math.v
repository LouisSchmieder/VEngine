module mathf

import math

pub fn q_rsqrt(num f32) f32 {
	threehalfs := f32(1.5)

	x2 := num * f32(0.5)
	mut y := num
	mut i := unsafe { *(&i64(&y)) }
	i = 0x5f3759df - (i >> 1)
	y = unsafe { *(&f32(&i)) }
	y *= threehalfs - (x2 * y * y)

	return y
}

pub fn sqrt(num f32) f32 {
	return 1 / q_rsqrt(num)
}

pub fn to_deg(rad f32) f32 {
	return rad * 180 / math.pi
}

pub fn to_rad(deg f32) f32 {
	return deg * math.pi / 180
}
