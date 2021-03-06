/// {@category Enum}
class D3DBLENDOP {
  static const D3DBLENDOP_ADD = 0x00000001;
  static const D3DBLENDOP_SUBTRACT = 0x00000002;
  static const D3DBLENDOP_REVSUBTRACT = 0x00000003;
  static const D3DBLENDOP_MIN = 0x00000004;
  static const D3DBLENDOP_MAX = 0x00000005;
  static const D3DBLENDOP_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DSAMPLERSTATETYPE {
  static const D3DSAMP_ADDRESSU = 0x00000001;
  static const D3DSAMP_ADDRESSV = 0x00000002;
  static const D3DSAMP_ADDRESSW = 0x00000003;
  static const D3DSAMP_BORDERCOLOR = 0x00000004;
  static const D3DSAMP_MAGFILTER = 0x00000005;
  static const D3DSAMP_MINFILTER = 0x00000006;
  static const D3DSAMP_MIPFILTER = 0x00000007;
  static const D3DSAMP_MIPMAPLODBIAS = 0x00000008;
  static const D3DSAMP_MAXMIPLEVEL = 0x00000009;
  static const D3DSAMP_MAXANISOTROPY = 0x0000000a;
  static const D3DSAMP_SRGBTEXTURE = 0x0000000b;
  static const D3DSAMP_ELEMENTINDEX = 0x0000000c;
  static const D3DSAMP_DMAPOFFSET = 0x0000000d;
  static const D3DSAMP_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DTEXTUREFILTERTYPE {
  static const D3DTEXF_NONE = 0x00000000;
  static const D3DTEXF_POINT = 0x00000001;
  static const D3DTEXF_LINEAR = 0x00000002;
  static const D3DTEXF_ANISOTROPIC = 0x00000003;
  static const D3DTEXF_PYRAMIDALQUAD = 0x00000006;
  static const D3DTEXF_GAUSSIANQUAD = 0x00000007;
  static const D3DTEXF_CONVOLUTIONMONO = 0x00000008;
  static const D3DTEXF_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DDECLUSAGE {
  static const D3DDECLUSAGE_POSITION = 0x00000000;
  static const D3DDECLUSAGE_BLENDWEIGHT = 0x00000001;
  static const D3DDECLUSAGE_BLENDINDICES = 0x00000002;
  static const D3DDECLUSAGE_NORMAL = 0x00000003;
  static const D3DDECLUSAGE_PSIZE = 0x00000004;
  static const D3DDECLUSAGE_TEXCOORD = 0x00000005;
  static const D3DDECLUSAGE_TANGENT = 0x00000006;
  static const D3DDECLUSAGE_BINORMAL = 0x00000007;
  static const D3DDECLUSAGE_TESSFACTOR = 0x00000008;
  static const D3DDECLUSAGE_POSITIONT = 0x00000009;
  static const D3DDECLUSAGE_COLOR = 0x0000000a;
  static const D3DDECLUSAGE_FOG = 0x0000000b;
  static const D3DDECLUSAGE_DEPTH = 0x0000000c;
  static const D3DDECLUSAGE_SAMPLE = 0x0000000d;
}

/// {@category Enum}
class D3DDECLMETHOD {
  static const D3DDECLMETHOD_DEFAULT = 0x00000000;
  static const D3DDECLMETHOD_PARTIALU = 0x00000001;
  static const D3DDECLMETHOD_PARTIALV = 0x00000002;
  static const D3DDECLMETHOD_CROSSUV = 0x00000003;
  static const D3DDECLMETHOD_UV = 0x00000004;
  static const D3DDECLMETHOD_LOOKUP = 0x00000005;
  static const D3DDECLMETHOD_LOOKUPPRESAMPLED = 0x00000006;
}

/// {@category Enum}
class D3DDECLTYPE {
  static const D3DDECLTYPE_FLOAT1 = 0x00000000;
  static const D3DDECLTYPE_FLOAT2 = 0x00000001;
  static const D3DDECLTYPE_FLOAT3 = 0x00000002;
  static const D3DDECLTYPE_FLOAT4 = 0x00000003;
  static const D3DDECLTYPE_D3DCOLOR = 0x00000004;
  static const D3DDECLTYPE_UBYTE4 = 0x00000005;
  static const D3DDECLTYPE_SHORT2 = 0x00000006;
  static const D3DDECLTYPE_SHORT4 = 0x00000007;
  static const D3DDECLTYPE_UBYTE4N = 0x00000008;
  static const D3DDECLTYPE_SHORT2N = 0x00000009;
  static const D3DDECLTYPE_SHORT4N = 0x0000000a;
  static const D3DDECLTYPE_USHORT2N = 0x0000000b;
  static const D3DDECLTYPE_USHORT4N = 0x0000000c;
  static const D3DDECLTYPE_UDEC3 = 0x0000000d;
  static const D3DDECLTYPE_DEC3N = 0x0000000e;
  static const D3DDECLTYPE_FLOAT16_2 = 0x0000000f;
  static const D3DDECLTYPE_FLOAT16_4 = 0x00000010;
  static const D3DDECLTYPE_UNUSED = 0x00000011;
}

/// {@category Enum}
class D3DSHADER_INSTRUCTION_OPCODE_TYPE {
  static const D3DSIO_NOP = 0x00000000;
  static const D3DSIO_MOV = 0x00000001;
  static const D3DSIO_ADD = 0x00000002;
  static const D3DSIO_SUB = 0x00000003;
  static const D3DSIO_MAD = 0x00000004;
  static const D3DSIO_MUL = 0x00000005;
  static const D3DSIO_RCP = 0x00000006;
  static const D3DSIO_RSQ = 0x00000007;
  static const D3DSIO_DP3 = 0x00000008;
  static const D3DSIO_DP4 = 0x00000009;
  static const D3DSIO_MIN = 0x0000000a;
  static const D3DSIO_MAX = 0x0000000b;
  static const D3DSIO_SLT = 0x0000000c;
  static const D3DSIO_SGE = 0x0000000d;
  static const D3DSIO_EXP = 0x0000000e;
  static const D3DSIO_LOG = 0x0000000f;
  static const D3DSIO_LIT = 0x00000010;
  static const D3DSIO_DST = 0x00000011;
  static const D3DSIO_LRP = 0x00000012;
  static const D3DSIO_FRC = 0x00000013;
  static const D3DSIO_M4x4 = 0x00000014;
  static const D3DSIO_M4x3 = 0x00000015;
  static const D3DSIO_M3x4 = 0x00000016;
  static const D3DSIO_M3x3 = 0x00000017;
  static const D3DSIO_M3x2 = 0x00000018;
  static const D3DSIO_CALL = 0x00000019;
  static const D3DSIO_CALLNZ = 0x0000001a;
  static const D3DSIO_LOOP = 0x0000001b;
  static const D3DSIO_RET = 0x0000001c;
  static const D3DSIO_ENDLOOP = 0x0000001d;
  static const D3DSIO_LABEL = 0x0000001e;
  static const D3DSIO_DCL = 0x0000001f;
  static const D3DSIO_POW = 0x00000020;
  static const D3DSIO_CRS = 0x00000021;
  static const D3DSIO_SGN = 0x00000022;
  static const D3DSIO_ABS = 0x00000023;
  static const D3DSIO_NRM = 0x00000024;
  static const D3DSIO_SINCOS = 0x00000025;
  static const D3DSIO_REP = 0x00000026;
  static const D3DSIO_ENDREP = 0x00000027;
  static const D3DSIO_IF = 0x00000028;
  static const D3DSIO_IFC = 0x00000029;
  static const D3DSIO_ELSE = 0x0000002a;
  static const D3DSIO_ENDIF = 0x0000002b;
  static const D3DSIO_BREAK = 0x0000002c;
  static const D3DSIO_BREAKC = 0x0000002d;
  static const D3DSIO_MOVA = 0x0000002e;
  static const D3DSIO_DEFB = 0x0000002f;
  static const D3DSIO_DEFI = 0x00000030;
  static const D3DSIO_TEXCOORD = 0x00000040;
  static const D3DSIO_TEXKILL = 0x00000041;
  static const D3DSIO_TEX = 0x00000042;
  static const D3DSIO_TEXBEM = 0x00000043;
  static const D3DSIO_TEXBEML = 0x00000044;
  static const D3DSIO_TEXREG2AR = 0x00000045;
  static const D3DSIO_TEXREG2GB = 0x00000046;
  static const D3DSIO_TEXM3x2PAD = 0x00000047;
  static const D3DSIO_TEXM3x2TEX = 0x00000048;
  static const D3DSIO_TEXM3x3PAD = 0x00000049;
  static const D3DSIO_TEXM3x3TEX = 0x0000004a;
  static const D3DSIO_RESERVED0 = 0x0000004b;
  static const D3DSIO_TEXM3x3SPEC = 0x0000004c;
  static const D3DSIO_TEXM3x3VSPEC = 0x0000004d;
  static const D3DSIO_EXPP = 0x0000004e;
  static const D3DSIO_LOGP = 0x0000004f;
  static const D3DSIO_CND = 0x00000050;
  static const D3DSIO_DEF = 0x00000051;
  static const D3DSIO_TEXREG2RGB = 0x00000052;
  static const D3DSIO_TEXDP3TEX = 0x00000053;
  static const D3DSIO_TEXM3x2DEPTH = 0x00000054;
  static const D3DSIO_TEXDP3 = 0x00000055;
  static const D3DSIO_TEXM3x3 = 0x00000056;
  static const D3DSIO_TEXDEPTH = 0x00000057;
  static const D3DSIO_CMP = 0x00000058;
  static const D3DSIO_BEM = 0x00000059;
  static const D3DSIO_DP2ADD = 0x0000005a;
  static const D3DSIO_DSX = 0x0000005b;
  static const D3DSIO_DSY = 0x0000005c;
  static const D3DSIO_TEXLDD = 0x0000005d;
  static const D3DSIO_SETP = 0x0000005e;
  static const D3DSIO_TEXLDL = 0x0000005f;
  static const D3DSIO_BREAKP = 0x00000060;
  static const D3DSIO_PHASE = 0x0000fffd;
  static const D3DSIO_COMMENT = 0x0000fffe;
  static const D3DSIO_END = 0x0000ffff;
  static const D3DSIO_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DSHADER_COMPARISON {
  static const D3DSPC_RESERVED0 = 0x00000000;
  static const D3DSPC_GT = 0x00000001;
  static const D3DSPC_EQ = 0x00000002;
  static const D3DSPC_GE = 0x00000003;
  static const D3DSPC_LT = 0x00000004;
  static const D3DSPC_NE = 0x00000005;
  static const D3DSPC_LE = 0x00000006;
  static const D3DSPC_RESERVED1 = 0x00000007;
}

/// {@category Enum}
class D3DSAMPLER_TEXTURE_TYPE {
  static const D3DSTT_UNKNOWN = 0x00000000;
  static const D3DSTT_2D = 0x10000000;
  static const D3DSTT_CUBE = 0x18000000;
  static const D3DSTT_VOLUME = 0x20000000;
  static const D3DSTT_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DSHADER_PARAM_REGISTER_TYPE {
  static const D3DSPR_TEMP = 0x00000000;
  static const D3DSPR_INPUT = 0x00000001;
  static const D3DSPR_CONST = 0x00000002;
  static const D3DSPR_ADDR = 0x00000003;
  static const D3DSPR_TEXTURE = 0x00000003;
  static const D3DSPR_RASTOUT = 0x00000004;
  static const D3DSPR_ATTROUT = 0x00000005;
  static const D3DSPR_TEXCRDOUT = 0x00000006;
  static const D3DSPR_OUTPUT = 0x00000006;
  static const D3DSPR_CONSTINT = 0x00000007;
  static const D3DSPR_COLOROUT = 0x00000008;
  static const D3DSPR_DEPTHOUT = 0x00000009;
  static const D3DSPR_SAMPLER = 0x0000000a;
  static const D3DSPR_CONST2 = 0x0000000b;
  static const D3DSPR_CONST3 = 0x0000000c;
  static const D3DSPR_CONST4 = 0x0000000d;
  static const D3DSPR_CONSTBOOL = 0x0000000e;
  static const D3DSPR_LOOP = 0x0000000f;
  static const D3DSPR_TEMPFLOAT16 = 0x00000010;
  static const D3DSPR_MISCTYPE = 0x00000011;
  static const D3DSPR_LABEL = 0x00000012;
  static const D3DSPR_PREDICATE = 0x00000013;
  static const D3DSPR_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DSHADER_MISCTYPE_OFFSETS {
  static const D3DSMO_POSITION = 0x00000000;
  static const D3DSMO_FACE = 0x00000001;
}

/// {@category Enum}
class D3DVS_RASTOUT_OFFSETS {
  static const D3DSRO_POSITION = 0x00000000;
  static const D3DSRO_FOG = 0x00000001;
  static const D3DSRO_POINT_SIZE = 0x00000002;
  static const D3DSRO_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DVS_ADDRESSMODE_TYPE {
  static const D3DVS_ADDRMODE_ABSOLUTE = 0x00000000;
  static const D3DVS_ADDRMODE_RELATIVE = 0x00002000;
  static const D3DVS_ADDRMODE_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DSHADER_ADDRESSMODE_TYPE {
  static const D3DSHADER_ADDRMODE_ABSOLUTE = 0x00000000;
  static const D3DSHADER_ADDRMODE_RELATIVE = 0x00002000;
  static const D3DSHADER_ADDRMODE_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DSHADER_PARAM_SRCMOD_TYPE {
  static const D3DSPSM_NONE = 0x00000000;
  static const D3DSPSM_NEG = 0x01000000;
  static const D3DSPSM_BIAS = 0x02000000;
  static const D3DSPSM_BIASNEG = 0x03000000;
  static const D3DSPSM_SIGN = 0x04000000;
  static const D3DSPSM_SIGNNEG = 0x05000000;
  static const D3DSPSM_COMP = 0x06000000;
  static const D3DSPSM_X2 = 0x07000000;
  static const D3DSPSM_X2NEG = 0x08000000;
  static const D3DSPSM_DZ = 0x09000000;
  static const D3DSPSM_DW = 0x0a000000;
  static const D3DSPSM_ABS = 0x0b000000;
  static const D3DSPSM_ABSNEG = 0x0c000000;
  static const D3DSPSM_NOT = 0x0d000000;
  static const D3DSPSM_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DSHADER_MIN_PRECISION {
  static const D3DMP_DEFAULT = 0x00000000;
  static const D3DMP_16 = 0x00000001;
  static const D3DMP_2_8 = 0x00000002;
}

/// {@category Enum}
class D3DBASISTYPE {
  static const D3DBASIS_BEZIER = 0x00000000;
  static const D3DBASIS_BSPLINE = 0x00000001;
  static const D3DBASIS_CATMULL_ROM = 0x00000002;
  static const D3DBASIS_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DDEGREETYPE {
  static const D3DDEGREE_LINEAR = 0x00000001;
  static const D3DDEGREE_QUADRATIC = 0x00000002;
  static const D3DDEGREE_CUBIC = 0x00000003;
  static const D3DDEGREE_QUINTIC = 0x00000005;
  static const D3DDEGREE_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DPATCHEDGESTYLE {
  static const D3DPATCHEDGE_DISCRETE = 0x00000000;
  static const D3DPATCHEDGE_CONTINUOUS = 0x00000001;
  static const D3DPATCHEDGE_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DDEVTYPE {
  static const D3DDEVTYPE_HAL = 0x00000001;
  static const D3DDEVTYPE_REF = 0x00000002;
  static const D3DDEVTYPE_SW = 0x00000003;
  static const D3DDEVTYPE_NULLREF = 0x00000004;
  static const D3DDEVTYPE_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DMULTISAMPLE_TYPE {
  static const D3DMULTISAMPLE_NONE = 0x00000000;
  static const D3DMULTISAMPLE_NONMASKABLE = 0x00000001;
  static const D3DMULTISAMPLE_2_SAMPLES = 0x00000002;
  static const D3DMULTISAMPLE_3_SAMPLES = 0x00000003;
  static const D3DMULTISAMPLE_4_SAMPLES = 0x00000004;
  static const D3DMULTISAMPLE_5_SAMPLES = 0x00000005;
  static const D3DMULTISAMPLE_6_SAMPLES = 0x00000006;
  static const D3DMULTISAMPLE_7_SAMPLES = 0x00000007;
  static const D3DMULTISAMPLE_8_SAMPLES = 0x00000008;
  static const D3DMULTISAMPLE_9_SAMPLES = 0x00000009;
  static const D3DMULTISAMPLE_10_SAMPLES = 0x0000000a;
  static const D3DMULTISAMPLE_11_SAMPLES = 0x0000000b;
  static const D3DMULTISAMPLE_12_SAMPLES = 0x0000000c;
  static const D3DMULTISAMPLE_13_SAMPLES = 0x0000000d;
  static const D3DMULTISAMPLE_14_SAMPLES = 0x0000000e;
  static const D3DMULTISAMPLE_15_SAMPLES = 0x0000000f;
  static const D3DMULTISAMPLE_16_SAMPLES = 0x00000010;
  static const D3DMULTISAMPLE_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DFORMAT {
  static const D3DFMT_UNKNOWN = 0x00000000;
  static const D3DFMT_R8G8B8 = 0x00000014;
  static const D3DFMT_A8R8G8B8 = 0x00000015;
  static const D3DFMT_X8R8G8B8 = 0x00000016;
  static const D3DFMT_R5G6B5 = 0x00000017;
  static const D3DFMT_X1R5G5B5 = 0x00000018;
  static const D3DFMT_A1R5G5B5 = 0x00000019;
  static const D3DFMT_A4R4G4B4 = 0x0000001a;
  static const D3DFMT_R3G3B2 = 0x0000001b;
  static const D3DFMT_A8 = 0x0000001c;
  static const D3DFMT_A8R3G3B2 = 0x0000001d;
  static const D3DFMT_X4R4G4B4 = 0x0000001e;
  static const D3DFMT_A2B10G10R10 = 0x0000001f;
  static const D3DFMT_A8B8G8R8 = 0x00000020;
  static const D3DFMT_X8B8G8R8 = 0x00000021;
  static const D3DFMT_G16R16 = 0x00000022;
  static const D3DFMT_A2R10G10B10 = 0x00000023;
  static const D3DFMT_A16B16G16R16 = 0x00000024;
  static const D3DFMT_A8P8 = 0x00000028;
  static const D3DFMT_P8 = 0x00000029;
  static const D3DFMT_L8 = 0x00000032;
  static const D3DFMT_A8L8 = 0x00000033;
  static const D3DFMT_A4L4 = 0x00000034;
  static const D3DFMT_V8U8 = 0x0000003c;
  static const D3DFMT_L6V5U5 = 0x0000003d;
  static const D3DFMT_X8L8V8U8 = 0x0000003e;
  static const D3DFMT_Q8W8V8U8 = 0x0000003f;
  static const D3DFMT_V16U16 = 0x00000040;
  static const D3DFMT_A2W10V10U10 = 0x00000043;
  static const D3DFMT_UYVY = 0x59565955;
  static const D3DFMT_R8G8_B8G8 = 0x47424752;
  static const D3DFMT_YUY2 = 0x32595559;
  static const D3DFMT_G8R8_G8B8 = 0x42475247;
  static const D3DFMT_DXT1 = 0x31545844;
  static const D3DFMT_DXT2 = 0x32545844;
  static const D3DFMT_DXT3 = 0x33545844;
  static const D3DFMT_DXT4 = 0x34545844;
  static const D3DFMT_DXT5 = 0x35545844;
  static const D3DFMT_D16_LOCKABLE = 0x00000046;
  static const D3DFMT_D32 = 0x00000047;
  static const D3DFMT_D15S1 = 0x00000049;
  static const D3DFMT_D24S8 = 0x0000004b;
  static const D3DFMT_D24X8 = 0x0000004d;
  static const D3DFMT_D24X4S4 = 0x0000004f;
  static const D3DFMT_D16 = 0x00000050;
  static const D3DFMT_D32F_LOCKABLE = 0x00000052;
  static const D3DFMT_D24FS8 = 0x00000053;
  static const D3DFMT_D32_LOCKABLE = 0x00000054;
  static const D3DFMT_S8_LOCKABLE = 0x00000055;
  static const D3DFMT_L16 = 0x00000051;
  static const D3DFMT_VERTEXDATA = 0x00000064;
  static const D3DFMT_INDEX16 = 0x00000065;
  static const D3DFMT_INDEX32 = 0x00000066;
  static const D3DFMT_Q16W16V16U16 = 0x0000006e;
  static const D3DFMT_MULTI2_ARGB8 = 0x3154454d;
  static const D3DFMT_R16F = 0x0000006f;
  static const D3DFMT_G16R16F = 0x00000070;
  static const D3DFMT_A16B16G16R16F = 0x00000071;
  static const D3DFMT_R32F = 0x00000072;
  static const D3DFMT_G32R32F = 0x00000073;
  static const D3DFMT_A32B32G32R32F = 0x00000074;
  static const D3DFMT_CxV8U8 = 0x00000075;
  static const D3DFMT_A1 = 0x00000076;
  static const D3DFMT_A2B10G10R10_XR_BIAS = 0x00000077;
  static const D3DFMT_BINARYBUFFER = 0x000000c7;
  static const D3DFMT_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DSWAPEFFECT {
  static const D3DSWAPEFFECT_DISCARD = 0x00000001;
  static const D3DSWAPEFFECT_FLIP = 0x00000002;
  static const D3DSWAPEFFECT_COPY = 0x00000003;
  static const D3DSWAPEFFECT_OVERLAY = 0x00000004;
  static const D3DSWAPEFFECT_FLIPEX = 0x00000005;
  static const D3DSWAPEFFECT_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DPOOL {
  static const D3DPOOL_DEFAULT = 0x00000000;
  static const D3DPOOL_MANAGED = 0x00000001;
  static const D3DPOOL_SYSTEMMEM = 0x00000002;
  static const D3DPOOL_SCRATCH = 0x00000003;
  static const D3DPOOL_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DBACKBUFFER_TYPE {
  static const D3DBACKBUFFER_TYPE_MONO = 0x00000000;
  static const D3DBACKBUFFER_TYPE_LEFT = 0x00000001;
  static const D3DBACKBUFFER_TYPE_RIGHT = 0x00000002;
  static const D3DBACKBUFFER_TYPE_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DRESOURCETYPE {
  static const D3DRTYPE_SURFACE = 0x00000001;
  static const D3DRTYPE_VOLUME = 0x00000002;
  static const D3DRTYPE_TEXTURE = 0x00000003;
  static const D3DRTYPE_VOLUMETEXTURE = 0x00000004;
  static const D3DRTYPE_CUBETEXTURE = 0x00000005;
  static const D3DRTYPE_VERTEXBUFFER = 0x00000006;
  static const D3DRTYPE_INDEXBUFFER = 0x00000007;
  static const D3DRTYPE_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DCUBEMAP_FACES {
  static const D3DCUBEMAP_FACE_POSITIVE_X = 0x00000000;
  static const D3DCUBEMAP_FACE_NEGATIVE_X = 0x00000001;
  static const D3DCUBEMAP_FACE_POSITIVE_Y = 0x00000002;
  static const D3DCUBEMAP_FACE_NEGATIVE_Y = 0x00000003;
  static const D3DCUBEMAP_FACE_POSITIVE_Z = 0x00000004;
  static const D3DCUBEMAP_FACE_NEGATIVE_Z = 0x00000005;
  static const D3DCUBEMAP_FACE_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DDEBUGMONITORTOKENS {
  static const D3DDMT_ENABLE = 0x00000000;
  static const D3DDMT_DISABLE = 0x00000001;
  static const D3DDMT_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DQUERYTYPE {
  static const D3DQUERYTYPE_VCACHE = 0x00000004;
  static const D3DQUERYTYPE_RESOURCEMANAGER = 0x00000005;
  static const D3DQUERYTYPE_VERTEXSTATS = 0x00000006;
  static const D3DQUERYTYPE_EVENT = 0x00000008;
  static const D3DQUERYTYPE_OCCLUSION = 0x00000009;
  static const D3DQUERYTYPE_TIMESTAMP = 0x0000000a;
  static const D3DQUERYTYPE_TIMESTAMPDISJOINT = 0x0000000b;
  static const D3DQUERYTYPE_TIMESTAMPFREQ = 0x0000000c;
  static const D3DQUERYTYPE_PIPELINETIMINGS = 0x0000000d;
  static const D3DQUERYTYPE_INTERFACETIMINGS = 0x0000000e;
  static const D3DQUERYTYPE_VERTEXTIMINGS = 0x0000000f;
  static const D3DQUERYTYPE_PIXELTIMINGS = 0x00000010;
  static const D3DQUERYTYPE_BANDWIDTHTIMINGS = 0x00000011;
  static const D3DQUERYTYPE_CACHEUTILIZATION = 0x00000012;
  static const D3DQUERYTYPE_MEMORYPRESSURE = 0x00000013;
}

/// {@category Enum}
class D3DCOMPOSERECTSOP {
  static const D3DCOMPOSERECTS_COPY = 0x00000001;
  static const D3DCOMPOSERECTS_OR = 0x00000002;
  static const D3DCOMPOSERECTS_AND = 0x00000003;
  static const D3DCOMPOSERECTS_NEG = 0x00000004;
  static const D3DCOMPOSERECTS_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DSCANLINEORDERING {
  static const D3DSCANLINEORDERING_UNKNOWN = 0x00000000;
  static const D3DSCANLINEORDERING_PROGRESSIVE = 0x00000001;
  static const D3DSCANLINEORDERING_INTERLACED = 0x00000002;
}

/// {@category Enum}
class D3DDISPLAYROTATION {
  static const D3DDISPLAYROTATION_IDENTITY = 0x00000001;
  static const D3DDISPLAYROTATION_90 = 0x00000002;
  static const D3DDISPLAYROTATION_180 = 0x00000003;
  static const D3DDISPLAYROTATION_270 = 0x00000004;
}

/// {@category Enum}
class D3DAUTHENTICATEDCHANNELTYPE {
  static const D3DAUTHENTICATEDCHANNEL_D3D9 = 0x00000001;
  static const D3DAUTHENTICATEDCHANNEL_DRIVER_SOFTWARE = 0x00000002;
  static const D3DAUTHENTICATEDCHANNEL_DRIVER_HARDWARE = 0x00000003;
}

/// {@category Enum}
class D3DAUTHENTICATEDCHANNEL_PROCESSIDENTIFIERTYPE {
  static const PROCESSIDTYPE_UNKNOWN = 0x00000000;
  static const PROCESSIDTYPE_DWM = 0x00000001;
  static const PROCESSIDTYPE_HANDLE = 0x00000002;
}

/// {@category Enum}
class D3DBUSTYPE {
  static const D3DBUSTYPE_OTHER = 0x00000000;
  static const D3DBUSTYPE_PCI = 0x00000001;
  static const D3DBUSTYPE_PCIX = 0x00000002;
  static const D3DBUSTYPE_PCIEXPRESS = 0x00000003;
  static const D3DBUSTYPE_AGP = 0x00000004;
  static const D3DBUSIMPL_MODIFIER_INSIDE_OF_CHIPSET = 0x00010000;
  static const D3DBUSIMPL_MODIFIER_TRACKS_ON_MOTHER_BOARD_TO_CHIP = 0x00020000;
  static const D3DBUSIMPL_MODIFIER_TRACKS_ON_MOTHER_BOARD_TO_SOCKET =
      0x00030000;
  static const D3DBUSIMPL_MODIFIER_DAUGHTER_BOARD_CONNECTOR = 0x00040000;
  static const D3DBUSIMPL_MODIFIER_DAUGHTER_BOARD_CONNECTOR_INSIDE_OF_NUAE =
      0x00050000;
  static const D3DBUSIMPL_MODIFIER_NON_STANDARD = 0x80000000;
}
