/// {@category Enum}
class CreateToolhelp32Snapshot_dwFlags {
  static const TH32CS_INHERIT = 0x80000000;
  static const TH32CS_SNAPALL = 0x0000000f;
  static const TH32CS_SNAPHEAPLIST = 0x00000001;
  static const TH32CS_SNAPMODULE = 0x00000008;
  static const TH32CS_SNAPMODULE32 = 0x00000010;
  static const TH32CS_SNAPPROCESS = 0x00000002;
  static const TH32CS_SNAPTHREAD = 0x00000004;
}

/// {@category Enum}
class HEAPENTRY32_dwFlags {
  static const LF32_FIXED = 0x00000001;
  static const LF32_FREE = 0x00000002;
  static const LF32_MOVEABLE = 0x00000004;
}
