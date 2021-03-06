/// {@category Enum}
class COLORTYPE {
  static const COLOR_GRAY = 0x00000001;
  static const COLOR_RGB = 0x00000002;
  static const COLOR_XYZ = 0x00000003;
  static const COLOR_Yxy = 0x00000004;
  static const COLOR_Lab = 0x00000005;
  static const COLOR_3_CHANNEL = 0x00000006;
  static const COLOR_CMYK = 0x00000007;
  static const COLOR_5_CHANNEL = 0x00000008;
  static const COLOR_6_CHANNEL = 0x00000009;
  static const COLOR_7_CHANNEL = 0x0000000a;
  static const COLOR_8_CHANNEL = 0x0000000b;
  static const COLOR_NAMED = 0x0000000c;
}

/// {@category Enum}
class COLORPROFILETYPE {
  static const CPT_ICC = 0x00000000;
  static const CPT_DMP = 0x00000001;
  static const CPT_CAMP = 0x00000002;
  static const CPT_GMMP = 0x00000003;
}

/// {@category Enum}
class COLORPROFILESUBTYPE {
  static const CPST_PERCEPTUAL = 0x00000000;
  static const CPST_RELATIVE_COLORIMETRIC = 0x00000001;
  static const CPST_SATURATION = 0x00000002;
  static const CPST_ABSOLUTE_COLORIMETRIC = 0x00000003;
  static const CPST_NONE = 0x00000004;
  static const CPST_RGB_WORKING_SPACE = 0x00000005;
  static const CPST_CUSTOM_WORKING_SPACE = 0x00000006;
  static const CPST_STANDARD_DISPLAY_COLOR_MODE = 0x00000007;
  static const CPST_EXTENDED_DISPLAY_COLOR_MODE = 0x00000008;
}

/// {@category Enum}
class COLORDATATYPE {
  static const COLOR_BYTE = 0x00000001;
  static const COLOR_WORD = 0x00000002;
  static const COLOR_FLOAT = 0x00000003;
  static const COLOR_S2DOT13FIXED = 0x00000004;
  static const COLOR_10b_R10G10B10A2 = 0x00000005;
  static const COLOR_10b_R10G10B10A2_XR = 0x00000006;
  static const COLOR_FLOAT16 = 0x00000007;
}

/// {@category Enum}
class BMFORMAT {
  static const BM_x555RGB = 0x00000000;
  static const BM_x555XYZ = 0x00000101;
  static const BM_x555Yxy = 0x00000102;
  static const BM_x555Lab = 0x00000103;
  static const BM_x555G3CH = 0x00000104;
  static const BM_RGBTRIPLETS = 0x00000002;
  static const BM_BGRTRIPLETS = 0x00000004;
  static const BM_XYZTRIPLETS = 0x00000201;
  static const BM_YxyTRIPLETS = 0x00000202;
  static const BM_LabTRIPLETS = 0x00000203;
  static const BM_G3CHTRIPLETS = 0x00000204;
  static const BM_5CHANNEL = 0x00000205;
  static const BM_6CHANNEL = 0x00000206;
  static const BM_7CHANNEL = 0x00000207;
  static const BM_8CHANNEL = 0x00000208;
  static const BM_GRAY = 0x00000209;
  static const BM_xRGBQUADS = 0x00000008;
  static const BM_xBGRQUADS = 0x00000010;
  static const BM_xG3CHQUADS = 0x00000304;
  static const BM_KYMCQUADS = 0x00000305;
  static const BM_CMYKQUADS = 0x00000020;
  static const BM_10b_RGB = 0x00000009;
  static const BM_10b_XYZ = 0x00000401;
  static const BM_10b_Yxy = 0x00000402;
  static const BM_10b_Lab = 0x00000403;
  static const BM_10b_G3CH = 0x00000404;
  static const BM_NAMED_INDEX = 0x00000405;
  static const BM_16b_RGB = 0x0000000a;
  static const BM_16b_XYZ = 0x00000501;
  static const BM_16b_Yxy = 0x00000502;
  static const BM_16b_Lab = 0x00000503;
  static const BM_16b_G3CH = 0x00000504;
  static const BM_16b_GRAY = 0x00000505;
  static const BM_565RGB = 0x00000001;
  static const BM_32b_scRGB = 0x00000601;
  static const BM_32b_scARGB = 0x00000602;
  static const BM_S2DOT13FIXED_scRGB = 0x00000603;
  static const BM_S2DOT13FIXED_scARGB = 0x00000604;
  static const BM_R10G10B10A2 = 0x00000701;
  static const BM_R10G10B10A2_XR = 0x00000702;
  static const BM_R16G16B16A16_FLOAT = 0x00000703;
}

/// {@category Enum}
class WCS_PROFILE_MANAGEMENT_SCOPE {
  static const WCS_PROFILE_MANAGEMENT_SCOPE_SYSTEM_WIDE = 0x00000000;
  static const WCS_PROFILE_MANAGEMENT_SCOPE_CURRENT_USER = 0x00000001;
}
