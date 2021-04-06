/// {@category Enum}
class AddFontResourceEx_fl {
  static const FR_PRIVATE = 0x00000010;
  static const FR_NOT_ENUM = 0x00000020;
}

/// {@category Enum}
class CDS_TYPE {
  static const CDS_UPDATEREGISTRY = 0x00000001;
  static const CDS_FULLSCREEN = 0x00000004;
  static const CDS_GLOBAL = 0x00000008;
  static const CDS_NORESET = 0x10000000;
  static const CDS_RESET = 0x40000000;
  static const CDS_SET_PRIMARY = 0x00000010;
  static const CDS_TEST = 0x00000002;
  static const CDS_VIDEOPARAMETERS = 0x00000020;
  static const CDS_ENABLE_UNSAFE_MODES = 0x00000100;
  static const CDS_DISABLE_UNSAFE_MODES = 0x00000200;
  static const CDS_RESET_EX = 0x20000000;
}

/// {@category Enum}
class CombineRgn_iMode {
  static const RGN_AND = 0x00000001;
  static const RGN_COPY = 0x00000005;
  static const RGN_DIFF = 0x00000004;
  static const RGN_OR = 0x00000002;
  static const RGN_XOR = 0x00000003;
}

/// {@category Enum}
class CreateDIBitmap_iUsage {
  static const DIB_PAL_COLORS = 0x00000001;
  static const DIB_RGB_COLORS = 0x00000000;
}

/// {@category Enum}
class CreateFontPackage_usSubsetEncodingFlags {
  static const TTFCFP_STD_MAC_CHAR_SET = 0x00000000;
  static const TTFCFP_SYMBOL_CHAR_SET = 0x00000000;
  static const TTFCFP_UNICODE_CHAR_SET = 0x00000001;
}

/// {@category Enum}
class CreateFontPackage_usSubsetPlatformFlags {
  static const TTFCFP_UNICODE_PLATFORMID = 0x00000000;
  static const TTFCFP_ISO_PLATFORMID = 0x00000002;
}

/// {@category Enum}
class CreateFont_iClipPrecision {
  static const CLIP_CHARACTER_PRECIS = 0x00000001;
  static const CLIP_DEFAULT_PRECIS = 0x00000000;
  static const CLIP_DFA_DISABLE = 0x00000040;
  static const CLIP_EMBEDDED = 0x00000080;
  static const CLIP_LH_ANGLES = 0x00000010;
  static const CLIP_MASK = 0x0000000f;
  static const CLIP_STROKE_PRECIS = 0x00000002;
  static const CLIP_TT_ALWAYS = 0x00000020;
}

/// {@category Enum}
class CreateFont_iOutPrecision {
  static const OUT_CHARACTER_PRECIS = 0x00000002;
  static const OUT_DEFAULT_PRECIS = 0x00000000;
  static const OUT_DEVICE_PRECIS = 0x00000005;
  static const OUT_OUTLINE_PRECIS = 0x00000008;
  static const OUT_PS_ONLY_PRECIS = 0x0000000a;
  static const OUT_RASTER_PRECIS = 0x00000006;
  static const OUT_STRING_PRECIS = 0x00000001;
  static const OUT_STROKE_PRECIS = 0x00000003;
  static const OUT_TT_ONLY_PRECIS = 0x00000007;
  static const OUT_TT_PRECIS = 0x00000004;
}

/// {@category Enum}
class CreateFont_iPitchAndFamily {
  static const FF_DECORATIVE = 0x00000050;
  static const FF_DONTCARE = 0x00000000;
  static const FF_MODERN = 0x00000030;
  static const FF_ROMAN = 0x00000010;
  static const FF_SCRIPT = 0x00000040;
  static const FF_SWISS = 0x00000020;
}

/// {@category Enum}
class CreateFont_iQuality {
  static const ANTIALIASED_QUALITY = 0x00000004;
  static const CLEARTYPE_QUALITY = 0x00000005;
  static const DEFAULT_QUALITY = 0x00000000;
  static const DRAFT_QUALITY = 0x00000001;
  static const NONANTIALIASED_QUALITY = 0x00000003;
  static const PROOF_QUALITY = 0x00000002;
}

/// {@category Enum}
class CreatePen_iStyleFlags {
  static const PS_SOLID = 0x00000000;
  static const PS_DASH = 0x00000001;
  static const PS_DOT = 0x00000002;
  static const PS_DASHDOT = 0x00000003;
  static const PS_DASHDOTDOT = 0x00000004;
  static const PS_NULL = 0x00000005;
  static const PS_INSIDEFRAME = 0x00000006;
}

/// {@category Enum}
class CreatePolygonRgn_iMode {
  static const ALTERNATE = 0x00000001;
  static const WINDING = 0x00000002;
}

/// {@category Enum}
class DFCS_STATE {
  static const DFCS_CAPTIONCLOSE = 0x00000000;
  static const DFCS_CAPTIONMIN = 0x00000001;
  static const DFCS_CAPTIONMAX = 0x00000002;
  static const DFCS_CAPTIONRESTORE = 0x00000003;
  static const DFCS_CAPTIONHELP = 0x00000004;
  static const DFCS_MENUARROW = 0x00000000;
  static const DFCS_MENUCHECK = 0x00000001;
  static const DFCS_MENUBULLET = 0x00000002;
  static const DFCS_MENUARROWRIGHT = 0x00000004;
  static const DFCS_SCROLLUP = 0x00000000;
  static const DFCS_SCROLLDOWN = 0x00000001;
  static const DFCS_SCROLLLEFT = 0x00000002;
  static const DFCS_SCROLLRIGHT = 0x00000003;
  static const DFCS_SCROLLCOMBOBOX = 0x00000005;
  static const DFCS_SCROLLSIZEGRIP = 0x00000008;
  static const DFCS_SCROLLSIZEGRIPRIGHT = 0x00000010;
  static const DFCS_BUTTONCHECK = 0x00000000;
  static const DFCS_BUTTONRADIOIMAGE = 0x00000001;
  static const DFCS_BUTTONRADIOMASK = 0x00000002;
  static const DFCS_BUTTONRADIO = 0x00000004;
  static const DFCS_BUTTON3STATE = 0x00000008;
  static const DFCS_BUTTONPUSH = 0x00000010;
  static const DFCS_INACTIVE = 0x00000100;
  static const DFCS_PUSHED = 0x00000200;
  static const DFCS_CHECKED = 0x00000400;
  static const DFCS_TRANSPARENT = 0x00000800;
  static const DFCS_HOT = 0x00001000;
  static const DFCS_ADJUSTRECT = 0x00002000;
  static const DFCS_FLAT = 0x00004000;
  static const DFCS_MONO = 0x00008000;
}

/// {@category Enum}
class DFC_TYPE {
  static const DFC_CAPTION = 0x00000001;
  static const DFC_MENU = 0x00000002;
  static const DFC_SCROLL = 0x00000003;
  static const DFC_BUTTON = 0x00000004;
  static const DFC_POPUPMENU = 0x00000005;
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
class DISP_CHANGE {
  static const DISP_CHANGE_SUCCESSFUL = 0x00000000;
  static const DISP_CHANGE_RESTART = 0x00000001;
  static const DISP_CHANGE_FAILED = 0xffffffff;
  static const DISP_CHANGE_BADMODE = 0xfffffffe;
  static const DISP_CHANGE_NOTUPDATED = 0xfffffffd;
  static const DISP_CHANGE_BADFLAGS = 0xfffffffc;
  static const DISP_CHANGE_BADPARAM = 0xfffffffb;
  static const DISP_CHANGE_BADDUALVIEW = 0xfffffffa;
}

/// {@category Enum}
class DRAWEDGE_FLAGS {
  static const BDR_RAISEDOUTER = 0x00000001;
  static const BDR_SUNKENOUTER = 0x00000002;
  static const BDR_RAISEDINNER = 0x00000004;
  static const BDR_SUNKENINNER = 0x00000008;
  static const BDR_OUTER = 0x00000003;
  static const BDR_INNER = 0x0000000c;
  static const BDR_RAISED = 0x00000005;
  static const BDR_SUNKEN = 0x0000000a;
  static const EDGE_RAISED = 0x00000005;
  static const EDGE_SUNKEN = 0x0000000a;
  static const EDGE_ETCHED = 0x00000006;
  static const EDGE_BUMP = 0x00000009;
}

/// {@category Enum}
class DRAWSTATE_FLAGS {
  static const DST_COMPLEX = 0x00000000;
  static const DST_TEXT = 0x00000001;
  static const DST_PREFIXTEXT = 0x00000002;
  static const DST_ICON = 0x00000003;
  static const DST_BITMAP = 0x00000004;
  static const DSS_NORMAL = 0x00000000;
  static const DSS_UNION = 0x00000010;
  static const DSS_DISABLED = 0x00000020;
  static const DSS_MONO = 0x00000080;
  static const DSS_HIDEPREFIX = 0x00000200;
  static const DSS_PREFIXONLY = 0x00000400;
  static const DSS_RIGHT = 0x00008000;
}

/// {@category Enum}
class DrawCaption_flags {
  static const DC_ACTIVE = 0x00000001;
  static const DC_BUTTONS = 0x00001000;
  static const DC_GRADIENT = 0x00000020;
  static const DC_ICON = 0x00000004;
  static const DC_INBUTTON = 0x00000010;
  static const DC_SMALLCAP = 0x00000002;
  static const DC_TEXT = 0x00000008;
}

/// {@category Enum}
class DrawEdge_grfFlags {
  static const BF_ADJUST = 0x00002000;
  static const BF_BOTTOM = 0x00000008;
  static const BF_BOTTOMLEFT = 0x00000009;
  static const BF_BOTTOMRIGHT = 0x0000000c;
  static const BF_DIAGONAL = 0x00000010;
  static const BF_DIAGONAL_ENDBOTTOMLEFT = 0x00000019;
  static const BF_DIAGONAL_ENDBOTTOMRIGHT = 0x0000001c;
  static const BF_DIAGONAL_ENDTOPLEFT = 0x00000013;
  static const BF_DIAGONAL_ENDTOPRIGHT = 0x00000016;
  static const BF_FLAT = 0x00004000;
  static const BF_LEFT = 0x00000001;
  static const BF_MIDDLE = 0x00000800;
  static const BF_MONO = 0x00008000;
  static const BF_RECT = 0x0000000f;
  static const BF_RIGHT = 0x00000004;
  static const BF_SOFT = 0x00001000;
  static const BF_TOP = 0x00000002;
  static const BF_TOPLEFT = 0x00000003;
  static const BF_TOPRIGHT = 0x00000006;
}

/// {@category Enum}
class DrawText_format {
  static const DT_BOTTOM = 0x00000008;
  static const DT_CALCRECT = 0x00000400;
  static const DT_CENTER = 0x00000001;
  static const DT_EDITCONTROL = 0x00002000;
  static const DT_END_ELLIPSIS = 0x00008000;
  static const DT_EXPANDTABS = 0x00000040;
  static const DT_EXTERNALLEADING = 0x00000200;
  static const DT_HIDEPREFIX = 0x00100000;
  static const DT_INTERNAL = 0x00001000;
  static const DT_LEFT = 0x00000000;
  static const DT_MODIFYSTRING = 0x00010000;
  static const DT_NOCLIP = 0x00000100;
  static const DT_NOFULLWIDTHCHARBREAK = 0x00080000;
  static const DT_NOPREFIX = 0x00000800;
  static const DT_PATH_ELLIPSIS = 0x00004000;
  static const DT_PREFIXONLY = 0x00200000;
  static const DT_RIGHT = 0x00000002;
  static const DT_RTLREADING = 0x00020000;
  static const DT_SINGLELINE = 0x00000020;
  static const DT_TABSTOP = 0x00000080;
  static const DT_TOP = 0x00000000;
  static const DT_VCENTER = 0x00000004;
  static const DT_WORDBREAK = 0x00000010;
  static const DT_WORD_ELLIPSIS = 0x00040000;
}

/// {@category Enum}
class ENUM_DISPLAY_SETTINGS_MODE {
  static const ENUM_CURRENT_SETTINGS = 0xffffffff;
  static const ENUM_REGISTRY_SETTINGS = 0xfffffffe;
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
class ExtCreatePen_iPenStyleFlags {
  static const PS_GEOMETRIC = 0x00010000;
  static const PS_COSMETIC = 0x00000000;
}

/// {@category Enum}
class ExtFloodFill_typeFlags {
  static const FLOODFILLBORDER = 0x00000000;
  static const FLOODFILLSURFACE = 0x00000001;
}

/// {@category Enum}
class GRADIENT_FILL {
  static const GRADIENT_FILL_RECT_H = 0x00000000;
  static const GRADIENT_FILL_RECT_V = 0x00000001;
  static const GRADIENT_FILL_TRIANGLE = 0x00000002;
}

/// {@category Enum}
class GetCharacterPlacement_dwFlags {
  static const GCP_CLASSIN = 0x00080000;
  static const GCP_DIACRITIC = 0x00000100;
  static const GCP_DISPLAYZWG = 0x00400000;
  static const GCP_GLYPHSHAPE = 0x00000010;
  static const GCP_JUSTIFY = 0x00010000;
  static const GCP_KASHIDA = 0x00000400;
  static const GCP_LIGATE = 0x00000020;
  static const GCP_MAXEXTENT = 0x00100000;
  static const GCP_NEUTRALOVERRIDE = 0x02000000;
  static const GCP_NUMERICOVERRIDE = 0x01000000;
  static const GCP_NUMERICSLATIN = 0x04000000;
  static const GCP_NUMERICSLOCAL = 0x08000000;
  static const GCP_REORDER = 0x00000002;
  static const GCP_SYMSWAPOFF = 0x00800000;
  static const GCP_USEKERNING = 0x00000008;
}

/// {@category Enum}
class GetDCEx_flags {
  static const DCX_WINDOW = 0x00000001;
  static const DCX_CACHE = 0x00000002;
  static const DCX_PARENTCLIP = 0x00000020;
  static const DCX_CLIPSIBLINGS = 0x00000010;
  static const DCX_CLIPCHILDREN = 0x00000008;
  static const DCX_NORESETATTRS = 0x00000004;
  static const DCX_LOCKWINDOWUPDATE = 0x00000400;
  static const DCX_EXCLUDERGN = 0x00000040;
  static const DCX_INTERSECTRGN = 0x00000080;
  static const DCX_INTERSECTUPDATE = 0x00000200;
  static const DCX_VALIDATE = 0x00200000;
}

/// {@category Enum}
class GetDeviceCaps_indexFlags {
  static const DRIVERVERSION = 0x00000000;
}

/// {@category Enum}
class GetGlyphOutline_fuFormat {
  static const GGO_BEZIER = 0x00000003;
  static const GGO_BITMAP = 0x00000001;
  static const GGO_GLYPH_INDEX = 0x00000080;
  static const GGO_GRAY2_BITMAP = 0x00000004;
  static const GGO_GRAY4_BITMAP = 0x00000005;
  static const GGO_GRAY8_BITMAP = 0x00000006;
  static const GGO_METRICS = 0x00000000;
  static const GGO_NATIVE = 0x00000002;
  static const GGO_UNHINTED = 0x00000100;
}

/// {@category Enum}
class GetStockObject_iFlags {
  static const BLACK_BRUSH = 0x00000004;
  static const DKGRAY_BRUSH = 0x00000003;
  static const DC_BRUSH = 0x00000012;
  static const GRAY_BRUSH = 0x00000002;
  static const HOLLOW_BRUSH = 0x00000005;
  static const LTGRAY_BRUSH = 0x00000001;
  static const NULL_BRUSH = 0x00000005;
  static const WHITE_BRUSH = 0x00000000;
  static const BLACK_PEN = 0x00000007;
  static const DC_PEN = 0x00000013;
  static const NULL_PEN = 0x00000008;
  static const WHITE_PEN = 0x00000006;
  static const ANSI_FIXED_FONT = 0x0000000b;
  static const ANSI_VAR_FONT = 0x0000000c;
  static const DEVICE_DEFAULT_FONT = 0x0000000e;
  static const DEFAULT_GUI_FONT = 0x00000011;
  static const OEM_FIXED_FONT = 0x0000000a;
  static const SYSTEM_FONT = 0x0000000d;
  static const SYSTEM_FIXED_FONT = 0x00000010;
  static const DEFAULT_PALETTE = 0x0000000f;
}

/// {@category Enum}
class ModifyWorldTransform_modeFlags {
  static const MWT_IDENTITY = 0x00000001;
  static const MWT_LEFTMULTIPLY = 0x00000002;
  static const MWT_RIGHTMULTIPLY = 0x00000003;
}

/// {@category Enum}
class MonitorFrom_dwFlags {
  static const MONITOR_DEFAULTTONEAREST = 0x00000002;
  static const MONITOR_DEFAULTTONULL = 0x00000000;
  static const MONITOR_DEFAULTTOPRIMARY = 0x00000001;
}

/// {@category Enum}
class MxdcImageTypeEnums {
  static const MXDC_IMAGETYPE_JPEGHIGH_COMPRESSION = 0x00000001;
  static const MXDC_IMAGETYPE_JPEGMEDIUM_COMPRESSION = 0x00000002;
  static const MXDC_IMAGETYPE_JPEGLOW_COMPRESSION = 0x00000003;
  static const MXDC_IMAGETYPE_PNG = 0x00000004;
}

/// {@category Enum}
class MxdcLandscapeRotationEnums {
  static const MXDC_LANDSCAPE_ROTATE_COUNTERCLOCKWISE_90_DEGREES = 0x0000005a;
  static const MXDC_LANDSCAPE_ROTATE_NONE = 0x00000000;
  static const MXDC_LANDSCAPE_ROTATE_COUNTERCLOCKWISE_270_DEGREES = 0xffffffa6;
}

/// {@category Enum}
class MxdcS0PageEnums {
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
class PatBlt_ropFlags {
  static const PATCOPY = 0x00f00021;
  static const PATINVERT = 0x005a0049;
  static const DSTINVERT = 0x00550009;
  static const BLACKNESS = 0x00000042;
  static const WHITENESS = 0x00ff0062;
}

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
class REDRAW_WINDOW_FLAGS {
  static const RDW_INVALIDATE = 0x00000001;
  static const RDW_INTERNALPAINT = 0x00000002;
  static const RDW_ERASE = 0x00000004;
  static const RDW_VALIDATE = 0x00000008;
  static const RDW_NOINTERNALPAINT = 0x00000010;
  static const RDW_NOERASE = 0x00000020;
  static const RDW_NOCHILDREN = 0x00000040;
  static const RDW_ALLCHILDREN = 0x00000080;
  static const RDW_UPDATENOW = 0x00000100;
  static const RDW_ERASENOW = 0x00000200;
  static const RDW_FRAME = 0x00000400;
  static const RDW_NOFRAME = 0x00000800;
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
class SetArcDirection_dirFlags {
  static const AD_COUNTERCLOCKWISE = 0x00000001;
  static const AD_CLOCKWISE = 0x00000002;
}

/// {@category Enum}
class SetBkMode_modeFlags {
  static const OPAQUE = 0x00000002;
  static const TRANSPARENT = 0x00000001;
}

/// {@category Enum}
class SetBoundsRect_flags {
  static const DCB_ACCUMULATE = 0x00000002;
  static const DCB_DISABLE = 0x00000008;
  static const DCB_ENABLE = 0x00000004;
  static const DCB_RESET = 0x00000001;
}

/// {@category Enum}
class SetGraphicsMode_iModeFlags {
  static const GM_COMPATIBLE = 0x00000001;
  static const GM_ADVANCED = 0x00000002;
}

/// {@category Enum}
class SetLayout_lFlags {
  static const LAYOUT_BITMAPORIENTATIONPRESERVED = 0x00000008;
  static const LAYOUT_RTL = 0x00000001;
}

/// {@category Enum}
class SetMapMode_iModeFlags {
  static const MM_ANISOTROPIC = 0x00000008;
  static const MM_HIENGLISH = 0x00000005;
  static const MM_HIMETRIC = 0x00000003;
  static const MM_ISOTROPIC = 0x00000007;
  static const MM_LOENGLISH = 0x00000004;
  static const MM_LOMETRIC = 0x00000002;
  static const MM_TEXT = 0x00000001;
  static const MM_TWIPS = 0x00000006;
}

/// {@category Enum}
class SetStretchBltMode_modeFlags {
  static const BLACKONWHITE = 0x00000001;
  static const COLORONCOLOR = 0x00000003;
  static const HALFTONE = 0x00000004;
  static const STRETCH_ANDSCANS = 0x00000001;
  static const STRETCH_DELETESCANS = 0x00000003;
  static const STRETCH_HALFTONE = 0x00000004;
  static const STRETCH_ORSCANS = 0x00000002;
  static const WHITEONBLACK = 0x00000002;
}

/// {@category Enum}
class SetSystemPaletteUse_useFlags {
  static const SYSPAL_NOSTATIC = 0x00000002;
  static const SYSPAL_NOSTATIC256 = 0x00000003;
  static const SYSPAL_STATIC = 0x00000001;
}

/// {@category Enum}
class TTEmbedFont_ulCharSet {
  static const CHARSET_UNICODE = 0x00000001;
  static const CHARSET_SYMBOL = 0x00000002;
}

/// {@category Enum}
class TTLoadEmbeddedFont_pulStatusFlags {
  static const TTLOAD_FONT_SUBSETTED = 0x00000001;
  static const TTLOAD_FONT_IN_SYSSTARTUP = 0x00000002;
}

/// {@category Enum}
class TT_pulPrivStatus {
  static const EMBED_PREVIEWPRINT = 0x00000001;
  static const EMBED_EDITABLE = 0x00000002;
  static const EMBED_INSTALLABLE = 0x00000003;
  static const EMBED_NOEMBEDDING = 0x00000004;
}

/// {@category Enum}
class TT_ulFlags {
  static const TTEMBED_EMBEDEUDC = 0x00000020;
  static const TTEMBED_RAW = 0x00000000;
  static const TTEMBED_SUBSET = 0x00000001;
  static const TTEMBED_TTCOMPRESSED = 0x00000004;
}

/// {@category Enum}
class TT_ulPrivs {
  static const LICENSE_PREVIEWPRINT = 0x00000004;
  static const LICENSE_EDITABLE = 0x00000008;
  static const LICENSE_INSTALLABLE = 0x00000000;
  static const LICENSE_NOEMBEDDING = 0x00000002;
  static const LICENSE_DEFAULT = 0x00000000;
}
