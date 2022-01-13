/// {@category Enum}
class DXC_CP {
  static const DXC_CP_ACP = 0x00000000;
  static const DXC_CP_UTF16 = 0x000004b0;
  static const DXC_CP_UTF8 = 0x0000fde9;
}

/// {@category Enum}
class DXC_OUT_KIND {
  static const DXC_OUT_NONE = 0x00000000;
  static const DXC_OUT_OBJECT = 0x00000001;
  static const DXC_OUT_ERRORS = 0x00000002;
  static const DXC_OUT_PDB = 0x00000003;
  static const DXC_OUT_SHADER_HASH = 0x00000004;
  static const DXC_OUT_DISASSEMBLY = 0x00000005;
  static const DXC_OUT_HLSL = 0x00000006;
  static const DXC_OUT_TEXT = 0x00000007;
  static const DXC_OUT_REFLECTION = 0x00000008;
  static const DXC_OUT_ROOT_SIGNATURE = 0x00000009;
  static const DXC_OUT_EXTRA_OUTPUTS = 0x0000000a;
  static const DXC_OUT_FORCE_DWORD = 0xffffffff;
}
