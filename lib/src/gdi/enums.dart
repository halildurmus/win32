/// {@category Enum}
class R2_MODE {
  static const R2_BLACK = 1;
  static const R2_NOTMERGEPEN = 2;
  static const R2_MASKNOTPEN = 3;
  static const R2_NOTCOPYPEN = 4;
  static const R2_MASKPENNOT = 5;
  static const R2_NOT = 6;
  static const R2_XORPEN = 7;
  static const R2_NOTMASKPEN = 8;
  static const R2_MASKPEN = 9;
  static const R2_NOTXORPEN = 10;
  static const R2_NOP = 11;
  static const R2_MERGENOTPEN = 12;
  static const R2_COPYPEN = 13;
  static const R2_MERGEPENNOT = 14;
  static const R2_MERGEPEN = 15;
  static const R2_WHITE = 16;
  static const R2_LAST = 16;
}

/// {@category Enum}
class RGN_COMBINE_MODE {
  static const RGN_AND = 1;
  static const RGN_OR = 2;
  static const RGN_XOR = 3;
  static const RGN_DIFF = 4;
  static const RGN_COPY = 5;
  static const RGN_MIN = 1;
  static const RGN_MAX = 5;
}

/// {@category Enum}
class ETO_OPTIONS {
  static const ETO_OPAQUE = 2;
  static const ETO_CLIPPED = 4;
  static const ETO_GLYPH_INDEX = 16;
  static const ETO_RTLREADING = 128;
  static const ETO_NUMERICSLOCAL = 1024;
  static const ETO_NUMERICSLATIN = 2048;
  static const ETO_IGNORELANGUAGE = 4096;
  static const ETO_PDY = 8192;
  static const ETO_REVERSE_INDEX_MAP = 65536;
}

/// {@category Enum}
class OBJ_TYPE {
  static const OBJ_PEN = 1;
  static const OBJ_BRUSH = 2;
  static const OBJ_DC = 3;
  static const OBJ_METADC = 4;
  static const OBJ_PAL = 5;
  static const OBJ_FONT = 6;
  static const OBJ_BITMAP = 7;
  static const OBJ_REGION = 8;
  static const OBJ_METAFILE = 9;
  static const OBJ_MEMDC = 10;
  static const OBJ_EXTPEN = 11;
  static const OBJ_ENHMETADC = 12;
  static const OBJ_ENHMETAFILE = 13;
  static const OBJ_COLORSPACE = 14;
}

/// {@category Enum}
class ROP_CODE {
  static const SRCCOPY = 13369376;
  static const SRCPAINT = 15597702;
  static const SRCAND = 8913094;
  static const SRCINVERT = 6684742;
  static const SRCERASE = 4457256;
  static const NOTSRCCOPY = 3342344;
  static const NOTSRCERASE = 1114278;
  static const MERGECOPY = 12583114;
  static const MERGEPAINT = 12255782;
  static const PATCOPY = 15728673;
  static const PATPAINT = 16452105;
  static const PATINVERT = 5898313;
  static const DSTINVERT = 5570569;
  static const BLACKNESS = 66;
  static const WHITENESS = 16711778;
  static const NOMIRRORBITMAP = 2147483648;
  static const CAPTUREBLT = 1073741824;
}

/// {@category Enum}
class DIB_USAGE {
  static const DIB_RGB_COLORS = 0;
  static const DIB_PAL_COLORS = 1;
}

/// {@category Enum}
class DISPLAYCONFIG_COLOR_ENCODING {
  static const DISPLAYCONFIG_COLOR_ENCODING_RGB = 0;
  static const DISPLAYCONFIG_COLOR_ENCODING_YCBCR444 = 1;
  static const DISPLAYCONFIG_COLOR_ENCODING_YCBCR422 = 2;
  static const DISPLAYCONFIG_COLOR_ENCODING_YCBCR420 = 3;
  static const DISPLAYCONFIG_COLOR_ENCODING_INTENSITY = 4;
  static const DISPLAYCONFIG_COLOR_ENCODING_FORCE_UINT32 = 4294967295;
}

/// {@category Enum}
class tagMxdcLandscapeRotationEnums {
  static const MXDC_LANDSCAPE_ROTATE_COUNTERCLOCKWISE_90_DEGREES = 90;
  static const MXDC_LANDSCAPE_ROTATE_NONE = 0;
  static const MXDC_LANDSCAPE_ROTATE_COUNTERCLOCKWISE_270_DEGREES = 4294967206;
}

/// {@category Enum}
class tagMxdcImageTypeEnums {
  static const MXDC_IMAGETYPE_JPEGHIGH_COMPRESSION = 1;
  static const MXDC_IMAGETYPE_JPEGMEDIUM_COMPRESSION = 2;
  static const MXDC_IMAGETYPE_JPEGLOW_COMPRESSION = 3;
  static const MXDC_IMAGETYPE_PNG = 4;
}

/// {@category Enum}
class tagMxdcS0PageEnums {
  static const MXDC_RESOURCE_TTF = 0;
  static const MXDC_RESOURCE_JPEG = 1;
  static const MXDC_RESOURCE_PNG = 2;
  static const MXDC_RESOURCE_TIFF = 3;
  static const MXDC_RESOURCE_WDP = 4;
  static const MXDC_RESOURCE_DICTIONARY = 5;
  static const MXDC_RESOURCE_ICC_PROFILE = 6;
  static const MXDC_RESOURCE_JPEG_THUMBNAIL = 7;
  static const MXDC_RESOURCE_PNG_THUMBNAIL = 8;
  static const MXDC_RESOURCE_MAX = 9;
}

