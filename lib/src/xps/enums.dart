/// {@category Enum}
class DeviceCapabilities_fwCapability {
  static const DC_BINNAMES = 0x0000000c;
  static const DC_BINS = 0x00000006;
  static const DC_COLLATE = 0x00000016;
  static const DC_COLORDEVICE = 0x00000020;
  static const DC_COPIES = 0x00000012;
  static const DC_DRIVER = 0x0000000b;
  static const DC_DUPLEX = 0x00000007;
  static const DC_ENUMRESOLUTIONS = 0x0000000d;
  static const DC_EXTRA = 0x00000009;
  static const DC_FIELDS = 0x00000001;
  static const DC_FILEDEPENDENCIES = 0x0000000e;
  static const DC_MAXEXTENT = 0x00000005;
  static const DC_MEDIAREADY = 0x0000001d;
  static const DC_MEDIATYPENAMES = 0x00000022;
  static const DC_MEDIATYPES = 0x00000023;
  static const DC_MINEXTENT = 0x00000004;
  static const DC_ORIENTATION = 0x00000011;
  static const DC_NUP = 0x00000021;
  static const DC_PAPERNAMES = 0x00000010;
  static const DC_PAPERS = 0x00000002;
  static const DC_PAPERSIZE = 0x00000003;
  static const DC_PERSONALITY = 0x00000019;
  static const DC_PRINTERMEM = 0x0000001c;
  static const DC_PRINTRATE = 0x0000001a;
  static const DC_PRINTRATEPPM = 0x0000001f;
  static const DC_PRINTRATEUNIT = 0x0000001b;
  static const DC_SIZE = 0x00000008;
  static const DC_STAPLE = 0x0000001e;
  static const DC_TRUETYPE = 0x0000000f;
  static const DC_VERSION = 0x0000000a;
}

/// {@category Enum}
class EDefaultDevmodeType {
  static const kUserDefaultDevmode = 0x00000000;
  static const kPrinterDefaultDevmode = 0x00000001;
}

/// {@category Enum}
class EPrintTicketScope {
  static const kPTPageScope = 0x00000000;
  static const kPTDocumentScope = 0x00000001;
  static const kPTJobScope = 0x00000002;
}

/// {@category Enum}
class PSINJECT_POINT {
  static const PSINJECT_BEGINSTREAM = 0x02020001;
  static const PSINJECT_PSADOBE = 0x04020002;
  static const PSINJECT_PAGESATEND = 0x05020003;
  static const PSINJECT_PAGES = 0x08020004;
  static const PSINJECT_DOCNEEDEDRES = 0x06020005;
  static const PSINJECT_DOCSUPPLIEDRES = 0x07020006;
  static const PSINJECT_PAGEORDER = 0x09020007;
  static const PSINJECT_ORIENTATION = 0x10020008;
  static const PSINJECT_BOUNDINGBOX = 0x0a020009;
  static const PSINJECT_DOCUMENTPROCESSCOLORS = 0x0b02000a;
  static const PSINJECT_COMMENTS = 0x0c02000b;
  static const PSINJECT_BEGINDEFAULTS = 0x0d02000c;
  static const PSINJECT_ENDDEFAULTS = 0x0e02000d;
  static const PSINJECT_BEGINPROLOG = 0x0f02000e;
  static const PSINJECT_ENDPROLOG = 0x1102000f;
  static const PSINJECT_BEGINSETUP = 0x20020010;
  static const PSINJECT_ENDSETUP = 0x12020011;
  static const PSINJECT_TRAILER = 0x13020012;
  static const PSINJECT_EOF = 0x14020013;
  static const PSINJECT_ENDSTREAM = 0x15020014;
  static const PSINJECT_DOCUMENTPROCESSCOLORSATEND = 0x64020015;
  static const PSINJECT_PAGENUMBER = 0x65020064;
  static const PSINJECT_BEGINPAGESETUP = 0x66020065;
  static const PSINJECT_ENDPAGESETUP = 0x67020066;
  static const PSINJECT_PAGETRAILER = 0x68020067;
  static const PSINJECT_PLATECOLOR = 0x69020068;
  static const PSINJECT_SHOWPAGE = 0x6a020069;
  static const PSINJECT_PAGEBBOX = 0x6b02006a;
  static const PSINJECT_ENDPAGECOMMENTS = 0xc802006b;
  static const PSINJECT_VMSAVE = 0xc90200c8;
  static const PSINJECT_VMRESTORE = 0x011400c9;
}

/// {@category Enum}
class PrintDocumentPackageCompletion {
  static const PrintDocumentPackageCompletion_InProgress = 0x00000000;
  static const PrintDocumentPackageCompletion_Completed = 0x00000001;
  static const PrintDocumentPackageCompletion_Canceled = 0x00000002;
  static const PrintDocumentPackageCompletion_Failed = 0x00000003;
}

/// {@category Enum}
class PrintWindow_nFlags {
  static const PW_CLIENTONLY = 0x00000001;
}

/// {@category Enum}
class XPS_COLOR_INTERPOLATION {
  static const XPS_COLOR_INTERPOLATION_SCRGBLINEAR = 0x00000001;
  static const XPS_COLOR_INTERPOLATION_SRGBLINEAR = 0x00000002;
}

/// {@category Enum}
class XPS_COLOR_TYPE {
  static const XPS_COLOR_TYPE_SRGB = 0x00000001;
  static const XPS_COLOR_TYPE_SCRGB = 0x00000002;
  static const XPS_COLOR_TYPE_CONTEXT = 0x00000003;
}

/// {@category Enum}
class XPS_DASH_CAP {
  static const XPS_DASH_CAP_FLAT = 0x00000001;
  static const XPS_DASH_CAP_ROUND = 0x00000002;
  static const XPS_DASH_CAP_SQUARE = 0x00000003;
  static const XPS_DASH_CAP_TRIANGLE = 0x00000004;
}

/// {@category Enum}
class XPS_DOCUMENT_TYPE {
  static const XPS_DOCUMENT_TYPE_UNSPECIFIED = 0x00000001;
  static const XPS_DOCUMENT_TYPE_XPS = 0x00000002;
  static const XPS_DOCUMENT_TYPE_OPENXPS = 0x00000003;
}

/// {@category Enum}
class XPS_FILL_RULE {
  static const XPS_FILL_RULE_EVENODD = 0x00000001;
  static const XPS_FILL_RULE_NONZERO = 0x00000002;
}

/// {@category Enum}
class XPS_FONT_EMBEDDING {
  static const XPS_FONT_EMBEDDING_NORMAL = 0x00000001;
  static const XPS_FONT_EMBEDDING_OBFUSCATED = 0x00000002;
  static const XPS_FONT_EMBEDDING_RESTRICTED = 0x00000003;
  static const XPS_FONT_EMBEDDING_RESTRICTED_UNOBFUSCATED = 0x00000004;
}

/// {@category Enum}
class XPS_IMAGE_TYPE {
  static const XPS_IMAGE_TYPE_JPEG = 0x00000001;
  static const XPS_IMAGE_TYPE_PNG = 0x00000002;
  static const XPS_IMAGE_TYPE_TIFF = 0x00000003;
  static const XPS_IMAGE_TYPE_WDP = 0x00000004;
  static const XPS_IMAGE_TYPE_JXR = 0x00000005;
}

/// {@category Enum}
class XPS_INTERLEAVING {
  static const XPS_INTERLEAVING_OFF = 0x00000001;
  static const XPS_INTERLEAVING_ON = 0x00000002;
}

/// {@category Enum}
class XPS_LINE_CAP {
  static const XPS_LINE_CAP_FLAT = 0x00000001;
  static const XPS_LINE_CAP_ROUND = 0x00000002;
  static const XPS_LINE_CAP_SQUARE = 0x00000003;
  static const XPS_LINE_CAP_TRIANGLE = 0x00000004;
}

/// {@category Enum}
class XPS_LINE_JOIN {
  static const XPS_LINE_JOIN_MITER = 0x00000001;
  static const XPS_LINE_JOIN_BEVEL = 0x00000002;
  static const XPS_LINE_JOIN_ROUND = 0x00000003;
}

/// {@category Enum}
class XPS_OBJECT_TYPE {
  static const XPS_OBJECT_TYPE_CANVAS = 0x00000001;
  static const XPS_OBJECT_TYPE_GLYPHS = 0x00000002;
  static const XPS_OBJECT_TYPE_PATH = 0x00000003;
  static const XPS_OBJECT_TYPE_MATRIX_TRANSFORM = 0x00000004;
  static const XPS_OBJECT_TYPE_GEOMETRY = 0x00000005;
  static const XPS_OBJECT_TYPE_SOLID_COLOR_BRUSH = 0x00000006;
  static const XPS_OBJECT_TYPE_IMAGE_BRUSH = 0x00000007;
  static const XPS_OBJECT_TYPE_LINEAR_GRADIENT_BRUSH = 0x00000008;
  static const XPS_OBJECT_TYPE_RADIAL_GRADIENT_BRUSH = 0x00000009;
  static const XPS_OBJECT_TYPE_VISUAL_BRUSH = 0x0000000a;
}

/// {@category Enum}
class XPS_SEGMENT_STROKE_PATTERN {
  static const XPS_SEGMENT_STROKE_PATTERN_ALL = 0x00000001;
  static const XPS_SEGMENT_STROKE_PATTERN_NONE = 0x00000002;
  static const XPS_SEGMENT_STROKE_PATTERN_MIXED = 0x00000003;
}

/// {@category Enum}
class XPS_SEGMENT_TYPE {
  static const XPS_SEGMENT_TYPE_ARC_LARGE_CLOCKWISE = 0x00000001;
  static const XPS_SEGMENT_TYPE_ARC_LARGE_COUNTERCLOCKWISE = 0x00000002;
  static const XPS_SEGMENT_TYPE_ARC_SMALL_CLOCKWISE = 0x00000003;
  static const XPS_SEGMENT_TYPE_ARC_SMALL_COUNTERCLOCKWISE = 0x00000004;
  static const XPS_SEGMENT_TYPE_BEZIER = 0x00000005;
  static const XPS_SEGMENT_TYPE_LINE = 0x00000006;
  static const XPS_SEGMENT_TYPE_QUADRATIC_BEZIER = 0x00000007;
}

/// {@category Enum}
class XPS_SIGNATURE_STATUS {
  static const XPS_SIGNATURE_STATUS_INCOMPLIANT = 0x00000001;
  static const XPS_SIGNATURE_STATUS_INCOMPLETE = 0x00000002;
  static const XPS_SIGNATURE_STATUS_BROKEN = 0x00000003;
  static const XPS_SIGNATURE_STATUS_QUESTIONABLE = 0x00000004;
  static const XPS_SIGNATURE_STATUS_VALID = 0x00000005;
}

/// {@category Enum}
class XPS_SIGN_FLAGS {
  static const XPS_SIGN_FLAGS_NONE = 0x00000000;
  static const XPS_SIGN_FLAGS_IGNORE_MARKUP_COMPATIBILITY = 0x00000001;
}

/// {@category Enum}
class XPS_SIGN_POLICY {
  static const XPS_SIGN_POLICY_NONE = 0x00000000;
  static const XPS_SIGN_POLICY_CORE_PROPERTIES = 0x00000001;
  static const XPS_SIGN_POLICY_SIGNATURE_RELATIONSHIPS = 0x00000002;
  static const XPS_SIGN_POLICY_PRINT_TICKET = 0x00000004;
  static const XPS_SIGN_POLICY_DISCARD_CONTROL = 0x00000008;
  static const XPS_SIGN_POLICY_ALL = 0x0000000f;
}

/// {@category Enum}
class XPS_SPREAD_METHOD {
  static const XPS_SPREAD_METHOD_PAD = 0x00000001;
  static const XPS_SPREAD_METHOD_REFLECT = 0x00000002;
  static const XPS_SPREAD_METHOD_REPEAT = 0x00000003;
}

/// {@category Enum}
class XPS_STYLE_SIMULATION {
  static const XPS_STYLE_SIMULATION_NONE = 0x00000001;
  static const XPS_STYLE_SIMULATION_ITALIC = 0x00000002;
  static const XPS_STYLE_SIMULATION_BOLD = 0x00000003;
  static const XPS_STYLE_SIMULATION_BOLDITALIC = 0x00000004;
}

/// {@category Enum}
class XPS_THUMBNAIL_SIZE {
  static const XPS_THUMBNAIL_SIZE_VERYSMALL = 0x00000001;
  static const XPS_THUMBNAIL_SIZE_SMALL = 0x00000002;
  static const XPS_THUMBNAIL_SIZE_MEDIUM = 0x00000003;
  static const XPS_THUMBNAIL_SIZE_LARGE = 0x00000004;
}

/// {@category Enum}
class XPS_TILE_MODE {
  static const XPS_TILE_MODE_NONE = 0x00000001;
  static const XPS_TILE_MODE_TILE = 0x00000002;
  static const XPS_TILE_MODE_FLIPX = 0x00000003;
  static const XPS_TILE_MODE_FLIPY = 0x00000004;
  static const XPS_TILE_MODE_FLIPXY = 0x00000005;
}

