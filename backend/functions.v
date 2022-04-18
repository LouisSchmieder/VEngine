module backend

import engine.mathf

pub type BackendFree = fn (voidptr)

pub type BackendViewport = fn (voidptr, int, int)

pub type BackendClear = fn (voidptr, Color)

pub type BackendDraw = fn (voidptr, int)

pub type VAOData = fn () voidptr

pub type VAOBind = fn (voidptr, int)

pub type VAOUnbind = fn (voidptr)

pub type VAOStore = fn (voidptr, int, int, []f32)

pub type VAOBindIndices = fn (voidptr, []int)

pub type UBSetVector = fn (voidptr, mathf.Vector)

pub type UBSetMatrix = fn (voidptr, mathf.Matrix)

pub type UBSetFloat = fn (voidptr, f32)

pub type UBSetDouble = fn (voidptr, f64)

pub type UBSetBool = fn (voidptr, bool)

pub type UBSetInt = fn (voidptr, int)

pub type ProgramData = fn () voidptr

pub type ProgramGetID = fn (voidptr) u32

pub type ProgramDelete = fn (voidptr)

pub type ProgramLink = fn (voidptr)

pub type ProgramValidate = fn (voidptr) ?

pub type ProgramAttachShader = fn (voidptr, Shader)

pub type ProgramDetachShader = fn (voidptr, Shader)

pub type ProgramUse = fn (voidptr)

pub type ProgramUnUse = fn (voidptr)

pub type ShaderData = fn () voidptr

pub type ShaderInit = fn (voidptr, string)

pub type ShaderCompile = fn (voidptr) ?

pub type ShaderStart = fn (voidptr)

pub type ShaderStop = fn (voidptr)

pub type ShaderGetID = fn (voidptr) u32

pub type ShaderGetUniformBuffer = fn (voidptr, string) voidptr

pub type ShaderBindAttribute = fn (voidptr, int, string)
