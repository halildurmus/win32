/// {@category Enum}
class R2_MODE {
  static const R2_BLACK = 0x00000001;
  static const R2_NOTMERGEPEN = 0x00000002;
  static const R2_MASKNOTPEN = 0x00000003;
  static const R2_NOTCOPYPEN = 0x00000004;
  static const R2_MASKPENNOT = 0x00000005;
  static const R2_NOT = 0x00000006;
  static const R2_XORPEN = 0x00000007;
  static const R2_NOTMASKPEN = 0x00000008;
  static const R2_MASKPEN = 0x00000009;
  static const R2_NOTXORPEN = 0x0000000a;
  static const R2_NOP = 0x0000000b;
  static const R2_MERGENOTPEN = 0x0000000c;
  static const R2_COPYPEN = 0x0000000d;
  static const R2_MERGEPENNOT = 0x0000000e;
  static const R2_MERGEPEN = 0x0000000f;
  static const R2_WHITE = 0x00000010;
  static const R2_LAST = 0x00000010;
}

/// {@category Enum}
class RGN_COMBINE_MODE {
  static const RGN_AND = 0x00000001;
  static const RGN_OR = 0x00000002;
  static const RGN_XOR = 0x00000003;
  static const RGN_DIFF = 0x00000004;
  static const RGN_COPY = 0x00000005;
  static const RGN_MIN = 0x00000001;
  static const RGN_MAX = 0x00000005;
}

/// {@category Enum}
class ETO_OPTIONS {
  static const ETO_OPAQUE = 0x00000002;
  static const ETO_CLIPPED = 0x00000004;
  static const ETO_GLYPH_INDEX = 0x00000010;
  static const ETO_RTLREADING = 0x00000080;
  static const ETO_NUMERICSLOCAL = 0x00000400;
  static const ETO_NUMERICSLATIN = 0x00000800;
  static const ETO_IGNORELANGUAGE = 0x00001000;
  static const ETO_PDY = 0x00002000;
  static const ETO_REVERSE_INDEX_MAP = 0x00010000;
}

/// {@category Enum}
class OBJ_TYPE {
  static const OBJ_PEN = 0x00000001;
  static const OBJ_BRUSH = 0x00000002;
  static const OBJ_DC = 0x00000003;
  static const OBJ_METADC = 0x00000004;
  static const OBJ_PAL = 0x00000005;
  static const OBJ_FONT = 0x00000006;
  static const OBJ_BITMAP = 0x00000007;
  static const OBJ_REGION = 0x00000008;
  static const OBJ_METAFILE = 0x00000009;
  static const OBJ_MEMDC = 0x0000000a;
  static const OBJ_EXTPEN = 0x0000000b;
  static const OBJ_ENHMETADC = 0x0000000c;
  static const OBJ_ENHMETAFILE = 0x0000000d;
  static const OBJ_COLORSPACE = 0x0000000e;
}

/// {@category Enum}
class ROP_CODE {
  static const SRCCOPY = 0x00cc0020;
  static const SRCPAINT = 0x00ee0086;
  static const SRCAND = 0x008800c6;
  static const SRCINVERT = 0x00660046;
  static const SRCERASE = 0x00440328;
  static const NOTSRCCOPY = 0x00330008;
  static const NOTSRCERASE = 0x001100a6;
  static const MERGECOPY = 0x00c000ca;
  static const MERGEPAINT = 0x00bb0226;
  static const PATCOPY = 0x00f00021;
  static const PATPAINT = 0x00fb0a09;
  static const PATINVERT = 0x005a0049;
  static const DSTINVERT = 0x00550009;
  static const BLACKNESS = 0x00000042;
  static const WHITENESS = 0x00ff0062;
  static const NOMIRRORBITMAP = 0x80000000;
  static const CAPTUREBLT = 0x40000000;
}

/// {@category Enum}
class DIB_USAGE {
  static const DIB_RGB_COLORS = 0x00000000;
  static const DIB_PAL_COLORS = 0x00000001;
}

/// {@category Enum}
class DISPLAYCONFIG_COLOR_ENCODING {
  static const DISPLAYCONFIG_COLOR_ENCODING_RGB = 0x00000000;
  static const DISPLAYCONFIG_COLOR_ENCODING_YCBCR444 = 0x00000001;
  static const DISPLAYCONFIG_COLOR_ENCODING_YCBCR422 = 0x00000002;
  static const DISPLAYCONFIG_COLOR_ENCODING_YCBCR420 = 0x00000003;
  static const DISPLAYCONFIG_COLOR_ENCODING_INTENSITY = 0x00000004;
  static const DISPLAYCONFIG_COLOR_ENCODING_FORCE_UINT32 = 0xffffffff;
}

/// {@category Enum}
class tagMxdcLandscapeRotationEnums {
  static const MXDC_LANDSCAPE_ROTATE_COUNTERCLOCKWISE_90_DEGREES = 0x0000005a;
  static const MXDC_LANDSCAPE_ROTATE_NONE = 0x00000000;
  static const MXDC_LANDSCAPE_ROTATE_COUNTERCLOCKWISE_270_DEGREES = 0xffffffa6;
}

/// {@category Enum}
class tagMxdcImageTypeEnums {
  static const MXDC_IMAGETYPE_JPEGHIGH_COMPRESSION = 0x00000001;
  static const MXDC_IMAGETYPE_JPEGMEDIUM_COMPRESSION = 0x00000002;
  static const MXDC_IMAGETYPE_JPEGLOW_COMPRESSION = 0x00000003;
  static const MXDC_IMAGETYPE_PNG = 0x00000004;
}

/// {@category Enum}
class tagMxdcS0PageEnums {
  static const MXDC_RESOURCE_TTF = 0x00000000;
  static const MXDC_RESOURCE_JPEG = 0x00000001;
  static const MXDC_RESOURCE_PNG = 0x00000002;
  static const MXDC_RESOURCE_TIFF = 0x00000003;
  static const MXDC_RESOURCE_WDP = 0x00000004;
  static const MXDC_RESOURCE_DICTIONARY = 0x00000005;
  static const MXDC_RESOURCE_ICC_PROFILE = 0x00000006;
  static const MXDC_RESOURCE_JPEG_THUMBNAIL = 0x00000007;
  static const MXDC_RESOURCE_PNG_THUMBNAIL = 0x00000008;
  static const MXDC_RESOURCE_MAX = 0x00000009;
}

