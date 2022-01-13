/// {@category Enum}
class COMPARE_STRING_FLAGS {
  static const LINGUISTIC_IGNORECASE = 0x00000010;
  static const LINGUISTIC_IGNOREDIACRITIC = 0x00000020;
  static const NORM_IGNORECASE = 0x00000001;
  static const NORM_IGNOREKANATYPE = 0x00010000;
  static const NORM_IGNORENONSPACE = 0x00000002;
  static const NORM_IGNORESYMBOLS = 0x00000004;
  static const NORM_IGNOREWIDTH = 0x00020000;
  static const NORM_LINGUISTIC_CASING = 0x08000000;
  static const SORT_DIGITSASNUMBERS = 0x00000008;
  static const SORT_STRINGSORT = 0x00001000;
}

/// {@category Enum}
class CORRECTIVE_ACTION {
  static const CORRECTIVE_ACTION_NONE = 0x00000000;
  static const CORRECTIVE_ACTION_GET_SUGGESTIONS = 0x00000001;
  static const CORRECTIVE_ACTION_REPLACE = 0x00000002;
  static const CORRECTIVE_ACTION_DELETE = 0x00000003;
}

/// {@category Enum}
class ENUM_DATE_FORMATS_FLAGS {
  static const DATE_SHORTDATE = 0x00000001;
  static const DATE_LONGDATE = 0x00000002;
  static const DATE_YEARMONTH = 0x00000008;
  static const DATE_MONTHDAY = 0x00000080;
  static const DATE_AUTOLAYOUT = 0x00000040;
  static const DATE_LTRREADING = 0x00000010;
  static const DATE_RTLREADING = 0x00000020;
  static const DATE_USE_ALT_CALENDAR = 0x00000004;
}

/// {@category Enum}
class ENUM_SYSTEM_CODE_PAGES_FLAGS {
  static const CP_INSTALLED = 0x00000001;
  static const CP_SUPPORTED = 0x00000002;
}

/// {@category Enum}
class ENUM_SYSTEM_LANGUAGE_GROUPS_FLAGS {
  static const LGRPID_INSTALLED = 0x00000001;
  static const LGRPID_SUPPORTED = 0x00000002;
}

/// {@category Enum}
class FOLD_STRING_MAP_FLAGS {
  static const MAP_COMPOSITE = 0x00000040;
  static const MAP_EXPAND_LIGATURES = 0x00002000;
  static const MAP_FOLDCZONE = 0x00000010;
  static const MAP_FOLDDIGITS = 0x00000080;
  static const MAP_PRECOMPOSED = 0x00000020;
}

/// {@category Enum}
class IS_TEXT_UNICODE_RESULT {
  static const IS_TEXT_UNICODE_ASCII16 = 0x00000001;
  static const IS_TEXT_UNICODE_REVERSE_ASCII16 = 0x00000010;
  static const IS_TEXT_UNICODE_STATISTICS = 0x00000002;
  static const IS_TEXT_UNICODE_REVERSE_STATISTICS = 0x00000020;
  static const IS_TEXT_UNICODE_CONTROLS = 0x00000004;
  static const IS_TEXT_UNICODE_REVERSE_CONTROLS = 0x00000040;
  static const IS_TEXT_UNICODE_SIGNATURE = 0x00000008;
  static const IS_TEXT_UNICODE_REVERSE_SIGNATURE = 0x00000080;
  static const IS_TEXT_UNICODE_ILLEGAL_CHARS = 0x00000100;
  static const IS_TEXT_UNICODE_ODD_LENGTH = 0x00000200;
  static const IS_TEXT_UNICODE_NULL_BYTES = 0x00001000;
  static const IS_TEXT_UNICODE_UNICODE_MASK = 0x0000000f;
  static const IS_TEXT_UNICODE_REVERSE_MASK = 0x000000f0;
  static const IS_TEXT_UNICODE_NOT_UNICODE_MASK = 0x00000f00;
  static const IS_TEXT_UNICODE_NOT_ASCII_MASK = 0x0000f000;
}

/// {@category Enum}
class IS_VALID_LOCALE_FLAGS {
  static const LCID_INSTALLED = 0x00000001;
  static const LCID_SUPPORTED = 0x00000002;
}

/// {@category Enum}
class MIMECONTF {
  static const MIMECONTF_MAILNEWS = 0x00000001;
  static const MIMECONTF_BROWSER = 0x00000002;
  static const MIMECONTF_MINIMAL = 0x00000004;
  static const MIMECONTF_IMPORT = 0x00000008;
  static const MIMECONTF_SAVABLE_MAILNEWS = 0x00000100;
  static const MIMECONTF_SAVABLE_BROWSER = 0x00000200;
  static const MIMECONTF_EXPORT = 0x00000400;
  static const MIMECONTF_PRIVCONVERTER = 0x00010000;
  static const MIMECONTF_VALID = 0x00020000;
  static const MIMECONTF_VALID_NLS = 0x00040000;
  static const MIMECONTF_MIME_IE4 = 0x10000000;
  static const MIMECONTF_MIME_LATEST = 0x20000000;
  static const MIMECONTF_MIME_REGISTRY = 0x40000000;
}

/// {@category Enum}
class MLDETECTCP {
  static const MLDETECTCP_NONE = 0x00000000;
  static const MLDETECTCP_7BIT = 0x00000001;
  static const MLDETECTCP_8BIT = 0x00000002;
  static const MLDETECTCP_DBCS = 0x00000004;
  static const MLDETECTCP_HTML = 0x00000008;
  static const MLDETECTCP_NUMBER = 0x00000010;
}

/// {@category Enum}
class MLSTR_FLAGS {
  static const MLSTR_READ = 0x00000001;
  static const MLSTR_WRITE = 0x00000002;
}

/// {@category Enum}
class MULTI_BYTE_TO_WIDE_CHAR_FLAGS {
  static const MB_COMPOSITE = 0x00000002;
  static const MB_ERR_INVALID_CHARS = 0x00000008;
  static const MB_PRECOMPOSED = 0x00000001;
  static const MB_USEGLYPHCHARS = 0x00000004;
}

/// {@category Enum}
class NORM_FORM {
  static const NormalizationOther = 0x00000000;
  static const NormalizationC = 0x00000001;
  static const NormalizationD = 0x00000002;
  static const NormalizationKC = 0x00000005;
  static const NormalizationKD = 0x00000006;
}

/// {@category Enum}
class SCRIPTCONTF {
  static const sidDefault = 0x00000000;
  static const sidMerge = 0x00000001;
  static const sidAsciiSym = 0x00000002;
  static const sidAsciiLatin = 0x00000003;
  static const sidLatin = 0x00000004;
  static const sidGreek = 0x00000005;
  static const sidCyrillic = 0x00000006;
  static const sidArmenian = 0x00000007;
  static const sidHebrew = 0x00000008;
  static const sidArabic = 0x00000009;
  static const sidDevanagari = 0x0000000a;
  static const sidBengali = 0x0000000b;
  static const sidGurmukhi = 0x0000000c;
  static const sidGujarati = 0x0000000d;
  static const sidOriya = 0x0000000e;
  static const sidTamil = 0x0000000f;
  static const sidTelugu = 0x00000010;
  static const sidKannada = 0x00000011;
  static const sidMalayalam = 0x00000012;
  static const sidThai = 0x00000013;
  static const sidLao = 0x00000014;
  static const sidTibetan = 0x00000015;
  static const sidGeorgian = 0x00000016;
  static const sidHangul = 0x00000017;
  static const sidKana = 0x00000018;
  static const sidBopomofo = 0x00000019;
  static const sidHan = 0x0000001a;
  static const sidEthiopic = 0x0000001b;
  static const sidCanSyllabic = 0x0000001c;
  static const sidCherokee = 0x0000001d;
  static const sidYi = 0x0000001e;
  static const sidBraille = 0x0000001f;
  static const sidRunic = 0x00000020;
  static const sidOgham = 0x00000021;
  static const sidSinhala = 0x00000022;
  static const sidSyriac = 0x00000023;
  static const sidBurmese = 0x00000024;
  static const sidKhmer = 0x00000025;
  static const sidThaana = 0x00000026;
  static const sidMongolian = 0x00000027;
  static const sidUserDefined = 0x00000028;
  static const sidLim = 0x00000029;
  static const sidFEFirst = 0x00000017;
  static const sidFELast = 0x0000001a;
}

/// {@category Enum}
class SCRIPTFONTCONTF {
  static const SCRIPTCONTF_FIXED_FONT = 0x00000001;
  static const SCRIPTCONTF_PROPORTIONAL_FONT = 0x00000002;
  static const SCRIPTCONTF_SCRIPT_USER = 0x00010000;
  static const SCRIPTCONTF_SCRIPT_HIDE = 0x00020000;
  static const SCRIPTCONTF_SCRIPT_SYSTEM = 0x00040000;
}

/// {@category Enum}
class SCRIPT_IS_COMPLEX_FLAGS {
  static const SIC_ASCIIDIGIT = 0x00000002;
  static const SIC_COMPLEX = 0x00000001;
  static const SIC_NEUTRAL = 0x00000004;
}

/// {@category Enum}
class SCRIPT_JUSTIFY {
  static const SCRIPT_JUSTIFY_NONE = 0x00000000;
  static const SCRIPT_JUSTIFY_ARABIC_BLANK = 0x00000001;
  static const SCRIPT_JUSTIFY_CHARACTER = 0x00000002;
  static const SCRIPT_JUSTIFY_RESERVED1 = 0x00000003;
  static const SCRIPT_JUSTIFY_BLANK = 0x00000004;
  static const SCRIPT_JUSTIFY_RESERVED2 = 0x00000005;
  static const SCRIPT_JUSTIFY_RESERVED3 = 0x00000006;
  static const SCRIPT_JUSTIFY_ARABIC_NORMAL = 0x00000007;
  static const SCRIPT_JUSTIFY_ARABIC_KASHIDA = 0x00000008;
  static const SCRIPT_JUSTIFY_ARABIC_ALEF = 0x00000009;
  static const SCRIPT_JUSTIFY_ARABIC_HA = 0x0000000a;
  static const SCRIPT_JUSTIFY_ARABIC_RA = 0x0000000b;
  static const SCRIPT_JUSTIFY_ARABIC_BA = 0x0000000c;
  static const SCRIPT_JUSTIFY_ARABIC_BARA = 0x0000000d;
  static const SCRIPT_JUSTIFY_ARABIC_SEEN = 0x0000000e;
  static const SCRIPT_JUSTIFY_ARABIC_SEEN_M = 0x0000000f;
}

/// {@category Enum}
class SYSGEOCLASS {
  static const GEOCLASS_NATION = 0x00000010;
  static const GEOCLASS_REGION = 0x0000000e;
  static const GEOCLASS_ALL = 0x00000000;
}

/// {@category Enum}
class SYSGEOTYPE {
  static const GEO_NATION = 0x00000001;
  static const GEO_LATITUDE = 0x00000002;
  static const GEO_LONGITUDE = 0x00000003;
  static const GEO_ISO2 = 0x00000004;
  static const GEO_ISO3 = 0x00000005;
  static const GEO_RFC1766 = 0x00000006;
  static const GEO_LCID = 0x00000007;
  static const GEO_FRIENDLYNAME = 0x00000008;
  static const GEO_OFFICIALNAME = 0x00000009;
  static const GEO_TIMEZONES = 0x0000000a;
  static const GEO_OFFICIALLANGUAGES = 0x0000000b;
  static const GEO_ISO_UN_NUMBER = 0x0000000c;
  static const GEO_PARENT = 0x0000000d;
  static const GEO_DIALINGCODE = 0x0000000e;
  static const GEO_CURRENCYCODE = 0x0000000f;
  static const GEO_CURRENCYSYMBOL = 0x00000010;
  static const GEO_NAME = 0x00000011;
  static const GEO_ID = 0x00000012;
}

/// {@category Enum}
class SYSNLS_FUNCTION {
  static const COMPARE_STRING = 0x00000001;
}

/// {@category Enum}
class TIME_FORMAT_FLAGS {
  static const TIME_NOMINUTESORSECONDS = 0x00000001;
  static const TIME_NOSECONDS = 0x00000002;
  static const TIME_NOTIMEMARKER = 0x00000004;
  static const TIME_FORCE24HOURFORMAT = 0x00000008;
}

/// {@category Enum}
class TRANSLATE_CHARSET_INFO_FLAGS {
  static const TCI_SRCCHARSET = 0x00000001;
  static const TCI_SRCCODEPAGE = 0x00000002;
  static const TCI_SRCFONTSIG = 0x00000003;
  static const TCI_SRCLOCALE = 0x00001000;
}

/// {@category Enum}
class UAcceptResult {
  static const ULOC_ACCEPT_FAILED = 0x00000000;
  static const ULOC_ACCEPT_VALID = 0x00000001;
  static const ULOC_ACCEPT_FALLBACK = 0x00000002;
}

/// {@category Enum}
class UAlphabeticIndexLabelType {
  static const U_ALPHAINDEX_NORMAL = 0x00000000;
  static const U_ALPHAINDEX_UNDERFLOW = 0x00000001;
  static const U_ALPHAINDEX_INFLOW = 0x00000002;
  static const U_ALPHAINDEX_OVERFLOW = 0x00000003;
}

/// {@category Enum}
class UBiDiDirection {
  static const UBIDI_LTR = 0x00000000;
  static const UBIDI_RTL = 0x00000001;
  static const UBIDI_MIXED = 0x00000002;
  static const UBIDI_NEUTRAL = 0x00000003;
}

/// {@category Enum}
class UBiDiMirroring {
  static const UBIDI_MIRRORING_OFF = 0x00000000;
  static const UBIDI_MIRRORING_ON = 0x00000001;
}

/// {@category Enum}
class UBiDiOrder {
  static const UBIDI_LOGICAL = 0x00000000;
  static const UBIDI_VISUAL = 0x00000001;
}

/// {@category Enum}
class UBiDiReorderingMode {
  static const UBIDI_REORDER_DEFAULT = 0x00000000;
  static const UBIDI_REORDER_NUMBERS_SPECIAL = 0x00000001;
  static const UBIDI_REORDER_GROUP_NUMBERS_WITH_R = 0x00000002;
  static const UBIDI_REORDER_RUNS_ONLY = 0x00000003;
  static const UBIDI_REORDER_INVERSE_NUMBERS_AS_L = 0x00000004;
  static const UBIDI_REORDER_INVERSE_LIKE_DIRECT = 0x00000005;
  static const UBIDI_REORDER_INVERSE_FOR_NUMBERS_SPECIAL = 0x00000006;
}

/// {@category Enum}
class UBiDiReorderingOption {
  static const UBIDI_OPTION_DEFAULT = 0x00000000;
  static const UBIDI_OPTION_INSERT_MARKS = 0x00000001;
  static const UBIDI_OPTION_REMOVE_CONTROLS = 0x00000002;
  static const UBIDI_OPTION_STREAMING = 0x00000004;
}

/// {@category Enum}
class UBidiPairedBracketType {
  static const U_BPT_NONE = 0x00000000;
  static const U_BPT_OPEN = 0x00000001;
  static const U_BPT_CLOSE = 0x00000002;
}

/// {@category Enum}
class UBlockCode {
  static const UBLOCK_NO_BLOCK = 0x00000000;
  static const UBLOCK_BASIC_LATIN = 0x00000001;
  static const UBLOCK_LATIN_1_SUPPLEMENT = 0x00000002;
  static const UBLOCK_LATIN_EXTENDED_A = 0x00000003;
  static const UBLOCK_LATIN_EXTENDED_B = 0x00000004;
  static const UBLOCK_IPA_EXTENSIONS = 0x00000005;
  static const UBLOCK_SPACING_MODIFIER_LETTERS = 0x00000006;
  static const UBLOCK_COMBINING_DIACRITICAL_MARKS = 0x00000007;
  static const UBLOCK_GREEK = 0x00000008;
  static const UBLOCK_CYRILLIC = 0x00000009;
  static const UBLOCK_ARMENIAN = 0x0000000a;
  static const UBLOCK_HEBREW = 0x0000000b;
  static const UBLOCK_ARABIC = 0x0000000c;
  static const UBLOCK_SYRIAC = 0x0000000d;
  static const UBLOCK_THAANA = 0x0000000e;
  static const UBLOCK_DEVANAGARI = 0x0000000f;
  static const UBLOCK_BENGALI = 0x00000010;
  static const UBLOCK_GURMUKHI = 0x00000011;
  static const UBLOCK_GUJARATI = 0x00000012;
  static const UBLOCK_ORIYA = 0x00000013;
  static const UBLOCK_TAMIL = 0x00000014;
  static const UBLOCK_TELUGU = 0x00000015;
  static const UBLOCK_KANNADA = 0x00000016;
  static const UBLOCK_MALAYALAM = 0x00000017;
  static const UBLOCK_SINHALA = 0x00000018;
  static const UBLOCK_THAI = 0x00000019;
  static const UBLOCK_LAO = 0x0000001a;
  static const UBLOCK_TIBETAN = 0x0000001b;
  static const UBLOCK_MYANMAR = 0x0000001c;
  static const UBLOCK_GEORGIAN = 0x0000001d;
  static const UBLOCK_HANGUL_JAMO = 0x0000001e;
  static const UBLOCK_ETHIOPIC = 0x0000001f;
  static const UBLOCK_CHEROKEE = 0x00000020;
  static const UBLOCK_UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS = 0x00000021;
  static const UBLOCK_OGHAM = 0x00000022;
  static const UBLOCK_RUNIC = 0x00000023;
  static const UBLOCK_KHMER = 0x00000024;
  static const UBLOCK_MONGOLIAN = 0x00000025;
  static const UBLOCK_LATIN_EXTENDED_ADDITIONAL = 0x00000026;
  static const UBLOCK_GREEK_EXTENDED = 0x00000027;
  static const UBLOCK_GENERAL_PUNCTUATION = 0x00000028;
  static const UBLOCK_SUPERSCRIPTS_AND_SUBSCRIPTS = 0x00000029;
  static const UBLOCK_CURRENCY_SYMBOLS = 0x0000002a;
  static const UBLOCK_COMBINING_MARKS_FOR_SYMBOLS = 0x0000002b;
  static const UBLOCK_LETTERLIKE_SYMBOLS = 0x0000002c;
  static const UBLOCK_NUMBER_FORMS = 0x0000002d;
  static const UBLOCK_ARROWS = 0x0000002e;
  static const UBLOCK_MATHEMATICAL_OPERATORS = 0x0000002f;
  static const UBLOCK_MISCELLANEOUS_TECHNICAL = 0x00000030;
  static const UBLOCK_CONTROL_PICTURES = 0x00000031;
  static const UBLOCK_OPTICAL_CHARACTER_RECOGNITION = 0x00000032;
  static const UBLOCK_ENCLOSED_ALPHANUMERICS = 0x00000033;
  static const UBLOCK_BOX_DRAWING = 0x00000034;
  static const UBLOCK_BLOCK_ELEMENTS = 0x00000035;
  static const UBLOCK_GEOMETRIC_SHAPES = 0x00000036;
  static const UBLOCK_MISCELLANEOUS_SYMBOLS = 0x00000037;
  static const UBLOCK_DINGBATS = 0x00000038;
  static const UBLOCK_BRAILLE_PATTERNS = 0x00000039;
  static const UBLOCK_CJK_RADICALS_SUPPLEMENT = 0x0000003a;
  static const UBLOCK_KANGXI_RADICALS = 0x0000003b;
  static const UBLOCK_IDEOGRAPHIC_DESCRIPTION_CHARACTERS = 0x0000003c;
  static const UBLOCK_CJK_SYMBOLS_AND_PUNCTUATION = 0x0000003d;
  static const UBLOCK_HIRAGANA = 0x0000003e;
  static const UBLOCK_KATAKANA = 0x0000003f;
  static const UBLOCK_BOPOMOFO = 0x00000040;
  static const UBLOCK_HANGUL_COMPATIBILITY_JAMO = 0x00000041;
  static const UBLOCK_KANBUN = 0x00000042;
  static const UBLOCK_BOPOMOFO_EXTENDED = 0x00000043;
  static const UBLOCK_ENCLOSED_CJK_LETTERS_AND_MONTHS = 0x00000044;
  static const UBLOCK_CJK_COMPATIBILITY = 0x00000045;
  static const UBLOCK_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A = 0x00000046;
  static const UBLOCK_CJK_UNIFIED_IDEOGRAPHS = 0x00000047;
  static const UBLOCK_YI_SYLLABLES = 0x00000048;
  static const UBLOCK_YI_RADICALS = 0x00000049;
  static const UBLOCK_HANGUL_SYLLABLES = 0x0000004a;
  static const UBLOCK_HIGH_SURROGATES = 0x0000004b;
  static const UBLOCK_HIGH_PRIVATE_USE_SURROGATES = 0x0000004c;
  static const UBLOCK_LOW_SURROGATES = 0x0000004d;
  static const UBLOCK_PRIVATE_USE_AREA = 0x0000004e;
  static const UBLOCK_PRIVATE_USE = 0x0000004e;
  static const UBLOCK_CJK_COMPATIBILITY_IDEOGRAPHS = 0x0000004f;
  static const UBLOCK_ALPHABETIC_PRESENTATION_FORMS = 0x00000050;
  static const UBLOCK_ARABIC_PRESENTATION_FORMS_A = 0x00000051;
  static const UBLOCK_COMBINING_HALF_MARKS = 0x00000052;
  static const UBLOCK_CJK_COMPATIBILITY_FORMS = 0x00000053;
  static const UBLOCK_SMALL_FORM_VARIANTS = 0x00000054;
  static const UBLOCK_ARABIC_PRESENTATION_FORMS_B = 0x00000055;
  static const UBLOCK_SPECIALS = 0x00000056;
  static const UBLOCK_HALFWIDTH_AND_FULLWIDTH_FORMS = 0x00000057;
  static const UBLOCK_OLD_ITALIC = 0x00000058;
  static const UBLOCK_GOTHIC = 0x00000059;
  static const UBLOCK_DESERET = 0x0000005a;
  static const UBLOCK_BYZANTINE_MUSICAL_SYMBOLS = 0x0000005b;
  static const UBLOCK_MUSICAL_SYMBOLS = 0x0000005c;
  static const UBLOCK_MATHEMATICAL_ALPHANUMERIC_SYMBOLS = 0x0000005d;
  static const UBLOCK_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B = 0x0000005e;
  static const UBLOCK_CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT = 0x0000005f;
  static const UBLOCK_TAGS = 0x00000060;
  static const UBLOCK_CYRILLIC_SUPPLEMENT = 0x00000061;
  static const UBLOCK_CYRILLIC_SUPPLEMENTARY = 0x00000061;
  static const UBLOCK_TAGALOG = 0x00000062;
  static const UBLOCK_HANUNOO = 0x00000063;
  static const UBLOCK_BUHID = 0x00000064;
  static const UBLOCK_TAGBANWA = 0x00000065;
  static const UBLOCK_MISCELLANEOUS_MATHEMATICAL_SYMBOLS_A = 0x00000066;
  static const UBLOCK_SUPPLEMENTAL_ARROWS_A = 0x00000067;
  static const UBLOCK_SUPPLEMENTAL_ARROWS_B = 0x00000068;
  static const UBLOCK_MISCELLANEOUS_MATHEMATICAL_SYMBOLS_B = 0x00000069;
  static const UBLOCK_SUPPLEMENTAL_MATHEMATICAL_OPERATORS = 0x0000006a;
  static const UBLOCK_KATAKANA_PHONETIC_EXTENSIONS = 0x0000006b;
  static const UBLOCK_VARIATION_SELECTORS = 0x0000006c;
  static const UBLOCK_SUPPLEMENTARY_PRIVATE_USE_AREA_A = 0x0000006d;
  static const UBLOCK_SUPPLEMENTARY_PRIVATE_USE_AREA_B = 0x0000006e;
  static const UBLOCK_LIMBU = 0x0000006f;
  static const UBLOCK_TAI_LE = 0x00000070;
  static const UBLOCK_KHMER_SYMBOLS = 0x00000071;
  static const UBLOCK_PHONETIC_EXTENSIONS = 0x00000072;
  static const UBLOCK_MISCELLANEOUS_SYMBOLS_AND_ARROWS = 0x00000073;
  static const UBLOCK_YIJING_HEXAGRAM_SYMBOLS = 0x00000074;
  static const UBLOCK_LINEAR_B_SYLLABARY = 0x00000075;
  static const UBLOCK_LINEAR_B_IDEOGRAMS = 0x00000076;
  static const UBLOCK_AEGEAN_NUMBERS = 0x00000077;
  static const UBLOCK_UGARITIC = 0x00000078;
  static const UBLOCK_SHAVIAN = 0x00000079;
  static const UBLOCK_OSMANYA = 0x0000007a;
  static const UBLOCK_CYPRIOT_SYLLABARY = 0x0000007b;
  static const UBLOCK_TAI_XUAN_JING_SYMBOLS = 0x0000007c;
  static const UBLOCK_VARIATION_SELECTORS_SUPPLEMENT = 0x0000007d;
  static const UBLOCK_ANCIENT_GREEK_MUSICAL_NOTATION = 0x0000007e;
  static const UBLOCK_ANCIENT_GREEK_NUMBERS = 0x0000007f;
  static const UBLOCK_ARABIC_SUPPLEMENT = 0x00000080;
  static const UBLOCK_BUGINESE = 0x00000081;
  static const UBLOCK_CJK_STROKES = 0x00000082;
  static const UBLOCK_COMBINING_DIACRITICAL_MARKS_SUPPLEMENT = 0x00000083;
  static const UBLOCK_COPTIC = 0x00000084;
  static const UBLOCK_ETHIOPIC_EXTENDED = 0x00000085;
  static const UBLOCK_ETHIOPIC_SUPPLEMENT = 0x00000086;
  static const UBLOCK_GEORGIAN_SUPPLEMENT = 0x00000087;
  static const UBLOCK_GLAGOLITIC = 0x00000088;
  static const UBLOCK_KHAROSHTHI = 0x00000089;
  static const UBLOCK_MODIFIER_TONE_LETTERS = 0x0000008a;
  static const UBLOCK_NEW_TAI_LUE = 0x0000008b;
  static const UBLOCK_OLD_PERSIAN = 0x0000008c;
  static const UBLOCK_PHONETIC_EXTENSIONS_SUPPLEMENT = 0x0000008d;
  static const UBLOCK_SUPPLEMENTAL_PUNCTUATION = 0x0000008e;
  static const UBLOCK_SYLOTI_NAGRI = 0x0000008f;
  static const UBLOCK_TIFINAGH = 0x00000090;
  static const UBLOCK_VERTICAL_FORMS = 0x00000091;
  static const UBLOCK_NKO = 0x00000092;
  static const UBLOCK_BALINESE = 0x00000093;
  static const UBLOCK_LATIN_EXTENDED_C = 0x00000094;
  static const UBLOCK_LATIN_EXTENDED_D = 0x00000095;
  static const UBLOCK_PHAGS_PA = 0x00000096;
  static const UBLOCK_PHOENICIAN = 0x00000097;
  static const UBLOCK_CUNEIFORM = 0x00000098;
  static const UBLOCK_CUNEIFORM_NUMBERS_AND_PUNCTUATION = 0x00000099;
  static const UBLOCK_COUNTING_ROD_NUMERALS = 0x0000009a;
  static const UBLOCK_SUNDANESE = 0x0000009b;
  static const UBLOCK_LEPCHA = 0x0000009c;
  static const UBLOCK_OL_CHIKI = 0x0000009d;
  static const UBLOCK_CYRILLIC_EXTENDED_A = 0x0000009e;
  static const UBLOCK_VAI = 0x0000009f;
  static const UBLOCK_CYRILLIC_EXTENDED_B = 0x000000a0;
  static const UBLOCK_SAURASHTRA = 0x000000a1;
  static const UBLOCK_KAYAH_LI = 0x000000a2;
  static const UBLOCK_REJANG = 0x000000a3;
  static const UBLOCK_CHAM = 0x000000a4;
  static const UBLOCK_ANCIENT_SYMBOLS = 0x000000a5;
  static const UBLOCK_PHAISTOS_DISC = 0x000000a6;
  static const UBLOCK_LYCIAN = 0x000000a7;
  static const UBLOCK_CARIAN = 0x000000a8;
  static const UBLOCK_LYDIAN = 0x000000a9;
  static const UBLOCK_MAHJONG_TILES = 0x000000aa;
  static const UBLOCK_DOMINO_TILES = 0x000000ab;
  static const UBLOCK_SAMARITAN = 0x000000ac;
  static const UBLOCK_UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS_EXTENDED =
      0x000000ad;
  static const UBLOCK_TAI_THAM = 0x000000ae;
  static const UBLOCK_VEDIC_EXTENSIONS = 0x000000af;
  static const UBLOCK_LISU = 0x000000b0;
  static const UBLOCK_BAMUM = 0x000000b1;
  static const UBLOCK_COMMON_INDIC_NUMBER_FORMS = 0x000000b2;
  static const UBLOCK_DEVANAGARI_EXTENDED = 0x000000b3;
  static const UBLOCK_HANGUL_JAMO_EXTENDED_A = 0x000000b4;
  static const UBLOCK_JAVANESE = 0x000000b5;
  static const UBLOCK_MYANMAR_EXTENDED_A = 0x000000b6;
  static const UBLOCK_TAI_VIET = 0x000000b7;
  static const UBLOCK_MEETEI_MAYEK = 0x000000b8;
  static const UBLOCK_HANGUL_JAMO_EXTENDED_B = 0x000000b9;
  static const UBLOCK_IMPERIAL_ARAMAIC = 0x000000ba;
  static const UBLOCK_OLD_SOUTH_ARABIAN = 0x000000bb;
  static const UBLOCK_AVESTAN = 0x000000bc;
  static const UBLOCK_INSCRIPTIONAL_PARTHIAN = 0x000000bd;
  static const UBLOCK_INSCRIPTIONAL_PAHLAVI = 0x000000be;
  static const UBLOCK_OLD_TURKIC = 0x000000bf;
  static const UBLOCK_RUMI_NUMERAL_SYMBOLS = 0x000000c0;
  static const UBLOCK_KAITHI = 0x000000c1;
  static const UBLOCK_EGYPTIAN_HIEROGLYPHS = 0x000000c2;
  static const UBLOCK_ENCLOSED_ALPHANUMERIC_SUPPLEMENT = 0x000000c3;
  static const UBLOCK_ENCLOSED_IDEOGRAPHIC_SUPPLEMENT = 0x000000c4;
  static const UBLOCK_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_C = 0x000000c5;
  static const UBLOCK_MANDAIC = 0x000000c6;
  static const UBLOCK_BATAK = 0x000000c7;
  static const UBLOCK_ETHIOPIC_EXTENDED_A = 0x000000c8;
  static const UBLOCK_BRAHMI = 0x000000c9;
  static const UBLOCK_BAMUM_SUPPLEMENT = 0x000000ca;
  static const UBLOCK_KANA_SUPPLEMENT = 0x000000cb;
  static const UBLOCK_PLAYING_CARDS = 0x000000cc;
  static const UBLOCK_MISCELLANEOUS_SYMBOLS_AND_PICTOGRAPHS = 0x000000cd;
  static const UBLOCK_EMOTICONS = 0x000000ce;
  static const UBLOCK_TRANSPORT_AND_MAP_SYMBOLS = 0x000000cf;
  static const UBLOCK_ALCHEMICAL_SYMBOLS = 0x000000d0;
  static const UBLOCK_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_D = 0x000000d1;
  static const UBLOCK_ARABIC_EXTENDED_A = 0x000000d2;
  static const UBLOCK_ARABIC_MATHEMATICAL_ALPHABETIC_SYMBOLS = 0x000000d3;
  static const UBLOCK_CHAKMA = 0x000000d4;
  static const UBLOCK_MEETEI_MAYEK_EXTENSIONS = 0x000000d5;
  static const UBLOCK_MEROITIC_CURSIVE = 0x000000d6;
  static const UBLOCK_MEROITIC_HIEROGLYPHS = 0x000000d7;
  static const UBLOCK_MIAO = 0x000000d8;
  static const UBLOCK_SHARADA = 0x000000d9;
  static const UBLOCK_SORA_SOMPENG = 0x000000da;
  static const UBLOCK_SUNDANESE_SUPPLEMENT = 0x000000db;
  static const UBLOCK_TAKRI = 0x000000dc;
  static const UBLOCK_BASSA_VAH = 0x000000dd;
  static const UBLOCK_CAUCASIAN_ALBANIAN = 0x000000de;
  static const UBLOCK_COPTIC_EPACT_NUMBERS = 0x000000df;
  static const UBLOCK_COMBINING_DIACRITICAL_MARKS_EXTENDED = 0x000000e0;
  static const UBLOCK_DUPLOYAN = 0x000000e1;
  static const UBLOCK_ELBASAN = 0x000000e2;
  static const UBLOCK_GEOMETRIC_SHAPES_EXTENDED = 0x000000e3;
  static const UBLOCK_GRANTHA = 0x000000e4;
  static const UBLOCK_KHOJKI = 0x000000e5;
  static const UBLOCK_KHUDAWADI = 0x000000e6;
  static const UBLOCK_LATIN_EXTENDED_E = 0x000000e7;
  static const UBLOCK_LINEAR_A = 0x000000e8;
  static const UBLOCK_MAHAJANI = 0x000000e9;
  static const UBLOCK_MANICHAEAN = 0x000000ea;
  static const UBLOCK_MENDE_KIKAKUI = 0x000000eb;
  static const UBLOCK_MODI = 0x000000ec;
  static const UBLOCK_MRO = 0x000000ed;
  static const UBLOCK_MYANMAR_EXTENDED_B = 0x000000ee;
  static const UBLOCK_NABATAEAN = 0x000000ef;
  static const UBLOCK_OLD_NORTH_ARABIAN = 0x000000f0;
  static const UBLOCK_OLD_PERMIC = 0x000000f1;
  static const UBLOCK_ORNAMENTAL_DINGBATS = 0x000000f2;
  static const UBLOCK_PAHAWH_HMONG = 0x000000f3;
  static const UBLOCK_PALMYRENE = 0x000000f4;
  static const UBLOCK_PAU_CIN_HAU = 0x000000f5;
  static const UBLOCK_PSALTER_PAHLAVI = 0x000000f6;
  static const UBLOCK_SHORTHAND_FORMAT_CONTROLS = 0x000000f7;
  static const UBLOCK_SIDDHAM = 0x000000f8;
  static const UBLOCK_SINHALA_ARCHAIC_NUMBERS = 0x000000f9;
  static const UBLOCK_SUPPLEMENTAL_ARROWS_C = 0x000000fa;
  static const UBLOCK_TIRHUTA = 0x000000fb;
  static const UBLOCK_WARANG_CITI = 0x000000fc;
  static const UBLOCK_AHOM = 0x000000fd;
  static const UBLOCK_ANATOLIAN_HIEROGLYPHS = 0x000000fe;
  static const UBLOCK_CHEROKEE_SUPPLEMENT = 0x000000ff;
  static const UBLOCK_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_E = 0x00000100;
  static const UBLOCK_EARLY_DYNASTIC_CUNEIFORM = 0x00000101;
  static const UBLOCK_HATRAN = 0x00000102;
  static const UBLOCK_MULTANI = 0x00000103;
  static const UBLOCK_OLD_HUNGARIAN = 0x00000104;
  static const UBLOCK_SUPPLEMENTAL_SYMBOLS_AND_PICTOGRAPHS = 0x00000105;
  static const UBLOCK_SUTTON_SIGNWRITING = 0x00000106;
  static const UBLOCK_ADLAM = 0x00000107;
  static const UBLOCK_BHAIKSUKI = 0x00000108;
  static const UBLOCK_CYRILLIC_EXTENDED_C = 0x00000109;
  static const UBLOCK_GLAGOLITIC_SUPPLEMENT = 0x0000010a;
  static const UBLOCK_IDEOGRAPHIC_SYMBOLS_AND_PUNCTUATION = 0x0000010b;
  static const UBLOCK_MARCHEN = 0x0000010c;
  static const UBLOCK_MONGOLIAN_SUPPLEMENT = 0x0000010d;
  static const UBLOCK_NEWA = 0x0000010e;
  static const UBLOCK_OSAGE = 0x0000010f;
  static const UBLOCK_TANGUT = 0x00000110;
  static const UBLOCK_TANGUT_COMPONENTS = 0x00000111;
  static const UBLOCK_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_F = 0x00000112;
  static const UBLOCK_KANA_EXTENDED_A = 0x00000113;
  static const UBLOCK_MASARAM_GONDI = 0x00000114;
  static const UBLOCK_NUSHU = 0x00000115;
  static const UBLOCK_SOYOMBO = 0x00000116;
  static const UBLOCK_SYRIAC_SUPPLEMENT = 0x00000117;
  static const UBLOCK_ZANABAZAR_SQUARE = 0x00000118;
  static const UBLOCK_CHESS_SYMBOLS = 0x00000119;
  static const UBLOCK_DOGRA = 0x0000011a;
  static const UBLOCK_GEORGIAN_EXTENDED = 0x0000011b;
  static const UBLOCK_GUNJALA_GONDI = 0x0000011c;
  static const UBLOCK_HANIFI_ROHINGYA = 0x0000011d;
  static const UBLOCK_INDIC_SIYAQ_NUMBERS = 0x0000011e;
  static const UBLOCK_MAKASAR = 0x0000011f;
  static const UBLOCK_MAYAN_NUMERALS = 0x00000120;
  static const UBLOCK_MEDEFAIDRIN = 0x00000121;
  static const UBLOCK_OLD_SOGDIAN = 0x00000122;
  static const UBLOCK_SOGDIAN = 0x00000123;
  static const UBLOCK_EGYPTIAN_HIEROGLYPH_FORMAT_CONTROLS = 0x00000124;
  static const UBLOCK_ELYMAIC = 0x00000125;
  static const UBLOCK_NANDINAGARI = 0x00000126;
  static const UBLOCK_NYIAKENG_PUACHUE_HMONG = 0x00000127;
  static const UBLOCK_OTTOMAN_SIYAQ_NUMBERS = 0x00000128;
  static const UBLOCK_SMALL_KANA_EXTENSION = 0x00000129;
  static const UBLOCK_SYMBOLS_AND_PICTOGRAPHS_EXTENDED_A = 0x0000012a;
  static const UBLOCK_TAMIL_SUPPLEMENT = 0x0000012b;
  static const UBLOCK_WANCHO = 0x0000012c;
  static const UBLOCK_CHORASMIAN = 0x0000012d;
  static const UBLOCK_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_G = 0x0000012e;
  static const UBLOCK_DIVES_AKURU = 0x0000012f;
  static const UBLOCK_KHITAN_SMALL_SCRIPT = 0x00000130;
  static const UBLOCK_LISU_SUPPLEMENT = 0x00000131;
  static const UBLOCK_SYMBOLS_FOR_LEGACY_COMPUTING = 0x00000132;
  static const UBLOCK_TANGUT_SUPPLEMENT = 0x00000133;
  static const UBLOCK_YEZIDI = 0x00000134;
  static const UBLOCK_INVALID_CODE = 0xffffffff;
}

/// {@category Enum}
class UBreakIteratorType {
  static const UBRK_CHARACTER = 0x00000000;
  static const UBRK_WORD = 0x00000001;
  static const UBRK_LINE = 0x00000002;
  static const UBRK_SENTENCE = 0x00000003;
}

/// {@category Enum}
class UCPMapRangeOption {
  static const UCPMAP_RANGE_NORMAL = 0x00000000;
  static const UCPMAP_RANGE_FIXED_LEAD_SURROGATES = 0x00000001;
  static const UCPMAP_RANGE_FIXED_ALL_SURROGATES = 0x00000002;
}

/// {@category Enum}
class UCPTrieType {
  static const UCPTRIE_TYPE_ANY = 0xffffffff;
  static const UCPTRIE_TYPE_FAST = 0x00000000;
  static const UCPTRIE_TYPE_SMALL = 0x00000001;
}

/// {@category Enum}
class UCPTrieValueWidth {
  static const UCPTRIE_VALUE_BITS_ANY = 0xffffffff;
  static const UCPTRIE_VALUE_BITS_16 = 0x00000000;
  static const UCPTRIE_VALUE_BITS_32 = 0x00000001;
  static const UCPTRIE_VALUE_BITS_8 = 0x00000002;
}

/// {@category Enum}
class UCalendarAMPMs {
  static const UCAL_AM = 0x00000000;
  static const UCAL_PM = 0x00000001;
}

/// {@category Enum}
class UCalendarAttribute {
  static const UCAL_LENIENT = 0x00000000;
  static const UCAL_FIRST_DAY_OF_WEEK = 0x00000001;
  static const UCAL_MINIMAL_DAYS_IN_FIRST_WEEK = 0x00000002;
  static const UCAL_REPEATED_WALL_TIME = 0x00000003;
  static const UCAL_SKIPPED_WALL_TIME = 0x00000004;
}

/// {@category Enum}
class UCalendarDateFields {
  static const UCAL_ERA = 0x00000000;
  static const UCAL_YEAR = 0x00000001;
  static const UCAL_MONTH = 0x00000002;
  static const UCAL_WEEK_OF_YEAR = 0x00000003;
  static const UCAL_WEEK_OF_MONTH = 0x00000004;
  static const UCAL_DATE = 0x00000005;
  static const UCAL_DAY_OF_YEAR = 0x00000006;
  static const UCAL_DAY_OF_WEEK = 0x00000007;
  static const UCAL_DAY_OF_WEEK_IN_MONTH = 0x00000008;
  static const UCAL_AM_PM = 0x00000009;
  static const UCAL_HOUR = 0x0000000a;
  static const UCAL_HOUR_OF_DAY = 0x0000000b;
  static const UCAL_MINUTE = 0x0000000c;
  static const UCAL_SECOND = 0x0000000d;
  static const UCAL_MILLISECOND = 0x0000000e;
  static const UCAL_ZONE_OFFSET = 0x0000000f;
  static const UCAL_DST_OFFSET = 0x00000010;
  static const UCAL_YEAR_WOY = 0x00000011;
  static const UCAL_DOW_LOCAL = 0x00000012;
  static const UCAL_EXTENDED_YEAR = 0x00000013;
  static const UCAL_JULIAN_DAY = 0x00000014;
  static const UCAL_MILLISECONDS_IN_DAY = 0x00000015;
  static const UCAL_IS_LEAP_MONTH = 0x00000016;
  static const UCAL_FIELD_COUNT = 0x00000017;
  static const UCAL_DAY_OF_MONTH = 0x00000005;
}

/// {@category Enum}
class UCalendarDaysOfWeek {
  static const UCAL_SUNDAY = 0x00000001;
  static const UCAL_MONDAY = 0x00000002;
  static const UCAL_TUESDAY = 0x00000003;
  static const UCAL_WEDNESDAY = 0x00000004;
  static const UCAL_THURSDAY = 0x00000005;
  static const UCAL_FRIDAY = 0x00000006;
  static const UCAL_SATURDAY = 0x00000007;
}

/// {@category Enum}
class UCalendarDisplayNameType {
  static const UCAL_STANDARD = 0x00000000;
  static const UCAL_SHORT_STANDARD = 0x00000001;
  static const UCAL_DST = 0x00000002;
  static const UCAL_SHORT_DST = 0x00000003;
}

/// {@category Enum}
class UCalendarLimitType {
  static const UCAL_MINIMUM = 0x00000000;
  static const UCAL_MAXIMUM = 0x00000001;
  static const UCAL_GREATEST_MINIMUM = 0x00000002;
  static const UCAL_LEAST_MAXIMUM = 0x00000003;
  static const UCAL_ACTUAL_MINIMUM = 0x00000004;
  static const UCAL_ACTUAL_MAXIMUM = 0x00000005;
}

/// {@category Enum}
class UCalendarMonths {
  static const UCAL_JANUARY = 0x00000000;
  static const UCAL_FEBRUARY = 0x00000001;
  static const UCAL_MARCH = 0x00000002;
  static const UCAL_APRIL = 0x00000003;
  static const UCAL_MAY = 0x00000004;
  static const UCAL_JUNE = 0x00000005;
  static const UCAL_JULY = 0x00000006;
  static const UCAL_AUGUST = 0x00000007;
  static const UCAL_SEPTEMBER = 0x00000008;
  static const UCAL_OCTOBER = 0x00000009;
  static const UCAL_NOVEMBER = 0x0000000a;
  static const UCAL_DECEMBER = 0x0000000b;
  static const UCAL_UNDECIMBER = 0x0000000c;
}

/// {@category Enum}
class UCalendarType {
  static const UCAL_TRADITIONAL = 0x00000000;
  static const UCAL_DEFAULT = 0x00000000;
  static const UCAL_GREGORIAN = 0x00000001;
}

/// {@category Enum}
class UCalendarWallTimeOption {
  static const UCAL_WALLTIME_LAST = 0x00000000;
  static const UCAL_WALLTIME_FIRST = 0x00000001;
  static const UCAL_WALLTIME_NEXT_VALID = 0x00000002;
}

/// {@category Enum}
class UCalendarWeekdayType {
  static const UCAL_WEEKDAY = 0x00000000;
  static const UCAL_WEEKEND = 0x00000001;
  static const UCAL_WEEKEND_ONSET = 0x00000002;
  static const UCAL_WEEKEND_CEASE = 0x00000003;
}

/// {@category Enum}
class UCharCategory {
  static const U_UNASSIGNED = 0x00000000;
  static const U_GENERAL_OTHER_TYPES = 0x00000000;
  static const U_UPPERCASE_LETTER = 0x00000001;
  static const U_LOWERCASE_LETTER = 0x00000002;
  static const U_TITLECASE_LETTER = 0x00000003;
  static const U_MODIFIER_LETTER = 0x00000004;
  static const U_OTHER_LETTER = 0x00000005;
  static const U_NON_SPACING_MARK = 0x00000006;
  static const U_ENCLOSING_MARK = 0x00000007;
  static const U_COMBINING_SPACING_MARK = 0x00000008;
  static const U_DECIMAL_DIGIT_NUMBER = 0x00000009;
  static const U_LETTER_NUMBER = 0x0000000a;
  static const U_OTHER_NUMBER = 0x0000000b;
  static const U_SPACE_SEPARATOR = 0x0000000c;
  static const U_LINE_SEPARATOR = 0x0000000d;
  static const U_PARAGRAPH_SEPARATOR = 0x0000000e;
  static const U_CONTROL_CHAR = 0x0000000f;
  static const U_FORMAT_CHAR = 0x00000010;
  static const U_PRIVATE_USE_CHAR = 0x00000011;
  static const U_SURROGATE = 0x00000012;
  static const U_DASH_PUNCTUATION = 0x00000013;
  static const U_START_PUNCTUATION = 0x00000014;
  static const U_END_PUNCTUATION = 0x00000015;
  static const U_CONNECTOR_PUNCTUATION = 0x00000016;
  static const U_OTHER_PUNCTUATION = 0x00000017;
  static const U_MATH_SYMBOL = 0x00000018;
  static const U_CURRENCY_SYMBOL = 0x00000019;
  static const U_MODIFIER_SYMBOL = 0x0000001a;
  static const U_OTHER_SYMBOL = 0x0000001b;
  static const U_INITIAL_PUNCTUATION = 0x0000001c;
  static const U_FINAL_PUNCTUATION = 0x0000001d;
  static const U_CHAR_CATEGORY_COUNT = 0x0000001e;
}

/// {@category Enum}
class UCharDirection {
  static const U_LEFT_TO_RIGHT = 0x00000000;
  static const U_RIGHT_TO_LEFT = 0x00000001;
  static const U_EUROPEAN_NUMBER = 0x00000002;
  static const U_EUROPEAN_NUMBER_SEPARATOR = 0x00000003;
  static const U_EUROPEAN_NUMBER_TERMINATOR = 0x00000004;
  static const U_ARABIC_NUMBER = 0x00000005;
  static const U_COMMON_NUMBER_SEPARATOR = 0x00000006;
  static const U_BLOCK_SEPARATOR = 0x00000007;
  static const U_SEGMENT_SEPARATOR = 0x00000008;
  static const U_WHITE_SPACE_NEUTRAL = 0x00000009;
  static const U_OTHER_NEUTRAL = 0x0000000a;
  static const U_LEFT_TO_RIGHT_EMBEDDING = 0x0000000b;
  static const U_LEFT_TO_RIGHT_OVERRIDE = 0x0000000c;
  static const U_RIGHT_TO_LEFT_ARABIC = 0x0000000d;
  static const U_RIGHT_TO_LEFT_EMBEDDING = 0x0000000e;
  static const U_RIGHT_TO_LEFT_OVERRIDE = 0x0000000f;
  static const U_POP_DIRECTIONAL_FORMAT = 0x00000010;
  static const U_DIR_NON_SPACING_MARK = 0x00000011;
  static const U_BOUNDARY_NEUTRAL = 0x00000012;
  static const U_FIRST_STRONG_ISOLATE = 0x00000013;
  static const U_LEFT_TO_RIGHT_ISOLATE = 0x00000014;
  static const U_RIGHT_TO_LEFT_ISOLATE = 0x00000015;
  static const U_POP_DIRECTIONAL_ISOLATE = 0x00000016;
}

/// {@category Enum}
class UCharIteratorOrigin {
  static const UITER_START = 0x00000000;
  static const UITER_CURRENT = 0x00000001;
  static const UITER_LIMIT = 0x00000002;
  static const UITER_ZERO = 0x00000003;
  static const UITER_LENGTH = 0x00000004;
}

/// {@category Enum}
class UCharNameChoice {
  static const U_UNICODE_CHAR_NAME = 0x00000000;
  static const U_EXTENDED_CHAR_NAME = 0x00000002;
  static const U_CHAR_NAME_ALIAS = 0x00000003;
}

/// {@category Enum}
class UColAttribute {
  static const UCOL_FRENCH_COLLATION = 0x00000000;
  static const UCOL_ALTERNATE_HANDLING = 0x00000001;
  static const UCOL_CASE_FIRST = 0x00000002;
  static const UCOL_CASE_LEVEL = 0x00000003;
  static const UCOL_NORMALIZATION_MODE = 0x00000004;
  static const UCOL_DECOMPOSITION_MODE = 0x00000004;
  static const UCOL_STRENGTH = 0x00000005;
  static const UCOL_NUMERIC_COLLATION = 0x00000007;
  static const UCOL_ATTRIBUTE_COUNT = 0x00000008;
}

/// {@category Enum}
class UColAttributeValue {
  static const UCOL_DEFAULT = 0xffffffff;
  static const UCOL_PRIMARY = 0x00000000;
  static const UCOL_SECONDARY = 0x00000001;
  static const UCOL_TERTIARY = 0x00000002;
  static const UCOL_DEFAULT_STRENGTH = 0x00000002;
  static const UCOL_CE_STRENGTH_LIMIT = 0x00000003;
  static const UCOL_QUATERNARY = 0x00000003;
  static const UCOL_IDENTICAL = 0x0000000f;
  static const UCOL_STRENGTH_LIMIT = 0x00000010;
  static const UCOL_OFF = 0x00000010;
  static const UCOL_ON = 0x00000011;
  static const UCOL_SHIFTED = 0x00000014;
  static const UCOL_NON_IGNORABLE = 0x00000015;
  static const UCOL_LOWER_FIRST = 0x00000018;
  static const UCOL_UPPER_FIRST = 0x00000019;
}

/// {@category Enum}
class UColBoundMode {
  static const UCOL_BOUND_LOWER = 0x00000000;
  static const UCOL_BOUND_UPPER = 0x00000001;
  static const UCOL_BOUND_UPPER_LONG = 0x00000002;
}

/// {@category Enum}
class UColReorderCode {
  static const UCOL_REORDER_CODE_DEFAULT = 0xffffffff;
  static const UCOL_REORDER_CODE_NONE = 0x00000067;
  static const UCOL_REORDER_CODE_OTHERS = 0x00000067;
  static const UCOL_REORDER_CODE_SPACE = 0x00001000;
  static const UCOL_REORDER_CODE_FIRST = 0x00001000;
  static const UCOL_REORDER_CODE_PUNCTUATION = 0x00001001;
  static const UCOL_REORDER_CODE_SYMBOL = 0x00001002;
  static const UCOL_REORDER_CODE_CURRENCY = 0x00001003;
  static const UCOL_REORDER_CODE_DIGIT = 0x00001004;
}

/// {@category Enum}
class UColRuleOption {
  static const UCOL_TAILORING_ONLY = 0x00000000;
  static const UCOL_FULL_RULES = 0x00000001;
}

/// {@category Enum}
class UCollationResult {
  static const UCOL_EQUAL = 0x00000000;
  static const UCOL_GREATER = 0x00000001;
  static const UCOL_LESS = 0xffffffff;
}

/// {@category Enum}
class UConverterCallbackReason {
  static const UCNV_UNASSIGNED = 0x00000000;
  static const UCNV_ILLEGAL = 0x00000001;
  static const UCNV_IRREGULAR = 0x00000002;
  static const UCNV_RESET = 0x00000003;
  static const UCNV_CLOSE = 0x00000004;
  static const UCNV_CLONE = 0x00000005;
}

/// {@category Enum}
class UConverterPlatform {
  static const UCNV_UNKNOWN = 0xffffffff;
  static const UCNV_IBM = 0x00000000;
}

/// {@category Enum}
class UConverterType {
  static const UCNV_UNSUPPORTED_CONVERTER = 0xffffffff;
  static const UCNV_SBCS = 0x00000000;
  static const UCNV_DBCS = 0x00000001;
  static const UCNV_MBCS = 0x00000002;
  static const UCNV_LATIN_1 = 0x00000003;
  static const UCNV_UTF8 = 0x00000004;
  static const UCNV_UTF16_BigEndian = 0x00000005;
  static const UCNV_UTF16_LittleEndian = 0x00000006;
  static const UCNV_UTF32_BigEndian = 0x00000007;
  static const UCNV_UTF32_LittleEndian = 0x00000008;
  static const UCNV_EBCDIC_STATEFUL = 0x00000009;
  static const UCNV_ISO_2022 = 0x0000000a;
  static const UCNV_LMBCS_1 = 0x0000000b;
  static const UCNV_LMBCS_2 = 0x0000000c;
  static const UCNV_LMBCS_3 = 0x0000000d;
  static const UCNV_LMBCS_4 = 0x0000000e;
  static const UCNV_LMBCS_5 = 0x0000000f;
  static const UCNV_LMBCS_6 = 0x00000010;
  static const UCNV_LMBCS_8 = 0x00000011;
  static const UCNV_LMBCS_11 = 0x00000012;
  static const UCNV_LMBCS_16 = 0x00000013;
  static const UCNV_LMBCS_17 = 0x00000014;
  static const UCNV_LMBCS_18 = 0x00000015;
  static const UCNV_LMBCS_19 = 0x00000016;
  static const UCNV_LMBCS_LAST = 0x00000016;
  static const UCNV_HZ = 0x00000017;
  static const UCNV_SCSU = 0x00000018;
  static const UCNV_ISCII = 0x00000019;
  static const UCNV_US_ASCII = 0x0000001a;
  static const UCNV_UTF7 = 0x0000001b;
  static const UCNV_BOCU1 = 0x0000001c;
  static const UCNV_UTF16 = 0x0000001d;
  static const UCNV_UTF32 = 0x0000001e;
  static const UCNV_CESU8 = 0x0000001f;
  static const UCNV_IMAP_MAILBOX = 0x00000020;
  static const UCNV_COMPOUND_TEXT = 0x00000021;
  static const UCNV_NUMBER_OF_SUPPORTED_CONVERTER_TYPES = 0x00000022;
}

/// {@category Enum}
class UConverterUnicodeSet {
  static const UCNV_ROUNDTRIP_SET = 0x00000000;
  static const UCNV_ROUNDTRIP_AND_FALLBACK_SET = 0x00000001;
}

/// {@category Enum}
class UCurrCurrencyType {
  static const UCURR_ALL = 0x7fffffff;
  static const UCURR_COMMON = 0x00000001;
  static const UCURR_UNCOMMON = 0x00000002;
  static const UCURR_DEPRECATED = 0x00000004;
  static const UCURR_NON_DEPRECATED = 0x00000008;
}

/// {@category Enum}
class UCurrNameStyle {
  static const UCURR_SYMBOL_NAME = 0x00000000;
  static const UCURR_LONG_NAME = 0x00000001;
  static const UCURR_NARROW_SYMBOL_NAME = 0x00000002;
}

/// {@category Enum}
class UCurrencySpacing {
  static const UNUM_CURRENCY_MATCH = 0x00000000;
  static const UNUM_CURRENCY_SURROUNDING_MATCH = 0x00000001;
  static const UNUM_CURRENCY_INSERT = 0x00000002;
  static const UNUM_CURRENCY_SPACING_COUNT = 0x00000003;
}

/// {@category Enum}
class UCurrencyUsage {
  static const UCURR_USAGE_STANDARD = 0x00000000;
  static const UCURR_USAGE_CASH = 0x00000001;
}

/// {@category Enum}
class UDateAbsoluteUnit {
  static const UDAT_ABSOLUTE_SUNDAY = 0x00000000;
  static const UDAT_ABSOLUTE_MONDAY = 0x00000001;
  static const UDAT_ABSOLUTE_TUESDAY = 0x00000002;
  static const UDAT_ABSOLUTE_WEDNESDAY = 0x00000003;
  static const UDAT_ABSOLUTE_THURSDAY = 0x00000004;
  static const UDAT_ABSOLUTE_FRIDAY = 0x00000005;
  static const UDAT_ABSOLUTE_SATURDAY = 0x00000006;
  static const UDAT_ABSOLUTE_DAY = 0x00000007;
  static const UDAT_ABSOLUTE_WEEK = 0x00000008;
  static const UDAT_ABSOLUTE_MONTH = 0x00000009;
  static const UDAT_ABSOLUTE_YEAR = 0x0000000a;
  static const UDAT_ABSOLUTE_NOW = 0x0000000b;
  static const UDAT_ABSOLUTE_UNIT_COUNT = 0x0000000c;
}

/// {@category Enum}
class UDateDirection {
  static const UDAT_DIRECTION_LAST_2 = 0x00000000;
  static const UDAT_DIRECTION_LAST = 0x00000001;
  static const UDAT_DIRECTION_THIS = 0x00000002;
  static const UDAT_DIRECTION_NEXT = 0x00000003;
  static const UDAT_DIRECTION_NEXT_2 = 0x00000004;
  static const UDAT_DIRECTION_PLAIN = 0x00000005;
  static const UDAT_DIRECTION_COUNT = 0x00000006;
}

/// {@category Enum}
class UDateFormatBooleanAttribute {
  static const UDAT_PARSE_ALLOW_WHITESPACE = 0x00000000;
  static const UDAT_PARSE_ALLOW_NUMERIC = 0x00000001;
  static const UDAT_PARSE_PARTIAL_LITERAL_MATCH = 0x00000002;
  static const UDAT_PARSE_MULTIPLE_PATTERNS_FOR_MATCH = 0x00000003;
  static const UDAT_BOOLEAN_ATTRIBUTE_COUNT = 0x00000004;
}

/// {@category Enum}
class UDateFormatField {
  static const UDAT_ERA_FIELD = 0x00000000;
  static const UDAT_YEAR_FIELD = 0x00000001;
  static const UDAT_MONTH_FIELD = 0x00000002;
  static const UDAT_DATE_FIELD = 0x00000003;
  static const UDAT_HOUR_OF_DAY1_FIELD = 0x00000004;
  static const UDAT_HOUR_OF_DAY0_FIELD = 0x00000005;
  static const UDAT_MINUTE_FIELD = 0x00000006;
  static const UDAT_SECOND_FIELD = 0x00000007;
  static const UDAT_FRACTIONAL_SECOND_FIELD = 0x00000008;
  static const UDAT_DAY_OF_WEEK_FIELD = 0x00000009;
  static const UDAT_DAY_OF_YEAR_FIELD = 0x0000000a;
  static const UDAT_DAY_OF_WEEK_IN_MONTH_FIELD = 0x0000000b;
  static const UDAT_WEEK_OF_YEAR_FIELD = 0x0000000c;
  static const UDAT_WEEK_OF_MONTH_FIELD = 0x0000000d;
  static const UDAT_AM_PM_FIELD = 0x0000000e;
  static const UDAT_HOUR1_FIELD = 0x0000000f;
  static const UDAT_HOUR0_FIELD = 0x00000010;
  static const UDAT_TIMEZONE_FIELD = 0x00000011;
  static const UDAT_YEAR_WOY_FIELD = 0x00000012;
  static const UDAT_DOW_LOCAL_FIELD = 0x00000013;
  static const UDAT_EXTENDED_YEAR_FIELD = 0x00000014;
  static const UDAT_JULIAN_DAY_FIELD = 0x00000015;
  static const UDAT_MILLISECONDS_IN_DAY_FIELD = 0x00000016;
  static const UDAT_TIMEZONE_RFC_FIELD = 0x00000017;
  static const UDAT_TIMEZONE_GENERIC_FIELD = 0x00000018;
  static const UDAT_STANDALONE_DAY_FIELD = 0x00000019;
  static const UDAT_STANDALONE_MONTH_FIELD = 0x0000001a;
  static const UDAT_QUARTER_FIELD = 0x0000001b;
  static const UDAT_STANDALONE_QUARTER_FIELD = 0x0000001c;
  static const UDAT_TIMEZONE_SPECIAL_FIELD = 0x0000001d;
  static const UDAT_YEAR_NAME_FIELD = 0x0000001e;
  static const UDAT_TIMEZONE_LOCALIZED_GMT_OFFSET_FIELD = 0x0000001f;
  static const UDAT_TIMEZONE_ISO_FIELD = 0x00000020;
  static const UDAT_TIMEZONE_ISO_LOCAL_FIELD = 0x00000021;
  static const UDAT_AM_PM_MIDNIGHT_NOON_FIELD = 0x00000023;
  static const UDAT_FLEXIBLE_DAY_PERIOD_FIELD = 0x00000024;
}

/// {@category Enum}
class UDateFormatStyle {
  static const UDAT_FULL = 0x00000000;
  static const UDAT_LONG = 0x00000001;
  static const UDAT_MEDIUM = 0x00000002;
  static const UDAT_SHORT = 0x00000003;
  static const UDAT_DEFAULT = 0x00000002;
  static const UDAT_RELATIVE = 0x00000080;
  static const UDAT_FULL_RELATIVE = 0x00000080;
  static const UDAT_LONG_RELATIVE = 0x00000081;
  static const UDAT_MEDIUM_RELATIVE = 0x00000082;
  static const UDAT_SHORT_RELATIVE = 0x00000083;
  static const UDAT_NONE = 0xffffffff;
  static const UDAT_PATTERN = 0xfffffffe;
}

/// {@category Enum}
class UDateFormatSymbolType {
  static const UDAT_ERAS = 0x00000000;
  static const UDAT_MONTHS = 0x00000001;
  static const UDAT_SHORT_MONTHS = 0x00000002;
  static const UDAT_WEEKDAYS = 0x00000003;
  static const UDAT_SHORT_WEEKDAYS = 0x00000004;
  static const UDAT_AM_PMS = 0x00000005;
  static const UDAT_LOCALIZED_CHARS = 0x00000006;
  static const UDAT_ERA_NAMES = 0x00000007;
  static const UDAT_NARROW_MONTHS = 0x00000008;
  static const UDAT_NARROW_WEEKDAYS = 0x00000009;
  static const UDAT_STANDALONE_MONTHS = 0x0000000a;
  static const UDAT_STANDALONE_SHORT_MONTHS = 0x0000000b;
  static const UDAT_STANDALONE_NARROW_MONTHS = 0x0000000c;
  static const UDAT_STANDALONE_WEEKDAYS = 0x0000000d;
  static const UDAT_STANDALONE_SHORT_WEEKDAYS = 0x0000000e;
  static const UDAT_STANDALONE_NARROW_WEEKDAYS = 0x0000000f;
  static const UDAT_QUARTERS = 0x00000010;
  static const UDAT_SHORT_QUARTERS = 0x00000011;
  static const UDAT_STANDALONE_QUARTERS = 0x00000012;
  static const UDAT_STANDALONE_SHORT_QUARTERS = 0x00000013;
  static const UDAT_SHORTER_WEEKDAYS = 0x00000014;
  static const UDAT_STANDALONE_SHORTER_WEEKDAYS = 0x00000015;
  static const UDAT_CYCLIC_YEARS_WIDE = 0x00000016;
  static const UDAT_CYCLIC_YEARS_ABBREVIATED = 0x00000017;
  static const UDAT_CYCLIC_YEARS_NARROW = 0x00000018;
  static const UDAT_ZODIAC_NAMES_WIDE = 0x00000019;
  static const UDAT_ZODIAC_NAMES_ABBREVIATED = 0x0000001a;
  static const UDAT_ZODIAC_NAMES_NARROW = 0x0000001b;
}

/// {@category Enum}
class UDateRelativeDateTimeFormatterStyle {
  static const UDAT_STYLE_LONG = 0x00000000;
  static const UDAT_STYLE_SHORT = 0x00000001;
  static const UDAT_STYLE_NARROW = 0x00000002;
}

/// {@category Enum}
class UDateRelativeUnit {
  static const UDAT_RELATIVE_SECONDS = 0x00000000;
  static const UDAT_RELATIVE_MINUTES = 0x00000001;
  static const UDAT_RELATIVE_HOURS = 0x00000002;
  static const UDAT_RELATIVE_DAYS = 0x00000003;
  static const UDAT_RELATIVE_WEEKS = 0x00000004;
  static const UDAT_RELATIVE_MONTHS = 0x00000005;
  static const UDAT_RELATIVE_YEARS = 0x00000006;
  static const UDAT_RELATIVE_UNIT_COUNT = 0x00000007;
}

/// {@category Enum}
class UDateTimePGDisplayWidth {
  static const UDATPG_WIDE = 0x00000000;
  static const UDATPG_ABBREVIATED = 0x00000001;
  static const UDATPG_NARROW = 0x00000002;
}

/// {@category Enum}
class UDateTimePatternConflict {
  static const UDATPG_NO_CONFLICT = 0x00000000;
  static const UDATPG_BASE_CONFLICT = 0x00000001;
  static const UDATPG_CONFLICT = 0x00000002;
}

/// {@category Enum}
class UDateTimePatternField {
  static const UDATPG_ERA_FIELD = 0x00000000;
  static const UDATPG_YEAR_FIELD = 0x00000001;
  static const UDATPG_QUARTER_FIELD = 0x00000002;
  static const UDATPG_MONTH_FIELD = 0x00000003;
  static const UDATPG_WEEK_OF_YEAR_FIELD = 0x00000004;
  static const UDATPG_WEEK_OF_MONTH_FIELD = 0x00000005;
  static const UDATPG_WEEKDAY_FIELD = 0x00000006;
  static const UDATPG_DAY_OF_YEAR_FIELD = 0x00000007;
  static const UDATPG_DAY_OF_WEEK_IN_MONTH_FIELD = 0x00000008;
  static const UDATPG_DAY_FIELD = 0x00000009;
  static const UDATPG_DAYPERIOD_FIELD = 0x0000000a;
  static const UDATPG_HOUR_FIELD = 0x0000000b;
  static const UDATPG_MINUTE_FIELD = 0x0000000c;
  static const UDATPG_SECOND_FIELD = 0x0000000d;
  static const UDATPG_FRACTIONAL_SECOND_FIELD = 0x0000000e;
  static const UDATPG_ZONE_FIELD = 0x0000000f;
  static const UDATPG_FIELD_COUNT = 0x00000010;
}

/// {@category Enum}
class UDateTimePatternMatchOptions {
  static const UDATPG_MATCH_NO_OPTIONS = 0x00000000;
  static const UDATPG_MATCH_HOUR_FIELD_LENGTH = 0x00000800;
  static const UDATPG_MATCH_ALL_FIELDS_LENGTH = 0x0000ffff;
}

/// {@category Enum}
class UDateTimeScale {
  static const UDTS_JAVA_TIME = 0x00000000;
  static const UDTS_UNIX_TIME = 0x00000001;
  static const UDTS_ICU4C_TIME = 0x00000002;
  static const UDTS_WINDOWS_FILE_TIME = 0x00000003;
  static const UDTS_DOTNET_DATE_TIME = 0x00000004;
  static const UDTS_MAC_OLD_TIME = 0x00000005;
  static const UDTS_MAC_TIME = 0x00000006;
  static const UDTS_EXCEL_TIME = 0x00000007;
  static const UDTS_DB2_TIME = 0x00000008;
  static const UDTS_UNIX_MICROSECONDS_TIME = 0x00000009;
}

/// {@category Enum}
class UDecompositionType {
  static const U_DT_NONE = 0x00000000;
  static const U_DT_CANONICAL = 0x00000001;
  static const U_DT_COMPAT = 0x00000002;
  static const U_DT_CIRCLE = 0x00000003;
  static const U_DT_FINAL = 0x00000004;
  static const U_DT_FONT = 0x00000005;
  static const U_DT_FRACTION = 0x00000006;
  static const U_DT_INITIAL = 0x00000007;
  static const U_DT_ISOLATED = 0x00000008;
  static const U_DT_MEDIAL = 0x00000009;
  static const U_DT_NARROW = 0x0000000a;
  static const U_DT_NOBREAK = 0x0000000b;
  static const U_DT_SMALL = 0x0000000c;
  static const U_DT_SQUARE = 0x0000000d;
  static const U_DT_SUB = 0x0000000e;
  static const U_DT_SUPER = 0x0000000f;
  static const U_DT_VERTICAL = 0x00000010;
  static const U_DT_WIDE = 0x00000011;
}

/// {@category Enum}
class UDialectHandling {
  static const ULDN_STANDARD_NAMES = 0x00000000;
  static const ULDN_DIALECT_NAMES = 0x00000001;
}

/// {@category Enum}
class UDisplayContext {
  static const UDISPCTX_STANDARD_NAMES = 0x00000000;
  static const UDISPCTX_DIALECT_NAMES = 0x00000001;
  static const UDISPCTX_CAPITALIZATION_NONE = 0x00000100;
  static const UDISPCTX_CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE = 0x00000101;
  static const UDISPCTX_CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE = 0x00000102;
  static const UDISPCTX_CAPITALIZATION_FOR_UI_LIST_OR_MENU = 0x00000103;
  static const UDISPCTX_CAPITALIZATION_FOR_STANDALONE = 0x00000104;
  static const UDISPCTX_LENGTH_FULL = 0x00000200;
  static const UDISPCTX_LENGTH_SHORT = 0x00000201;
  static const UDISPCTX_SUBSTITUTE = 0x00000300;
  static const UDISPCTX_NO_SUBSTITUTE = 0x00000301;
}

/// {@category Enum}
class UDisplayContextType {
  static const UDISPCTX_TYPE_DIALECT_HANDLING = 0x00000000;
  static const UDISPCTX_TYPE_CAPITALIZATION = 0x00000001;
  static const UDISPCTX_TYPE_DISPLAY_LENGTH = 0x00000002;
  static const UDISPCTX_TYPE_SUBSTITUTE_HANDLING = 0x00000003;
}

/// {@category Enum}
class UEastAsianWidth {
  static const U_EA_NEUTRAL = 0x00000000;
  static const U_EA_AMBIGUOUS = 0x00000001;
  static const U_EA_HALFWIDTH = 0x00000002;
  static const U_EA_FULLWIDTH = 0x00000003;
  static const U_EA_NARROW = 0x00000004;
  static const U_EA_WIDE = 0x00000005;
}

/// {@category Enum}
class UErrorCode {
  static const U_USING_FALLBACK_WARNING = 0xffffff80;
  static const U_ERROR_WARNING_START = 0xffffff80;
  static const U_USING_DEFAULT_WARNING = 0xffffff81;
  static const U_SAFECLONE_ALLOCATED_WARNING = 0xffffff82;
  static const U_STATE_OLD_WARNING = 0xffffff83;
  static const U_STRING_NOT_TERMINATED_WARNING = 0xffffff84;
  static const U_SORT_KEY_TOO_SHORT_WARNING = 0xffffff85;
  static const U_AMBIGUOUS_ALIAS_WARNING = 0xffffff86;
  static const U_DIFFERENT_UCA_VERSION = 0xffffff87;
  static const U_PLUGIN_CHANGED_LEVEL_WARNING = 0xffffff88;
  static const U_ZERO_ERROR = 0x00000000;
  static const U_ILLEGAL_ARGUMENT_ERROR = 0x00000001;
  static const U_MISSING_RESOURCE_ERROR = 0x00000002;
  static const U_INVALID_FORMAT_ERROR = 0x00000003;
  static const U_FILE_ACCESS_ERROR = 0x00000004;
  static const U_INTERNAL_PROGRAM_ERROR = 0x00000005;
  static const U_MESSAGE_PARSE_ERROR = 0x00000006;
  static const U_MEMORY_ALLOCATION_ERROR = 0x00000007;
  static const U_INDEX_OUTOFBOUNDS_ERROR = 0x00000008;
  static const U_PARSE_ERROR = 0x00000009;
  static const U_INVALID_CHAR_FOUND = 0x0000000a;
  static const U_TRUNCATED_CHAR_FOUND = 0x0000000b;
  static const U_ILLEGAL_CHAR_FOUND = 0x0000000c;
  static const U_INVALID_TABLE_FORMAT = 0x0000000d;
  static const U_INVALID_TABLE_FILE = 0x0000000e;
  static const U_BUFFER_OVERFLOW_ERROR = 0x0000000f;
  static const U_UNSUPPORTED_ERROR = 0x00000010;
  static const U_RESOURCE_TYPE_MISMATCH = 0x00000011;
  static const U_ILLEGAL_ESCAPE_SEQUENCE = 0x00000012;
  static const U_UNSUPPORTED_ESCAPE_SEQUENCE = 0x00000013;
  static const U_NO_SPACE_AVAILABLE = 0x00000014;
  static const U_CE_NOT_FOUND_ERROR = 0x00000015;
  static const U_PRIMARY_TOO_LONG_ERROR = 0x00000016;
  static const U_STATE_TOO_OLD_ERROR = 0x00000017;
  static const U_TOO_MANY_ALIASES_ERROR = 0x00000018;
  static const U_ENUM_OUT_OF_SYNC_ERROR = 0x00000019;
  static const U_INVARIANT_CONVERSION_ERROR = 0x0000001a;
  static const U_INVALID_STATE_ERROR = 0x0000001b;
  static const U_COLLATOR_VERSION_MISMATCH = 0x0000001c;
  static const U_USELESS_COLLATOR_ERROR = 0x0000001d;
  static const U_NO_WRITE_PERMISSION = 0x0000001e;
  static const U_BAD_VARIABLE_DEFINITION = 0x00010000;
  static const U_PARSE_ERROR_START = 0x00010000;
  static const U_MALFORMED_RULE = 0x00010001;
  static const U_MALFORMED_SET = 0x00010002;
  static const U_MALFORMED_SYMBOL_REFERENCE = 0x00010003;
  static const U_MALFORMED_UNICODE_ESCAPE = 0x00010004;
  static const U_MALFORMED_VARIABLE_DEFINITION = 0x00010005;
  static const U_MALFORMED_VARIABLE_REFERENCE = 0x00010006;
  static const U_MISMATCHED_SEGMENT_DELIMITERS = 0x00010007;
  static const U_MISPLACED_ANCHOR_START = 0x00010008;
  static const U_MISPLACED_CURSOR_OFFSET = 0x00010009;
  static const U_MISPLACED_QUANTIFIER = 0x0001000a;
  static const U_MISSING_OPERATOR = 0x0001000b;
  static const U_MISSING_SEGMENT_CLOSE = 0x0001000c;
  static const U_MULTIPLE_ANTE_CONTEXTS = 0x0001000d;
  static const U_MULTIPLE_CURSORS = 0x0001000e;
  static const U_MULTIPLE_POST_CONTEXTS = 0x0001000f;
  static const U_TRAILING_BACKSLASH = 0x00010010;
  static const U_UNDEFINED_SEGMENT_REFERENCE = 0x00010011;
  static const U_UNDEFINED_VARIABLE = 0x00010012;
  static const U_UNQUOTED_SPECIAL = 0x00010013;
  static const U_UNTERMINATED_QUOTE = 0x00010014;
  static const U_RULE_MASK_ERROR = 0x00010015;
  static const U_MISPLACED_COMPOUND_FILTER = 0x00010016;
  static const U_MULTIPLE_COMPOUND_FILTERS = 0x00010017;
  static const U_INVALID_RBT_SYNTAX = 0x00010018;
  static const U_INVALID_PROPERTY_PATTERN = 0x00010019;
  static const U_MALFORMED_PRAGMA = 0x0001001a;
  static const U_UNCLOSED_SEGMENT = 0x0001001b;
  static const U_ILLEGAL_CHAR_IN_SEGMENT = 0x0001001c;
  static const U_VARIABLE_RANGE_EXHAUSTED = 0x0001001d;
  static const U_VARIABLE_RANGE_OVERLAP = 0x0001001e;
  static const U_ILLEGAL_CHARACTER = 0x0001001f;
  static const U_INTERNAL_TRANSLITERATOR_ERROR = 0x00010020;
  static const U_INVALID_ID = 0x00010021;
  static const U_INVALID_FUNCTION = 0x00010022;
  static const U_UNEXPECTED_TOKEN = 0x00010100;
  static const U_FMT_PARSE_ERROR_START = 0x00010100;
  static const U_MULTIPLE_DECIMAL_SEPARATORS = 0x00010101;
  static const U_MULTIPLE_DECIMAL_SEPERATORS = 0x00010101;
  static const U_MULTIPLE_EXPONENTIAL_SYMBOLS = 0x00010102;
  static const U_MALFORMED_EXPONENTIAL_PATTERN = 0x00010103;
  static const U_MULTIPLE_PERCENT_SYMBOLS = 0x00010104;
  static const U_MULTIPLE_PERMILL_SYMBOLS = 0x00010105;
  static const U_MULTIPLE_PAD_SPECIFIERS = 0x00010106;
  static const U_PATTERN_SYNTAX_ERROR = 0x00010107;
  static const U_ILLEGAL_PAD_POSITION = 0x00010108;
  static const U_UNMATCHED_BRACES = 0x00010109;
  static const U_UNSUPPORTED_PROPERTY = 0x0001010a;
  static const U_UNSUPPORTED_ATTRIBUTE = 0x0001010b;
  static const U_ARGUMENT_TYPE_MISMATCH = 0x0001010c;
  static const U_DUPLICATE_KEYWORD = 0x0001010d;
  static const U_UNDEFINED_KEYWORD = 0x0001010e;
  static const U_DEFAULT_KEYWORD_MISSING = 0x0001010f;
  static const U_DECIMAL_NUMBER_SYNTAX_ERROR = 0x00010110;
  static const U_FORMAT_INEXACT_ERROR = 0x00010111;
  static const U_NUMBER_ARG_OUTOFBOUNDS_ERROR = 0x00010112;
  static const U_NUMBER_SKELETON_SYNTAX_ERROR = 0x00010113;
  static const U_BRK_INTERNAL_ERROR = 0x00010200;
  static const U_BRK_ERROR_START = 0x00010200;
  static const U_BRK_HEX_DIGITS_EXPECTED = 0x00010201;
  static const U_BRK_SEMICOLON_EXPECTED = 0x00010202;
  static const U_BRK_RULE_SYNTAX = 0x00010203;
  static const U_BRK_UNCLOSED_SET = 0x00010204;
  static const U_BRK_ASSIGN_ERROR = 0x00010205;
  static const U_BRK_VARIABLE_REDFINITION = 0x00010206;
  static const U_BRK_MISMATCHED_PAREN = 0x00010207;
  static const U_BRK_NEW_LINE_IN_QUOTED_STRING = 0x00010208;
  static const U_BRK_UNDEFINED_VARIABLE = 0x00010209;
  static const U_BRK_INIT_ERROR = 0x0001020a;
  static const U_BRK_RULE_EMPTY_SET = 0x0001020b;
  static const U_BRK_UNRECOGNIZED_OPTION = 0x0001020c;
  static const U_BRK_MALFORMED_RULE_TAG = 0x0001020d;
  static const U_REGEX_INTERNAL_ERROR = 0x00010300;
  static const U_REGEX_ERROR_START = 0x00010300;
  static const U_REGEX_RULE_SYNTAX = 0x00010301;
  static const U_REGEX_INVALID_STATE = 0x00010302;
  static const U_REGEX_BAD_ESCAPE_SEQUENCE = 0x00010303;
  static const U_REGEX_PROPERTY_SYNTAX = 0x00010304;
  static const U_REGEX_UNIMPLEMENTED = 0x00010305;
  static const U_REGEX_MISMATCHED_PAREN = 0x00010306;
  static const U_REGEX_NUMBER_TOO_BIG = 0x00010307;
  static const U_REGEX_BAD_INTERVAL = 0x00010308;
  static const U_REGEX_MAX_LT_MIN = 0x00010309;
  static const U_REGEX_INVALID_BACK_REF = 0x0001030a;
  static const U_REGEX_INVALID_FLAG = 0x0001030b;
  static const U_REGEX_LOOK_BEHIND_LIMIT = 0x0001030c;
  static const U_REGEX_SET_CONTAINS_STRING = 0x0001030d;
  static const U_REGEX_MISSING_CLOSE_BRACKET = 0x0001030f;
  static const U_REGEX_INVALID_RANGE = 0x00010310;
  static const U_REGEX_STACK_OVERFLOW = 0x00010311;
  static const U_REGEX_TIME_OUT = 0x00010312;
  static const U_REGEX_STOPPED_BY_CALLER = 0x00010313;
  static const U_REGEX_PATTERN_TOO_BIG = 0x00010314;
  static const U_REGEX_INVALID_CAPTURE_GROUP_NAME = 0x00010315;
  static const U_IDNA_PROHIBITED_ERROR = 0x00010400;
  static const U_IDNA_ERROR_START = 0x00010400;
  static const U_IDNA_UNASSIGNED_ERROR = 0x00010401;
  static const U_IDNA_CHECK_BIDI_ERROR = 0x00010402;
  static const U_IDNA_STD3_ASCII_RULES_ERROR = 0x00010403;
  static const U_IDNA_ACE_PREFIX_ERROR = 0x00010404;
  static const U_IDNA_VERIFICATION_ERROR = 0x00010405;
  static const U_IDNA_LABEL_TOO_LONG_ERROR = 0x00010406;
  static const U_IDNA_ZERO_LENGTH_LABEL_ERROR = 0x00010407;
  static const U_IDNA_DOMAIN_NAME_TOO_LONG_ERROR = 0x00010408;
  static const U_STRINGPREP_PROHIBITED_ERROR = 0x00010400;
  static const U_STRINGPREP_UNASSIGNED_ERROR = 0x00010401;
  static const U_STRINGPREP_CHECK_BIDI_ERROR = 0x00010402;
  static const U_PLUGIN_ERROR_START = 0x00010500;
  static const U_PLUGIN_TOO_HIGH = 0x00010500;
  static const U_PLUGIN_DIDNT_SET_LEVEL = 0x00010501;
}

/// {@category Enum}
class UFieldCategory {
  static const UFIELD_CATEGORY_UNDEFINED = 0x00000000;
  static const UFIELD_CATEGORY_DATE = 0x00000001;
  static const UFIELD_CATEGORY_NUMBER = 0x00000002;
  static const UFIELD_CATEGORY_LIST = 0x00000003;
  static const UFIELD_CATEGORY_RELATIVE_DATETIME = 0x00000004;
  static const UFIELD_CATEGORY_DATE_INTERVAL = 0x00000005;
  static const UFIELD_CATEGORY_LIST_SPAN = 0x00001003;
  static const UFIELD_CATEGORY_DATE_INTERVAL_SPAN = 0x00001005;
}

/// {@category Enum}
class UFormattableType {
  static const UFMT_DATE = 0x00000000;
  static const UFMT_DOUBLE = 0x00000001;
  static const UFMT_LONG = 0x00000002;
  static const UFMT_STRING = 0x00000003;
  static const UFMT_ARRAY = 0x00000004;
  static const UFMT_INT64 = 0x00000005;
  static const UFMT_OBJECT = 0x00000006;
}

/// {@category Enum}
class UGender {
  static const UGENDER_MALE = 0x00000000;
  static const UGENDER_FEMALE = 0x00000001;
  static const UGENDER_OTHER = 0x00000002;
}

/// {@category Enum}
class UGraphemeClusterBreak {
  static const U_GCB_OTHER = 0x00000000;
  static const U_GCB_CONTROL = 0x00000001;
  static const U_GCB_CR = 0x00000002;
  static const U_GCB_EXTEND = 0x00000003;
  static const U_GCB_L = 0x00000004;
  static const U_GCB_LF = 0x00000005;
  static const U_GCB_LV = 0x00000006;
  static const U_GCB_LVT = 0x00000007;
  static const U_GCB_T = 0x00000008;
  static const U_GCB_V = 0x00000009;
  static const U_GCB_SPACING_MARK = 0x0000000a;
  static const U_GCB_PREPEND = 0x0000000b;
  static const U_GCB_REGIONAL_INDICATOR = 0x0000000c;
  static const U_GCB_E_BASE = 0x0000000d;
  static const U_GCB_E_BASE_GAZ = 0x0000000e;
  static const U_GCB_E_MODIFIER = 0x0000000f;
  static const U_GCB_GLUE_AFTER_ZWJ = 0x00000010;
  static const U_GCB_ZWJ = 0x00000011;
}

/// {@category Enum}
class UHangulSyllableType {
  static const U_HST_NOT_APPLICABLE = 0x00000000;
  static const U_HST_LEADING_JAMO = 0x00000001;
  static const U_HST_VOWEL_JAMO = 0x00000002;
  static const U_HST_TRAILING_JAMO = 0x00000003;
  static const U_HST_LV_SYLLABLE = 0x00000004;
  static const U_HST_LVT_SYLLABLE = 0x00000005;
}

/// {@category Enum}
class UIndicPositionalCategory {
  static const U_INPC_NA = 0x00000000;
  static const U_INPC_BOTTOM = 0x00000001;
  static const U_INPC_BOTTOM_AND_LEFT = 0x00000002;
  static const U_INPC_BOTTOM_AND_RIGHT = 0x00000003;
  static const U_INPC_LEFT = 0x00000004;
  static const U_INPC_LEFT_AND_RIGHT = 0x00000005;
  static const U_INPC_OVERSTRUCK = 0x00000006;
  static const U_INPC_RIGHT = 0x00000007;
  static const U_INPC_TOP = 0x00000008;
  static const U_INPC_TOP_AND_BOTTOM = 0x00000009;
  static const U_INPC_TOP_AND_BOTTOM_AND_RIGHT = 0x0000000a;
  static const U_INPC_TOP_AND_LEFT = 0x0000000b;
  static const U_INPC_TOP_AND_LEFT_AND_RIGHT = 0x0000000c;
  static const U_INPC_TOP_AND_RIGHT = 0x0000000d;
  static const U_INPC_VISUAL_ORDER_LEFT = 0x0000000e;
  static const U_INPC_TOP_AND_BOTTOM_AND_LEFT = 0x0000000f;
}

/// {@category Enum}
class UIndicSyllabicCategory {
  static const U_INSC_OTHER = 0x00000000;
  static const U_INSC_AVAGRAHA = 0x00000001;
  static const U_INSC_BINDU = 0x00000002;
  static const U_INSC_BRAHMI_JOINING_NUMBER = 0x00000003;
  static const U_INSC_CANTILLATION_MARK = 0x00000004;
  static const U_INSC_CONSONANT = 0x00000005;
  static const U_INSC_CONSONANT_DEAD = 0x00000006;
  static const U_INSC_CONSONANT_FINAL = 0x00000007;
  static const U_INSC_CONSONANT_HEAD_LETTER = 0x00000008;
  static const U_INSC_CONSONANT_INITIAL_POSTFIXED = 0x00000009;
  static const U_INSC_CONSONANT_KILLER = 0x0000000a;
  static const U_INSC_CONSONANT_MEDIAL = 0x0000000b;
  static const U_INSC_CONSONANT_PLACEHOLDER = 0x0000000c;
  static const U_INSC_CONSONANT_PRECEDING_REPHA = 0x0000000d;
  static const U_INSC_CONSONANT_PREFIXED = 0x0000000e;
  static const U_INSC_CONSONANT_SUBJOINED = 0x0000000f;
  static const U_INSC_CONSONANT_SUCCEEDING_REPHA = 0x00000010;
  static const U_INSC_CONSONANT_WITH_STACKER = 0x00000011;
  static const U_INSC_GEMINATION_MARK = 0x00000012;
  static const U_INSC_INVISIBLE_STACKER = 0x00000013;
  static const U_INSC_JOINER = 0x00000014;
  static const U_INSC_MODIFYING_LETTER = 0x00000015;
  static const U_INSC_NON_JOINER = 0x00000016;
  static const U_INSC_NUKTA = 0x00000017;
  static const U_INSC_NUMBER = 0x00000018;
  static const U_INSC_NUMBER_JOINER = 0x00000019;
  static const U_INSC_PURE_KILLER = 0x0000001a;
  static const U_INSC_REGISTER_SHIFTER = 0x0000001b;
  static const U_INSC_SYLLABLE_MODIFIER = 0x0000001c;
  static const U_INSC_TONE_LETTER = 0x0000001d;
  static const U_INSC_TONE_MARK = 0x0000001e;
  static const U_INSC_VIRAMA = 0x0000001f;
  static const U_INSC_VISARGA = 0x00000020;
  static const U_INSC_VOWEL = 0x00000021;
  static const U_INSC_VOWEL_DEPENDENT = 0x00000022;
  static const U_INSC_VOWEL_INDEPENDENT = 0x00000023;
}

/// {@category Enum}
class UJoiningGroup {
  static const U_JG_NO_JOINING_GROUP = 0x00000000;
  static const U_JG_AIN = 0x00000001;
  static const U_JG_ALAPH = 0x00000002;
  static const U_JG_ALEF = 0x00000003;
  static const U_JG_BEH = 0x00000004;
  static const U_JG_BETH = 0x00000005;
  static const U_JG_DAL = 0x00000006;
  static const U_JG_DALATH_RISH = 0x00000007;
  static const U_JG_E = 0x00000008;
  static const U_JG_FEH = 0x00000009;
  static const U_JG_FINAL_SEMKATH = 0x0000000a;
  static const U_JG_GAF = 0x0000000b;
  static const U_JG_GAMAL = 0x0000000c;
  static const U_JG_HAH = 0x0000000d;
  static const U_JG_TEH_MARBUTA_GOAL = 0x0000000e;
  static const U_JG_HAMZA_ON_HEH_GOAL = 0x0000000e;
  static const U_JG_HE = 0x0000000f;
  static const U_JG_HEH = 0x00000010;
  static const U_JG_HEH_GOAL = 0x00000011;
  static const U_JG_HETH = 0x00000012;
  static const U_JG_KAF = 0x00000013;
  static const U_JG_KAPH = 0x00000014;
  static const U_JG_KNOTTED_HEH = 0x00000015;
  static const U_JG_LAM = 0x00000016;
  static const U_JG_LAMADH = 0x00000017;
  static const U_JG_MEEM = 0x00000018;
  static const U_JG_MIM = 0x00000019;
  static const U_JG_NOON = 0x0000001a;
  static const U_JG_NUN = 0x0000001b;
  static const U_JG_PE = 0x0000001c;
  static const U_JG_QAF = 0x0000001d;
  static const U_JG_QAPH = 0x0000001e;
  static const U_JG_REH = 0x0000001f;
  static const U_JG_REVERSED_PE = 0x00000020;
  static const U_JG_SAD = 0x00000021;
  static const U_JG_SADHE = 0x00000022;
  static const U_JG_SEEN = 0x00000023;
  static const U_JG_SEMKATH = 0x00000024;
  static const U_JG_SHIN = 0x00000025;
  static const U_JG_SWASH_KAF = 0x00000026;
  static const U_JG_SYRIAC_WAW = 0x00000027;
  static const U_JG_TAH = 0x00000028;
  static const U_JG_TAW = 0x00000029;
  static const U_JG_TEH_MARBUTA = 0x0000002a;
  static const U_JG_TETH = 0x0000002b;
  static const U_JG_WAW = 0x0000002c;
  static const U_JG_YEH = 0x0000002d;
  static const U_JG_YEH_BARREE = 0x0000002e;
  static const U_JG_YEH_WITH_TAIL = 0x0000002f;
  static const U_JG_YUDH = 0x00000030;
  static const U_JG_YUDH_HE = 0x00000031;
  static const U_JG_ZAIN = 0x00000032;
  static const U_JG_FE = 0x00000033;
  static const U_JG_KHAPH = 0x00000034;
  static const U_JG_ZHAIN = 0x00000035;
  static const U_JG_BURUSHASKI_YEH_BARREE = 0x00000036;
  static const U_JG_FARSI_YEH = 0x00000037;
  static const U_JG_NYA = 0x00000038;
  static const U_JG_ROHINGYA_YEH = 0x00000039;
  static const U_JG_MANICHAEAN_ALEPH = 0x0000003a;
  static const U_JG_MANICHAEAN_AYIN = 0x0000003b;
  static const U_JG_MANICHAEAN_BETH = 0x0000003c;
  static const U_JG_MANICHAEAN_DALETH = 0x0000003d;
  static const U_JG_MANICHAEAN_DHAMEDH = 0x0000003e;
  static const U_JG_MANICHAEAN_FIVE = 0x0000003f;
  static const U_JG_MANICHAEAN_GIMEL = 0x00000040;
  static const U_JG_MANICHAEAN_HETH = 0x00000041;
  static const U_JG_MANICHAEAN_HUNDRED = 0x00000042;
  static const U_JG_MANICHAEAN_KAPH = 0x00000043;
  static const U_JG_MANICHAEAN_LAMEDH = 0x00000044;
  static const U_JG_MANICHAEAN_MEM = 0x00000045;
  static const U_JG_MANICHAEAN_NUN = 0x00000046;
  static const U_JG_MANICHAEAN_ONE = 0x00000047;
  static const U_JG_MANICHAEAN_PE = 0x00000048;
  static const U_JG_MANICHAEAN_QOPH = 0x00000049;
  static const U_JG_MANICHAEAN_RESH = 0x0000004a;
  static const U_JG_MANICHAEAN_SADHE = 0x0000004b;
  static const U_JG_MANICHAEAN_SAMEKH = 0x0000004c;
  static const U_JG_MANICHAEAN_TAW = 0x0000004d;
  static const U_JG_MANICHAEAN_TEN = 0x0000004e;
  static const U_JG_MANICHAEAN_TETH = 0x0000004f;
  static const U_JG_MANICHAEAN_THAMEDH = 0x00000050;
  static const U_JG_MANICHAEAN_TWENTY = 0x00000051;
  static const U_JG_MANICHAEAN_WAW = 0x00000052;
  static const U_JG_MANICHAEAN_YODH = 0x00000053;
  static const U_JG_MANICHAEAN_ZAYIN = 0x00000054;
  static const U_JG_STRAIGHT_WAW = 0x00000055;
  static const U_JG_AFRICAN_FEH = 0x00000056;
  static const U_JG_AFRICAN_NOON = 0x00000057;
  static const U_JG_AFRICAN_QAF = 0x00000058;
  static const U_JG_MALAYALAM_BHA = 0x00000059;
  static const U_JG_MALAYALAM_JA = 0x0000005a;
  static const U_JG_MALAYALAM_LLA = 0x0000005b;
  static const U_JG_MALAYALAM_LLLA = 0x0000005c;
  static const U_JG_MALAYALAM_NGA = 0x0000005d;
  static const U_JG_MALAYALAM_NNA = 0x0000005e;
  static const U_JG_MALAYALAM_NNNA = 0x0000005f;
  static const U_JG_MALAYALAM_NYA = 0x00000060;
  static const U_JG_MALAYALAM_RA = 0x00000061;
  static const U_JG_MALAYALAM_SSA = 0x00000062;
  static const U_JG_MALAYALAM_TTA = 0x00000063;
  static const U_JG_HANIFI_ROHINGYA_KINNA_YA = 0x00000064;
  static const U_JG_HANIFI_ROHINGYA_PA = 0x00000065;
}

/// {@category Enum}
class UJoiningType {
  static const U_JT_NON_JOINING = 0x00000000;
  static const U_JT_JOIN_CAUSING = 0x00000001;
  static const U_JT_DUAL_JOINING = 0x00000002;
  static const U_JT_LEFT_JOINING = 0x00000003;
  static const U_JT_RIGHT_JOINING = 0x00000004;
  static const U_JT_TRANSPARENT = 0x00000005;
}

/// {@category Enum}
class ULayoutType {
  static const ULOC_LAYOUT_LTR = 0x00000000;
  static const ULOC_LAYOUT_RTL = 0x00000001;
  static const ULOC_LAYOUT_TTB = 0x00000002;
  static const ULOC_LAYOUT_BTT = 0x00000003;
  static const ULOC_LAYOUT_UNKNOWN = 0x00000004;
}

/// {@category Enum}
class ULineBreak {
  static const U_LB_UNKNOWN = 0x00000000;
  static const U_LB_AMBIGUOUS = 0x00000001;
  static const U_LB_ALPHABETIC = 0x00000002;
  static const U_LB_BREAK_BOTH = 0x00000003;
  static const U_LB_BREAK_AFTER = 0x00000004;
  static const U_LB_BREAK_BEFORE = 0x00000005;
  static const U_LB_MANDATORY_BREAK = 0x00000006;
  static const U_LB_CONTINGENT_BREAK = 0x00000007;
  static const U_LB_CLOSE_PUNCTUATION = 0x00000008;
  static const U_LB_COMBINING_MARK = 0x00000009;
  static const U_LB_CARRIAGE_RETURN = 0x0000000a;
  static const U_LB_EXCLAMATION = 0x0000000b;
  static const U_LB_GLUE = 0x0000000c;
  static const U_LB_HYPHEN = 0x0000000d;
  static const U_LB_IDEOGRAPHIC = 0x0000000e;
  static const U_LB_INSEPARABLE = 0x0000000f;
  static const U_LB_INSEPERABLE = 0x0000000f;
  static const U_LB_INFIX_NUMERIC = 0x00000010;
  static const U_LB_LINE_FEED = 0x00000011;
  static const U_LB_NONSTARTER = 0x00000012;
  static const U_LB_NUMERIC = 0x00000013;
  static const U_LB_OPEN_PUNCTUATION = 0x00000014;
  static const U_LB_POSTFIX_NUMERIC = 0x00000015;
  static const U_LB_PREFIX_NUMERIC = 0x00000016;
  static const U_LB_QUOTATION = 0x00000017;
  static const U_LB_COMPLEX_CONTEXT = 0x00000018;
  static const U_LB_SURROGATE = 0x00000019;
  static const U_LB_SPACE = 0x0000001a;
  static const U_LB_BREAK_SYMBOLS = 0x0000001b;
  static const U_LB_ZWSPACE = 0x0000001c;
  static const U_LB_NEXT_LINE = 0x0000001d;
  static const U_LB_WORD_JOINER = 0x0000001e;
  static const U_LB_H2 = 0x0000001f;
  static const U_LB_H3 = 0x00000020;
  static const U_LB_JL = 0x00000021;
  static const U_LB_JT = 0x00000022;
  static const U_LB_JV = 0x00000023;
  static const U_LB_CLOSE_PARENTHESIS = 0x00000024;
  static const U_LB_CONDITIONAL_JAPANESE_STARTER = 0x00000025;
  static const U_LB_HEBREW_LETTER = 0x00000026;
  static const U_LB_REGIONAL_INDICATOR = 0x00000027;
  static const U_LB_E_BASE = 0x00000028;
  static const U_LB_E_MODIFIER = 0x00000029;
  static const U_LB_ZWJ = 0x0000002a;
}

/// {@category Enum}
class ULineBreakTag {
  static const UBRK_LINE_SOFT = 0x00000000;
  static const UBRK_LINE_SOFT_LIMIT = 0x00000064;
  static const UBRK_LINE_HARD = 0x00000064;
  static const UBRK_LINE_HARD_LIMIT = 0x000000c8;
}

/// {@category Enum}
class UListFormatterField {
  static const ULISTFMT_LITERAL_FIELD = 0x00000000;
  static const ULISTFMT_ELEMENT_FIELD = 0x00000001;
}

/// {@category Enum}
class UListFormatterType {
  static const ULISTFMT_TYPE_AND = 0x00000000;
  static const ULISTFMT_TYPE_OR = 0x00000001;
  static const ULISTFMT_TYPE_UNITS = 0x00000002;
}

/// {@category Enum}
class UListFormatterWidth {
  static const ULISTFMT_WIDTH_WIDE = 0x00000000;
  static const ULISTFMT_WIDTH_SHORT = 0x00000001;
  static const ULISTFMT_WIDTH_NARROW = 0x00000002;
}

/// {@category Enum}
class ULocAvailableType {
  static const ULOC_AVAILABLE_DEFAULT = 0x00000000;
  static const ULOC_AVAILABLE_ONLY_LEGACY_ALIASES = 0x00000001;
  static const ULOC_AVAILABLE_WITH_LEGACY_ALIASES = 0x00000002;
}

/// {@category Enum}
class ULocDataLocaleType {
  static const ULOC_ACTUAL_LOCALE = 0x00000000;
  static const ULOC_VALID_LOCALE = 0x00000001;
}

/// {@category Enum}
class ULocaleDataDelimiterType {
  static const ULOCDATA_QUOTATION_START = 0x00000000;
  static const ULOCDATA_QUOTATION_END = 0x00000001;
  static const ULOCDATA_ALT_QUOTATION_START = 0x00000002;
  static const ULOCDATA_ALT_QUOTATION_END = 0x00000003;
}

/// {@category Enum}
class ULocaleDataExemplarSetType {
  static const ULOCDATA_ES_STANDARD = 0x00000000;
  static const ULOCDATA_ES_AUXILIARY = 0x00000001;
  static const ULOCDATA_ES_INDEX = 0x00000002;
  static const ULOCDATA_ES_PUNCTUATION = 0x00000003;
}

/// {@category Enum}
class UMeasureFormatWidth {
  static const UMEASFMT_WIDTH_WIDE = 0x00000000;
  static const UMEASFMT_WIDTH_SHORT = 0x00000001;
  static const UMEASFMT_WIDTH_NARROW = 0x00000002;
  static const UMEASFMT_WIDTH_NUMERIC = 0x00000003;
  static const UMEASFMT_WIDTH_COUNT = 0x00000004;
}

/// {@category Enum}
class UMeasurementSystem {
  static const UMS_SI = 0x00000000;
  static const UMS_US = 0x00000001;
  static const UMS_UK = 0x00000002;
}

/// {@category Enum}
class UMessagePatternApostropheMode {
  static const UMSGPAT_APOS_DOUBLE_OPTIONAL = 0x00000000;
  static const UMSGPAT_APOS_DOUBLE_REQUIRED = 0x00000001;
}

/// {@category Enum}
class UMessagePatternArgType {
  static const UMSGPAT_ARG_TYPE_NONE = 0x00000000;
  static const UMSGPAT_ARG_TYPE_SIMPLE = 0x00000001;
  static const UMSGPAT_ARG_TYPE_CHOICE = 0x00000002;
  static const UMSGPAT_ARG_TYPE_PLURAL = 0x00000003;
  static const UMSGPAT_ARG_TYPE_SELECT = 0x00000004;
  static const UMSGPAT_ARG_TYPE_SELECTORDINAL = 0x00000005;
}

/// {@category Enum}
class UMessagePatternPartType {
  static const UMSGPAT_PART_TYPE_MSG_START = 0x00000000;
  static const UMSGPAT_PART_TYPE_MSG_LIMIT = 0x00000001;
  static const UMSGPAT_PART_TYPE_SKIP_SYNTAX = 0x00000002;
  static const UMSGPAT_PART_TYPE_INSERT_CHAR = 0x00000003;
  static const UMSGPAT_PART_TYPE_REPLACE_NUMBER = 0x00000004;
  static const UMSGPAT_PART_TYPE_ARG_START = 0x00000005;
  static const UMSGPAT_PART_TYPE_ARG_LIMIT = 0x00000006;
  static const UMSGPAT_PART_TYPE_ARG_NUMBER = 0x00000007;
  static const UMSGPAT_PART_TYPE_ARG_NAME = 0x00000008;
  static const UMSGPAT_PART_TYPE_ARG_TYPE = 0x00000009;
  static const UMSGPAT_PART_TYPE_ARG_STYLE = 0x0000000a;
  static const UMSGPAT_PART_TYPE_ARG_SELECTOR = 0x0000000b;
  static const UMSGPAT_PART_TYPE_ARG_INT = 0x0000000c;
  static const UMSGPAT_PART_TYPE_ARG_DOUBLE = 0x0000000d;
}

/// {@category Enum}
class UNormalization2Mode {
  static const UNORM2_COMPOSE = 0x00000000;
  static const UNORM2_DECOMPOSE = 0x00000001;
  static const UNORM2_FCD = 0x00000002;
  static const UNORM2_COMPOSE_CONTIGUOUS = 0x00000003;
}

/// {@category Enum}
class UNormalizationCheckResult {
  static const UNORM_NO = 0x00000000;
  static const UNORM_YES = 0x00000001;
  static const UNORM_MAYBE = 0x00000002;
}

/// {@category Enum}
class UNormalizationMode {
  static const UNORM_NONE = 0x00000001;
  static const UNORM_NFD = 0x00000002;
  static const UNORM_NFKD = 0x00000003;
  static const UNORM_NFC = 0x00000004;
  static const UNORM_DEFAULT = 0x00000004;
  static const UNORM_NFKC = 0x00000005;
  static const UNORM_FCD = 0x00000006;
  static const UNORM_MODE_COUNT = 0x00000007;
}

/// {@category Enum}
class UNumberCompactStyle {
  static const UNUM_SHORT = 0x00000000;
  static const UNUM_LONG = 0x00000001;
}

/// {@category Enum}
class UNumberDecimalSeparatorDisplay {
  static const UNUM_DECIMAL_SEPARATOR_AUTO = 0x00000000;
  static const UNUM_DECIMAL_SEPARATOR_ALWAYS = 0x00000001;
  static const UNUM_DECIMAL_SEPARATOR_COUNT = 0x00000002;
}

/// {@category Enum}
class UNumberFormatAttribute {
  static const UNUM_PARSE_INT_ONLY = 0x00000000;
  static const UNUM_GROUPING_USED = 0x00000001;
  static const UNUM_DECIMAL_ALWAYS_SHOWN = 0x00000002;
  static const UNUM_MAX_INTEGER_DIGITS = 0x00000003;
  static const UNUM_MIN_INTEGER_DIGITS = 0x00000004;
  static const UNUM_INTEGER_DIGITS = 0x00000005;
  static const UNUM_MAX_FRACTION_DIGITS = 0x00000006;
  static const UNUM_MIN_FRACTION_DIGITS = 0x00000007;
  static const UNUM_FRACTION_DIGITS = 0x00000008;
  static const UNUM_MULTIPLIER = 0x00000009;
  static const UNUM_GROUPING_SIZE = 0x0000000a;
  static const UNUM_ROUNDING_MODE = 0x0000000b;
  static const UNUM_ROUNDING_INCREMENT = 0x0000000c;
  static const UNUM_FORMAT_WIDTH = 0x0000000d;
  static const UNUM_PADDING_POSITION = 0x0000000e;
  static const UNUM_SECONDARY_GROUPING_SIZE = 0x0000000f;
  static const UNUM_SIGNIFICANT_DIGITS_USED = 0x00000010;
  static const UNUM_MIN_SIGNIFICANT_DIGITS = 0x00000011;
  static const UNUM_MAX_SIGNIFICANT_DIGITS = 0x00000012;
  static const UNUM_LENIENT_PARSE = 0x00000013;
  static const UNUM_PARSE_ALL_INPUT = 0x00000014;
  static const UNUM_SCALE = 0x00000015;
  static const UNUM_MINIMUM_GROUPING_DIGITS = 0x00000016;
  static const UNUM_CURRENCY_USAGE = 0x00000017;
  static const UNUM_FORMAT_FAIL_IF_MORE_THAN_MAX_DIGITS = 0x00001000;
  static const UNUM_PARSE_NO_EXPONENT = 0x00001001;
  static const UNUM_PARSE_DECIMAL_MARK_REQUIRED = 0x00001002;
  static const UNUM_PARSE_CASE_SENSITIVE = 0x00001003;
  static const UNUM_SIGN_ALWAYS_SHOWN = 0x00001004;
}

/// {@category Enum}
class UNumberFormatAttributeValue {
  static const UNUM_FORMAT_ATTRIBUTE_VALUE_HIDDEN = 0x00000000;
}

/// {@category Enum}
class UNumberFormatFields {
  static const UNUM_INTEGER_FIELD = 0x00000000;
  static const UNUM_FRACTION_FIELD = 0x00000001;
  static const UNUM_DECIMAL_SEPARATOR_FIELD = 0x00000002;
  static const UNUM_EXPONENT_SYMBOL_FIELD = 0x00000003;
  static const UNUM_EXPONENT_SIGN_FIELD = 0x00000004;
  static const UNUM_EXPONENT_FIELD = 0x00000005;
  static const UNUM_GROUPING_SEPARATOR_FIELD = 0x00000006;
  static const UNUM_CURRENCY_FIELD = 0x00000007;
  static const UNUM_PERCENT_FIELD = 0x00000008;
  static const UNUM_PERMILL_FIELD = 0x00000009;
  static const UNUM_SIGN_FIELD = 0x0000000a;
  static const UNUM_MEASURE_UNIT_FIELD = 0x0000000b;
  static const UNUM_COMPACT_FIELD = 0x0000000c;
}

/// {@category Enum}
class UNumberFormatPadPosition {
  static const UNUM_PAD_BEFORE_PREFIX = 0x00000000;
  static const UNUM_PAD_AFTER_PREFIX = 0x00000001;
  static const UNUM_PAD_BEFORE_SUFFIX = 0x00000002;
  static const UNUM_PAD_AFTER_SUFFIX = 0x00000003;
}

/// {@category Enum}
class UNumberFormatRoundingMode {
  static const UNUM_ROUND_CEILING = 0x00000000;
  static const UNUM_ROUND_FLOOR = 0x00000001;
  static const UNUM_ROUND_DOWN = 0x00000002;
  static const UNUM_ROUND_UP = 0x00000003;
  static const UNUM_ROUND_HALFEVEN = 0x00000004;
  static const UNUM_ROUND_HALFDOWN = 0x00000005;
  static const UNUM_ROUND_HALFUP = 0x00000006;
  static const UNUM_ROUND_UNNECESSARY = 0x00000007;
}

/// {@category Enum}
class UNumberFormatStyle {
  static const UNUM_PATTERN_DECIMAL = 0x00000000;
  static const UNUM_DECIMAL = 0x00000001;
  static const UNUM_CURRENCY = 0x00000002;
  static const UNUM_PERCENT = 0x00000003;
  static const UNUM_SCIENTIFIC = 0x00000004;
  static const UNUM_SPELLOUT = 0x00000005;
  static const UNUM_ORDINAL = 0x00000006;
  static const UNUM_DURATION = 0x00000007;
  static const UNUM_NUMBERING_SYSTEM = 0x00000008;
  static const UNUM_PATTERN_RULEBASED = 0x00000009;
  static const UNUM_CURRENCY_ISO = 0x0000000a;
  static const UNUM_CURRENCY_PLURAL = 0x0000000b;
  static const UNUM_CURRENCY_ACCOUNTING = 0x0000000c;
  static const UNUM_CASH_CURRENCY = 0x0000000d;
  static const UNUM_DECIMAL_COMPACT_SHORT = 0x0000000e;
  static const UNUM_DECIMAL_COMPACT_LONG = 0x0000000f;
  static const UNUM_CURRENCY_STANDARD = 0x00000010;
  static const UNUM_DEFAULT = 0x00000001;
  static const UNUM_IGNORE = 0x00000000;
}

/// {@category Enum}
class UNumberFormatSymbol {
  static const UNUM_DECIMAL_SEPARATOR_SYMBOL = 0x00000000;
  static const UNUM_GROUPING_SEPARATOR_SYMBOL = 0x00000001;
  static const UNUM_PATTERN_SEPARATOR_SYMBOL = 0x00000002;
  static const UNUM_PERCENT_SYMBOL = 0x00000003;
  static const UNUM_ZERO_DIGIT_SYMBOL = 0x00000004;
  static const UNUM_DIGIT_SYMBOL = 0x00000005;
  static const UNUM_MINUS_SIGN_SYMBOL = 0x00000006;
  static const UNUM_PLUS_SIGN_SYMBOL = 0x00000007;
  static const UNUM_CURRENCY_SYMBOL = 0x00000008;
  static const UNUM_INTL_CURRENCY_SYMBOL = 0x00000009;
  static const UNUM_MONETARY_SEPARATOR_SYMBOL = 0x0000000a;
  static const UNUM_EXPONENTIAL_SYMBOL = 0x0000000b;
  static const UNUM_PERMILL_SYMBOL = 0x0000000c;
  static const UNUM_PAD_ESCAPE_SYMBOL = 0x0000000d;
  static const UNUM_INFINITY_SYMBOL = 0x0000000e;
  static const UNUM_NAN_SYMBOL = 0x0000000f;
  static const UNUM_SIGNIFICANT_DIGIT_SYMBOL = 0x00000010;
  static const UNUM_MONETARY_GROUPING_SEPARATOR_SYMBOL = 0x00000011;
  static const UNUM_ONE_DIGIT_SYMBOL = 0x00000012;
  static const UNUM_TWO_DIGIT_SYMBOL = 0x00000013;
  static const UNUM_THREE_DIGIT_SYMBOL = 0x00000014;
  static const UNUM_FOUR_DIGIT_SYMBOL = 0x00000015;
  static const UNUM_FIVE_DIGIT_SYMBOL = 0x00000016;
  static const UNUM_SIX_DIGIT_SYMBOL = 0x00000017;
  static const UNUM_SEVEN_DIGIT_SYMBOL = 0x00000018;
  static const UNUM_EIGHT_DIGIT_SYMBOL = 0x00000019;
  static const UNUM_NINE_DIGIT_SYMBOL = 0x0000001a;
  static const UNUM_EXPONENT_MULTIPLICATION_SYMBOL = 0x0000001b;
}

/// {@category Enum}
class UNumberFormatTextAttribute {
  static const UNUM_POSITIVE_PREFIX = 0x00000000;
  static const UNUM_POSITIVE_SUFFIX = 0x00000001;
  static const UNUM_NEGATIVE_PREFIX = 0x00000002;
  static const UNUM_NEGATIVE_SUFFIX = 0x00000003;
  static const UNUM_PADDING_CHARACTER = 0x00000004;
  static const UNUM_CURRENCY_CODE = 0x00000005;
  static const UNUM_DEFAULT_RULESET = 0x00000006;
  static const UNUM_PUBLIC_RULESETS = 0x00000007;
}

/// {@category Enum}
class UNumberGroupingStrategy {
  static const UNUM_GROUPING_OFF = 0x00000000;
  static const UNUM_GROUPING_MIN2 = 0x00000001;
  static const UNUM_GROUPING_AUTO = 0x00000002;
  static const UNUM_GROUPING_ON_ALIGNED = 0x00000003;
  static const UNUM_GROUPING_THOUSANDS = 0x00000004;
}

/// {@category Enum}
class UNumberRangeCollapse {
  static const UNUM_RANGE_COLLAPSE_AUTO = 0x00000000;
  static const UNUM_RANGE_COLLAPSE_NONE = 0x00000001;
  static const UNUM_RANGE_COLLAPSE_UNIT = 0x00000002;
  static const UNUM_RANGE_COLLAPSE_ALL = 0x00000003;
}

/// {@category Enum}
class UNumberRangeIdentityFallback {
  static const UNUM_IDENTITY_FALLBACK_SINGLE_VALUE = 0x00000000;
  static const UNUM_IDENTITY_FALLBACK_APPROXIMATELY_OR_SINGLE_VALUE =
      0x00000001;
  static const UNUM_IDENTITY_FALLBACK_APPROXIMATELY = 0x00000002;
  static const UNUM_IDENTITY_FALLBACK_RANGE = 0x00000003;
}

/// {@category Enum}
class UNumberRangeIdentityResult {
  static const UNUM_IDENTITY_RESULT_EQUAL_BEFORE_ROUNDING = 0x00000000;
  static const UNUM_IDENTITY_RESULT_EQUAL_AFTER_ROUNDING = 0x00000001;
  static const UNUM_IDENTITY_RESULT_NOT_EQUAL = 0x00000002;
}

/// {@category Enum}
class UNumberSignDisplay {
  static const UNUM_SIGN_AUTO = 0x00000000;
  static const UNUM_SIGN_ALWAYS = 0x00000001;
  static const UNUM_SIGN_NEVER = 0x00000002;
  static const UNUM_SIGN_ACCOUNTING = 0x00000003;
  static const UNUM_SIGN_ACCOUNTING_ALWAYS = 0x00000004;
  static const UNUM_SIGN_EXCEPT_ZERO = 0x00000005;
  static const UNUM_SIGN_ACCOUNTING_EXCEPT_ZERO = 0x00000006;
  static const UNUM_SIGN_COUNT = 0x00000007;
}

/// {@category Enum}
class UNumberUnitWidth {
  static const UNUM_UNIT_WIDTH_NARROW = 0x00000000;
  static const UNUM_UNIT_WIDTH_SHORT = 0x00000001;
  static const UNUM_UNIT_WIDTH_FULL_NAME = 0x00000002;
  static const UNUM_UNIT_WIDTH_ISO_CODE = 0x00000003;
  static const UNUM_UNIT_WIDTH_HIDDEN = 0x00000004;
  static const UNUM_UNIT_WIDTH_COUNT = 0x00000005;
}

/// {@category Enum}
class UNumericType {
  static const U_NT_NONE = 0x00000000;
  static const U_NT_DECIMAL = 0x00000001;
  static const U_NT_DIGIT = 0x00000002;
  static const U_NT_NUMERIC = 0x00000003;
}

/// {@category Enum}
class UPluralType {
  static const UPLURAL_TYPE_CARDINAL = 0x00000000;
  static const UPLURAL_TYPE_ORDINAL = 0x00000001;
}

/// {@category Enum}
class UProperty {
  static const UCHAR_ALPHABETIC = 0x00000000;
  static const UCHAR_BINARY_START = 0x00000000;
  static const UCHAR_ASCII_HEX_DIGIT = 0x00000001;
  static const UCHAR_BIDI_CONTROL = 0x00000002;
  static const UCHAR_BIDI_MIRRORED = 0x00000003;
  static const UCHAR_DASH = 0x00000004;
  static const UCHAR_DEFAULT_IGNORABLE_CODE_POINT = 0x00000005;
  static const UCHAR_DEPRECATED = 0x00000006;
  static const UCHAR_DIACRITIC = 0x00000007;
  static const UCHAR_EXTENDER = 0x00000008;
  static const UCHAR_FULL_COMPOSITION_EXCLUSION = 0x00000009;
  static const UCHAR_GRAPHEME_BASE = 0x0000000a;
  static const UCHAR_GRAPHEME_EXTEND = 0x0000000b;
  static const UCHAR_GRAPHEME_LINK = 0x0000000c;
  static const UCHAR_HEX_DIGIT = 0x0000000d;
  static const UCHAR_HYPHEN = 0x0000000e;
  static const UCHAR_ID_CONTINUE = 0x0000000f;
  static const UCHAR_ID_START = 0x00000010;
  static const UCHAR_IDEOGRAPHIC = 0x00000011;
  static const UCHAR_IDS_BINARY_OPERATOR = 0x00000012;
  static const UCHAR_IDS_TRINARY_OPERATOR = 0x00000013;
  static const UCHAR_JOIN_CONTROL = 0x00000014;
  static const UCHAR_LOGICAL_ORDER_EXCEPTION = 0x00000015;
  static const UCHAR_LOWERCASE = 0x00000016;
  static const UCHAR_MATH = 0x00000017;
  static const UCHAR_NONCHARACTER_CODE_POINT = 0x00000018;
  static const UCHAR_QUOTATION_MARK = 0x00000019;
  static const UCHAR_RADICAL = 0x0000001a;
  static const UCHAR_SOFT_DOTTED = 0x0000001b;
  static const UCHAR_TERMINAL_PUNCTUATION = 0x0000001c;
  static const UCHAR_UNIFIED_IDEOGRAPH = 0x0000001d;
  static const UCHAR_UPPERCASE = 0x0000001e;
  static const UCHAR_WHITE_SPACE = 0x0000001f;
  static const UCHAR_XID_CONTINUE = 0x00000020;
  static const UCHAR_XID_START = 0x00000021;
  static const UCHAR_CASE_SENSITIVE = 0x00000022;
  static const UCHAR_S_TERM = 0x00000023;
  static const UCHAR_VARIATION_SELECTOR = 0x00000024;
  static const UCHAR_NFD_INERT = 0x00000025;
  static const UCHAR_NFKD_INERT = 0x00000026;
  static const UCHAR_NFC_INERT = 0x00000027;
  static const UCHAR_NFKC_INERT = 0x00000028;
  static const UCHAR_SEGMENT_STARTER = 0x00000029;
  static const UCHAR_PATTERN_SYNTAX = 0x0000002a;
  static const UCHAR_PATTERN_WHITE_SPACE = 0x0000002b;
  static const UCHAR_POSIX_ALNUM = 0x0000002c;
  static const UCHAR_POSIX_BLANK = 0x0000002d;
  static const UCHAR_POSIX_GRAPH = 0x0000002e;
  static const UCHAR_POSIX_PRINT = 0x0000002f;
  static const UCHAR_POSIX_XDIGIT = 0x00000030;
  static const UCHAR_CASED = 0x00000031;
  static const UCHAR_CASE_IGNORABLE = 0x00000032;
  static const UCHAR_CHANGES_WHEN_LOWERCASED = 0x00000033;
  static const UCHAR_CHANGES_WHEN_UPPERCASED = 0x00000034;
  static const UCHAR_CHANGES_WHEN_TITLECASED = 0x00000035;
  static const UCHAR_CHANGES_WHEN_CASEFOLDED = 0x00000036;
  static const UCHAR_CHANGES_WHEN_CASEMAPPED = 0x00000037;
  static const UCHAR_CHANGES_WHEN_NFKC_CASEFOLDED = 0x00000038;
  static const UCHAR_EMOJI = 0x00000039;
  static const UCHAR_EMOJI_PRESENTATION = 0x0000003a;
  static const UCHAR_EMOJI_MODIFIER = 0x0000003b;
  static const UCHAR_EMOJI_MODIFIER_BASE = 0x0000003c;
  static const UCHAR_EMOJI_COMPONENT = 0x0000003d;
  static const UCHAR_REGIONAL_INDICATOR = 0x0000003e;
  static const UCHAR_PREPENDED_CONCATENATION_MARK = 0x0000003f;
  static const UCHAR_EXTENDED_PICTOGRAPHIC = 0x00000040;
  static const UCHAR_BIDI_CLASS = 0x00001000;
  static const UCHAR_INT_START = 0x00001000;
  static const UCHAR_BLOCK = 0x00001001;
  static const UCHAR_CANONICAL_COMBINING_CLASS = 0x00001002;
  static const UCHAR_DECOMPOSITION_TYPE = 0x00001003;
  static const UCHAR_EAST_ASIAN_WIDTH = 0x00001004;
  static const UCHAR_GENERAL_CATEGORY = 0x00001005;
  static const UCHAR_JOINING_GROUP = 0x00001006;
  static const UCHAR_JOINING_TYPE = 0x00001007;
  static const UCHAR_LINE_BREAK = 0x00001008;
  static const UCHAR_NUMERIC_TYPE = 0x00001009;
  static const UCHAR_SCRIPT = 0x0000100a;
  static const UCHAR_HANGUL_SYLLABLE_TYPE = 0x0000100b;
  static const UCHAR_NFD_QUICK_CHECK = 0x0000100c;
  static const UCHAR_NFKD_QUICK_CHECK = 0x0000100d;
  static const UCHAR_NFC_QUICK_CHECK = 0x0000100e;
  static const UCHAR_NFKC_QUICK_CHECK = 0x0000100f;
  static const UCHAR_LEAD_CANONICAL_COMBINING_CLASS = 0x00001010;
  static const UCHAR_TRAIL_CANONICAL_COMBINING_CLASS = 0x00001011;
  static const UCHAR_GRAPHEME_CLUSTER_BREAK = 0x00001012;
  static const UCHAR_SENTENCE_BREAK = 0x00001013;
  static const UCHAR_WORD_BREAK = 0x00001014;
  static const UCHAR_BIDI_PAIRED_BRACKET_TYPE = 0x00001015;
  static const UCHAR_INDIC_POSITIONAL_CATEGORY = 0x00001016;
  static const UCHAR_INDIC_SYLLABIC_CATEGORY = 0x00001017;
  static const UCHAR_VERTICAL_ORIENTATION = 0x00001018;
  static const UCHAR_GENERAL_CATEGORY_MASK = 0x00002000;
  static const UCHAR_MASK_START = 0x00002000;
  static const UCHAR_NUMERIC_VALUE = 0x00003000;
  static const UCHAR_DOUBLE_START = 0x00003000;
  static const UCHAR_AGE = 0x00004000;
  static const UCHAR_STRING_START = 0x00004000;
  static const UCHAR_BIDI_MIRRORING_GLYPH = 0x00004001;
  static const UCHAR_CASE_FOLDING = 0x00004002;
  static const UCHAR_LOWERCASE_MAPPING = 0x00004004;
  static const UCHAR_NAME = 0x00004005;
  static const UCHAR_SIMPLE_CASE_FOLDING = 0x00004006;
  static const UCHAR_SIMPLE_LOWERCASE_MAPPING = 0x00004007;
  static const UCHAR_SIMPLE_TITLECASE_MAPPING = 0x00004008;
  static const UCHAR_SIMPLE_UPPERCASE_MAPPING = 0x00004009;
  static const UCHAR_TITLECASE_MAPPING = 0x0000400a;
  static const UCHAR_UPPERCASE_MAPPING = 0x0000400c;
  static const UCHAR_BIDI_PAIRED_BRACKET = 0x0000400d;
  static const UCHAR_SCRIPT_EXTENSIONS = 0x00007000;
  static const UCHAR_OTHER_PROPERTY_START = 0x00007000;
  static const UCHAR_INVALID_CODE = 0xffffffff;
}

/// {@category Enum}
class UPropertyNameChoice {
  static const U_SHORT_PROPERTY_NAME = 0x00000000;
  static const U_LONG_PROPERTY_NAME = 0x00000001;
}

/// {@category Enum}
class URegexpFlag {
  static const UREGEX_CASE_INSENSITIVE = 0x00000002;
  static const UREGEX_COMMENTS = 0x00000004;
  static const UREGEX_DOTALL = 0x00000020;
  static const UREGEX_LITERAL = 0x00000010;
  static const UREGEX_MULTILINE = 0x00000008;
  static const UREGEX_UNIX_LINES = 0x00000001;
  static const UREGEX_UWORD = 0x00000100;
  static const UREGEX_ERROR_ON_UNKNOWN_ESCAPES = 0x00000200;
}

/// {@category Enum}
class URegionType {
  static const URGN_UNKNOWN = 0x00000000;
  static const URGN_TERRITORY = 0x00000001;
  static const URGN_WORLD = 0x00000002;
  static const URGN_CONTINENT = 0x00000003;
  static const URGN_SUBCONTINENT = 0x00000004;
  static const URGN_GROUPING = 0x00000005;
  static const URGN_DEPRECATED = 0x00000006;
}

/// {@category Enum}
class URelativeDateTimeFormatterField {
  static const UDAT_REL_LITERAL_FIELD = 0x00000000;
  static const UDAT_REL_NUMERIC_FIELD = 0x00000001;
}

/// {@category Enum}
class URelativeDateTimeUnit {
  static const UDAT_REL_UNIT_YEAR = 0x00000000;
  static const UDAT_REL_UNIT_QUARTER = 0x00000001;
  static const UDAT_REL_UNIT_MONTH = 0x00000002;
  static const UDAT_REL_UNIT_WEEK = 0x00000003;
  static const UDAT_REL_UNIT_DAY = 0x00000004;
  static const UDAT_REL_UNIT_HOUR = 0x00000005;
  static const UDAT_REL_UNIT_MINUTE = 0x00000006;
  static const UDAT_REL_UNIT_SECOND = 0x00000007;
  static const UDAT_REL_UNIT_SUNDAY = 0x00000008;
  static const UDAT_REL_UNIT_MONDAY = 0x00000009;
  static const UDAT_REL_UNIT_TUESDAY = 0x0000000a;
  static const UDAT_REL_UNIT_WEDNESDAY = 0x0000000b;
  static const UDAT_REL_UNIT_THURSDAY = 0x0000000c;
  static const UDAT_REL_UNIT_FRIDAY = 0x0000000d;
  static const UDAT_REL_UNIT_SATURDAY = 0x0000000e;
}

/// {@category Enum}
class UResType {
  static const URES_NONE = 0xffffffff;
  static const URES_STRING = 0x00000000;
  static const URES_BINARY = 0x00000001;
  static const URES_TABLE = 0x00000002;
  static const URES_ALIAS = 0x00000003;
  static const URES_INT = 0x00000007;
  static const URES_ARRAY = 0x00000008;
  static const URES_INT_VECTOR = 0x0000000e;
}

/// {@category Enum}
class URestrictionLevel {
  static const USPOOF_ASCII = 0x10000000;
  static const USPOOF_SINGLE_SCRIPT_RESTRICTIVE = 0x20000000;
  static const USPOOF_HIGHLY_RESTRICTIVE = 0x30000000;
  static const USPOOF_MODERATELY_RESTRICTIVE = 0x40000000;
  static const USPOOF_MINIMALLY_RESTRICTIVE = 0x50000000;
  static const USPOOF_UNRESTRICTIVE = 0x60000000;
  static const USPOOF_RESTRICTION_LEVEL_MASK = 0x7f000000;
}

/// {@category Enum}
class UScriptCode {
  static const USCRIPT_INVALID_CODE = 0xffffffff;
  static const USCRIPT_COMMON = 0x00000000;
  static const USCRIPT_INHERITED = 0x00000001;
  static const USCRIPT_ARABIC = 0x00000002;
  static const USCRIPT_ARMENIAN = 0x00000003;
  static const USCRIPT_BENGALI = 0x00000004;
  static const USCRIPT_BOPOMOFO = 0x00000005;
  static const USCRIPT_CHEROKEE = 0x00000006;
  static const USCRIPT_COPTIC = 0x00000007;
  static const USCRIPT_CYRILLIC = 0x00000008;
  static const USCRIPT_DESERET = 0x00000009;
  static const USCRIPT_DEVANAGARI = 0x0000000a;
  static const USCRIPT_ETHIOPIC = 0x0000000b;
  static const USCRIPT_GEORGIAN = 0x0000000c;
  static const USCRIPT_GOTHIC = 0x0000000d;
  static const USCRIPT_GREEK = 0x0000000e;
  static const USCRIPT_GUJARATI = 0x0000000f;
  static const USCRIPT_GURMUKHI = 0x00000010;
  static const USCRIPT_HAN = 0x00000011;
  static const USCRIPT_HANGUL = 0x00000012;
  static const USCRIPT_HEBREW = 0x00000013;
  static const USCRIPT_HIRAGANA = 0x00000014;
  static const USCRIPT_KANNADA = 0x00000015;
  static const USCRIPT_KATAKANA = 0x00000016;
  static const USCRIPT_KHMER = 0x00000017;
  static const USCRIPT_LAO = 0x00000018;
  static const USCRIPT_LATIN = 0x00000019;
  static const USCRIPT_MALAYALAM = 0x0000001a;
  static const USCRIPT_MONGOLIAN = 0x0000001b;
  static const USCRIPT_MYANMAR = 0x0000001c;
  static const USCRIPT_OGHAM = 0x0000001d;
  static const USCRIPT_OLD_ITALIC = 0x0000001e;
  static const USCRIPT_ORIYA = 0x0000001f;
  static const USCRIPT_RUNIC = 0x00000020;
  static const USCRIPT_SINHALA = 0x00000021;
  static const USCRIPT_SYRIAC = 0x00000022;
  static const USCRIPT_TAMIL = 0x00000023;
  static const USCRIPT_TELUGU = 0x00000024;
  static const USCRIPT_THAANA = 0x00000025;
  static const USCRIPT_THAI = 0x00000026;
  static const USCRIPT_TIBETAN = 0x00000027;
  static const USCRIPT_CANADIAN_ABORIGINAL = 0x00000028;
  static const USCRIPT_UCAS = 0x00000028;
  static const USCRIPT_YI = 0x00000029;
  static const USCRIPT_TAGALOG = 0x0000002a;
  static const USCRIPT_HANUNOO = 0x0000002b;
  static const USCRIPT_BUHID = 0x0000002c;
  static const USCRIPT_TAGBANWA = 0x0000002d;
  static const USCRIPT_BRAILLE = 0x0000002e;
  static const USCRIPT_CYPRIOT = 0x0000002f;
  static const USCRIPT_LIMBU = 0x00000030;
  static const USCRIPT_LINEAR_B = 0x00000031;
  static const USCRIPT_OSMANYA = 0x00000032;
  static const USCRIPT_SHAVIAN = 0x00000033;
  static const USCRIPT_TAI_LE = 0x00000034;
  static const USCRIPT_UGARITIC = 0x00000035;
  static const USCRIPT_KATAKANA_OR_HIRAGANA = 0x00000036;
  static const USCRIPT_BUGINESE = 0x00000037;
  static const USCRIPT_GLAGOLITIC = 0x00000038;
  static const USCRIPT_KHAROSHTHI = 0x00000039;
  static const USCRIPT_SYLOTI_NAGRI = 0x0000003a;
  static const USCRIPT_NEW_TAI_LUE = 0x0000003b;
  static const USCRIPT_TIFINAGH = 0x0000003c;
  static const USCRIPT_OLD_PERSIAN = 0x0000003d;
  static const USCRIPT_BALINESE = 0x0000003e;
  static const USCRIPT_BATAK = 0x0000003f;
  static const USCRIPT_BLISSYMBOLS = 0x00000040;
  static const USCRIPT_BRAHMI = 0x00000041;
  static const USCRIPT_CHAM = 0x00000042;
  static const USCRIPT_CIRTH = 0x00000043;
  static const USCRIPT_OLD_CHURCH_SLAVONIC_CYRILLIC = 0x00000044;
  static const USCRIPT_DEMOTIC_EGYPTIAN = 0x00000045;
  static const USCRIPT_HIERATIC_EGYPTIAN = 0x00000046;
  static const USCRIPT_EGYPTIAN_HIEROGLYPHS = 0x00000047;
  static const USCRIPT_KHUTSURI = 0x00000048;
  static const USCRIPT_SIMPLIFIED_HAN = 0x00000049;
  static const USCRIPT_TRADITIONAL_HAN = 0x0000004a;
  static const USCRIPT_PAHAWH_HMONG = 0x0000004b;
  static const USCRIPT_OLD_HUNGARIAN = 0x0000004c;
  static const USCRIPT_HARAPPAN_INDUS = 0x0000004d;
  static const USCRIPT_JAVANESE = 0x0000004e;
  static const USCRIPT_KAYAH_LI = 0x0000004f;
  static const USCRIPT_LATIN_FRAKTUR = 0x00000050;
  static const USCRIPT_LATIN_GAELIC = 0x00000051;
  static const USCRIPT_LEPCHA = 0x00000052;
  static const USCRIPT_LINEAR_A = 0x00000053;
  static const USCRIPT_MANDAIC = 0x00000054;
  static const USCRIPT_MANDAEAN = 0x00000054;
  static const USCRIPT_MAYAN_HIEROGLYPHS = 0x00000055;
  static const USCRIPT_MEROITIC_HIEROGLYPHS = 0x00000056;
  static const USCRIPT_MEROITIC = 0x00000056;
  static const USCRIPT_NKO = 0x00000057;
  static const USCRIPT_ORKHON = 0x00000058;
  static const USCRIPT_OLD_PERMIC = 0x00000059;
  static const USCRIPT_PHAGS_PA = 0x0000005a;
  static const USCRIPT_PHOENICIAN = 0x0000005b;
  static const USCRIPT_MIAO = 0x0000005c;
  static const USCRIPT_PHONETIC_POLLARD = 0x0000005c;
  static const USCRIPT_RONGORONGO = 0x0000005d;
  static const USCRIPT_SARATI = 0x0000005e;
  static const USCRIPT_ESTRANGELO_SYRIAC = 0x0000005f;
  static const USCRIPT_WESTERN_SYRIAC = 0x00000060;
  static const USCRIPT_EASTERN_SYRIAC = 0x00000061;
  static const USCRIPT_TENGWAR = 0x00000062;
  static const USCRIPT_VAI = 0x00000063;
  static const USCRIPT_VISIBLE_SPEECH = 0x00000064;
  static const USCRIPT_CUNEIFORM = 0x00000065;
  static const USCRIPT_UNWRITTEN_LANGUAGES = 0x00000066;
  static const USCRIPT_UNKNOWN = 0x00000067;
  static const USCRIPT_CARIAN = 0x00000068;
  static const USCRIPT_JAPANESE = 0x00000069;
  static const USCRIPT_LANNA = 0x0000006a;
  static const USCRIPT_LYCIAN = 0x0000006b;
  static const USCRIPT_LYDIAN = 0x0000006c;
  static const USCRIPT_OL_CHIKI = 0x0000006d;
  static const USCRIPT_REJANG = 0x0000006e;
  static const USCRIPT_SAURASHTRA = 0x0000006f;
  static const USCRIPT_SIGN_WRITING = 0x00000070;
  static const USCRIPT_SUNDANESE = 0x00000071;
  static const USCRIPT_MOON = 0x00000072;
  static const USCRIPT_MEITEI_MAYEK = 0x00000073;
  static const USCRIPT_IMPERIAL_ARAMAIC = 0x00000074;
  static const USCRIPT_AVESTAN = 0x00000075;
  static const USCRIPT_CHAKMA = 0x00000076;
  static const USCRIPT_KOREAN = 0x00000077;
  static const USCRIPT_KAITHI = 0x00000078;
  static const USCRIPT_MANICHAEAN = 0x00000079;
  static const USCRIPT_INSCRIPTIONAL_PAHLAVI = 0x0000007a;
  static const USCRIPT_PSALTER_PAHLAVI = 0x0000007b;
  static const USCRIPT_BOOK_PAHLAVI = 0x0000007c;
  static const USCRIPT_INSCRIPTIONAL_PARTHIAN = 0x0000007d;
  static const USCRIPT_SAMARITAN = 0x0000007e;
  static const USCRIPT_TAI_VIET = 0x0000007f;
  static const USCRIPT_MATHEMATICAL_NOTATION = 0x00000080;
  static const USCRIPT_SYMBOLS = 0x00000081;
  static const USCRIPT_BAMUM = 0x00000082;
  static const USCRIPT_LISU = 0x00000083;
  static const USCRIPT_NAKHI_GEBA = 0x00000084;
  static const USCRIPT_OLD_SOUTH_ARABIAN = 0x00000085;
  static const USCRIPT_BASSA_VAH = 0x00000086;
  static const USCRIPT_DUPLOYAN = 0x00000087;
  static const USCRIPT_ELBASAN = 0x00000088;
  static const USCRIPT_GRANTHA = 0x00000089;
  static const USCRIPT_KPELLE = 0x0000008a;
  static const USCRIPT_LOMA = 0x0000008b;
  static const USCRIPT_MENDE = 0x0000008c;
  static const USCRIPT_MEROITIC_CURSIVE = 0x0000008d;
  static const USCRIPT_OLD_NORTH_ARABIAN = 0x0000008e;
  static const USCRIPT_NABATAEAN = 0x0000008f;
  static const USCRIPT_PALMYRENE = 0x00000090;
  static const USCRIPT_KHUDAWADI = 0x00000091;
  static const USCRIPT_SINDHI = 0x00000091;
  static const USCRIPT_WARANG_CITI = 0x00000092;
  static const USCRIPT_AFAKA = 0x00000093;
  static const USCRIPT_JURCHEN = 0x00000094;
  static const USCRIPT_MRO = 0x00000095;
  static const USCRIPT_NUSHU = 0x00000096;
  static const USCRIPT_SHARADA = 0x00000097;
  static const USCRIPT_SORA_SOMPENG = 0x00000098;
  static const USCRIPT_TAKRI = 0x00000099;
  static const USCRIPT_TANGUT = 0x0000009a;
  static const USCRIPT_WOLEAI = 0x0000009b;
  static const USCRIPT_ANATOLIAN_HIEROGLYPHS = 0x0000009c;
  static const USCRIPT_KHOJKI = 0x0000009d;
  static const USCRIPT_TIRHUTA = 0x0000009e;
  static const USCRIPT_CAUCASIAN_ALBANIAN = 0x0000009f;
  static const USCRIPT_MAHAJANI = 0x000000a0;
  static const USCRIPT_AHOM = 0x000000a1;
  static const USCRIPT_HATRAN = 0x000000a2;
  static const USCRIPT_MODI = 0x000000a3;
  static const USCRIPT_MULTANI = 0x000000a4;
  static const USCRIPT_PAU_CIN_HAU = 0x000000a5;
  static const USCRIPT_SIDDHAM = 0x000000a6;
  static const USCRIPT_ADLAM = 0x000000a7;
  static const USCRIPT_BHAIKSUKI = 0x000000a8;
  static const USCRIPT_MARCHEN = 0x000000a9;
  static const USCRIPT_NEWA = 0x000000aa;
  static const USCRIPT_OSAGE = 0x000000ab;
  static const USCRIPT_HAN_WITH_BOPOMOFO = 0x000000ac;
  static const USCRIPT_JAMO = 0x000000ad;
  static const USCRIPT_SYMBOLS_EMOJI = 0x000000ae;
  static const USCRIPT_MASARAM_GONDI = 0x000000af;
  static const USCRIPT_SOYOMBO = 0x000000b0;
  static const USCRIPT_ZANABAZAR_SQUARE = 0x000000b1;
  static const USCRIPT_DOGRA = 0x000000b2;
  static const USCRIPT_GUNJALA_GONDI = 0x000000b3;
  static const USCRIPT_MAKASAR = 0x000000b4;
  static const USCRIPT_MEDEFAIDRIN = 0x000000b5;
  static const USCRIPT_HANIFI_ROHINGYA = 0x000000b6;
  static const USCRIPT_SOGDIAN = 0x000000b7;
  static const USCRIPT_OLD_SOGDIAN = 0x000000b8;
  static const USCRIPT_ELYMAIC = 0x000000b9;
  static const USCRIPT_NYIAKENG_PUACHUE_HMONG = 0x000000ba;
  static const USCRIPT_NANDINAGARI = 0x000000bb;
  static const USCRIPT_WANCHO = 0x000000bc;
  static const USCRIPT_CHORASMIAN = 0x000000bd;
  static const USCRIPT_DIVES_AKURU = 0x000000be;
  static const USCRIPT_KHITAN_SMALL_SCRIPT = 0x000000bf;
  static const USCRIPT_YEZIDI = 0x000000c0;
}

/// {@category Enum}
class UScriptUsage {
  static const USCRIPT_USAGE_NOT_ENCODED = 0x00000000;
  static const USCRIPT_USAGE_UNKNOWN = 0x00000001;
  static const USCRIPT_USAGE_EXCLUDED = 0x00000002;
  static const USCRIPT_USAGE_LIMITED_USE = 0x00000003;
  static const USCRIPT_USAGE_ASPIRATIONAL = 0x00000004;
  static const USCRIPT_USAGE_RECOMMENDED = 0x00000005;
}

/// {@category Enum}
class USearchAttribute {
  static const USEARCH_OVERLAP = 0x00000000;
  static const USEARCH_ELEMENT_COMPARISON = 0x00000002;
}

/// {@category Enum}
class USearchAttributeValue {
  static const USEARCH_DEFAULT = 0xffffffff;
  static const USEARCH_OFF = 0x00000000;
  static const USEARCH_ON = 0x00000001;
  static const USEARCH_STANDARD_ELEMENT_COMPARISON = 0x00000002;
  static const USEARCH_PATTERN_BASE_WEIGHT_IS_WILDCARD = 0x00000003;
  static const USEARCH_ANY_BASE_WEIGHT_IS_WILDCARD = 0x00000004;
}

/// {@category Enum}
class USentenceBreak {
  static const U_SB_OTHER = 0x00000000;
  static const U_SB_ATERM = 0x00000001;
  static const U_SB_CLOSE = 0x00000002;
  static const U_SB_FORMAT = 0x00000003;
  static const U_SB_LOWER = 0x00000004;
  static const U_SB_NUMERIC = 0x00000005;
  static const U_SB_OLETTER = 0x00000006;
  static const U_SB_SEP = 0x00000007;
  static const U_SB_SP = 0x00000008;
  static const U_SB_STERM = 0x00000009;
  static const U_SB_UPPER = 0x0000000a;
  static const U_SB_CR = 0x0000000b;
  static const U_SB_EXTEND = 0x0000000c;
  static const U_SB_LF = 0x0000000d;
  static const U_SB_SCONTINUE = 0x0000000e;
}

/// {@category Enum}
class USentenceBreakTag {
  static const UBRK_SENTENCE_TERM = 0x00000000;
  static const UBRK_SENTENCE_TERM_LIMIT = 0x00000064;
  static const UBRK_SENTENCE_SEP = 0x00000064;
  static const UBRK_SENTENCE_SEP_LIMIT = 0x000000c8;
}

/// {@category Enum}
class USetSpanCondition {
  static const USET_SPAN_NOT_CONTAINED = 0x00000000;
  static const USET_SPAN_CONTAINED = 0x00000001;
  static const USET_SPAN_SIMPLE = 0x00000002;
}

/// {@category Enum}
class USpoofChecks {
  static const USPOOF_SINGLE_SCRIPT_CONFUSABLE = 0x00000001;
  static const USPOOF_MIXED_SCRIPT_CONFUSABLE = 0x00000002;
  static const USPOOF_WHOLE_SCRIPT_CONFUSABLE = 0x00000004;
  static const USPOOF_CONFUSABLE = 0x00000007;
  static const USPOOF_RESTRICTION_LEVEL = 0x00000010;
  static const USPOOF_INVISIBLE = 0x00000020;
  static const USPOOF_CHAR_LIMIT = 0x00000040;
  static const USPOOF_MIXED_NUMBERS = 0x00000080;
  static const USPOOF_HIDDEN_OVERLAY = 0x00000100;
  static const USPOOF_ALL_CHECKS = 0x0000ffff;
  static const USPOOF_AUX_INFO = 0x40000000;
}

/// {@category Enum}
class UStringPrepProfileType {
  static const USPREP_RFC3491_NAMEPREP = 0x00000000;
  static const USPREP_RFC3530_NFS4_CS_PREP = 0x00000001;
  static const USPREP_RFC3530_NFS4_CS_PREP_CI = 0x00000002;
  static const USPREP_RFC3530_NFS4_CIS_PREP = 0x00000003;
  static const USPREP_RFC3530_NFS4_MIXED_PREP_PREFIX = 0x00000004;
  static const USPREP_RFC3530_NFS4_MIXED_PREP_SUFFIX = 0x00000005;
  static const USPREP_RFC3722_ISCSI = 0x00000006;
  static const USPREP_RFC3920_NODEPREP = 0x00000007;
  static const USPREP_RFC3920_RESOURCEPREP = 0x00000008;
  static const USPREP_RFC4011_MIB = 0x00000009;
  static const USPREP_RFC4013_SASLPREP = 0x0000000a;
  static const USPREP_RFC4505_TRACE = 0x0000000b;
  static const USPREP_RFC4518_LDAP = 0x0000000c;
  static const USPREP_RFC4518_LDAP_CI = 0x0000000d;
}

/// {@category Enum}
class UStringTrieBuildOption {
  static const USTRINGTRIE_BUILD_FAST = 0x00000000;
  static const USTRINGTRIE_BUILD_SMALL = 0x00000001;
}

/// {@category Enum}
class UStringTrieResult {
  static const USTRINGTRIE_NO_MATCH = 0x00000000;
  static const USTRINGTRIE_NO_VALUE = 0x00000001;
  static const USTRINGTRIE_FINAL_VALUE = 0x00000002;
  static const USTRINGTRIE_INTERMEDIATE_VALUE = 0x00000003;
}

/// {@category Enum}
class USystemTimeZoneType {
  static const UCAL_ZONE_TYPE_ANY = 0x00000000;
  static const UCAL_ZONE_TYPE_CANONICAL = 0x00000001;
  static const UCAL_ZONE_TYPE_CANONICAL_LOCATION = 0x00000002;
}

/// {@category Enum}
class UTimeScaleValue {
  static const UTSV_UNITS_VALUE = 0x00000000;
  static const UTSV_EPOCH_OFFSET_VALUE = 0x00000001;
  static const UTSV_FROM_MIN_VALUE = 0x00000002;
  static const UTSV_FROM_MAX_VALUE = 0x00000003;
  static const UTSV_TO_MIN_VALUE = 0x00000004;
  static const UTSV_TO_MAX_VALUE = 0x00000005;
}

/// {@category Enum}
class UTimeZoneFormatGMTOffsetPatternType {
  static const UTZFMT_PAT_POSITIVE_HM = 0x00000000;
  static const UTZFMT_PAT_POSITIVE_HMS = 0x00000001;
  static const UTZFMT_PAT_NEGATIVE_HM = 0x00000002;
  static const UTZFMT_PAT_NEGATIVE_HMS = 0x00000003;
  static const UTZFMT_PAT_POSITIVE_H = 0x00000004;
  static const UTZFMT_PAT_NEGATIVE_H = 0x00000005;
  static const UTZFMT_PAT_COUNT = 0x00000006;
}

/// {@category Enum}
class UTimeZoneFormatParseOption {
  static const UTZFMT_PARSE_OPTION_NONE = 0x00000000;
  static const UTZFMT_PARSE_OPTION_ALL_STYLES = 0x00000001;
  static const UTZFMT_PARSE_OPTION_TZ_DATABASE_ABBREVIATIONS = 0x00000002;
}

/// {@category Enum}
class UTimeZoneFormatStyle {
  static const UTZFMT_STYLE_GENERIC_LOCATION = 0x00000000;
  static const UTZFMT_STYLE_GENERIC_LONG = 0x00000001;
  static const UTZFMT_STYLE_GENERIC_SHORT = 0x00000002;
  static const UTZFMT_STYLE_SPECIFIC_LONG = 0x00000003;
  static const UTZFMT_STYLE_SPECIFIC_SHORT = 0x00000004;
  static const UTZFMT_STYLE_LOCALIZED_GMT = 0x00000005;
  static const UTZFMT_STYLE_LOCALIZED_GMT_SHORT = 0x00000006;
  static const UTZFMT_STYLE_ISO_BASIC_SHORT = 0x00000007;
  static const UTZFMT_STYLE_ISO_BASIC_LOCAL_SHORT = 0x00000008;
  static const UTZFMT_STYLE_ISO_BASIC_FIXED = 0x00000009;
  static const UTZFMT_STYLE_ISO_BASIC_LOCAL_FIXED = 0x0000000a;
  static const UTZFMT_STYLE_ISO_BASIC_FULL = 0x0000000b;
  static const UTZFMT_STYLE_ISO_BASIC_LOCAL_FULL = 0x0000000c;
  static const UTZFMT_STYLE_ISO_EXTENDED_FIXED = 0x0000000d;
  static const UTZFMT_STYLE_ISO_EXTENDED_LOCAL_FIXED = 0x0000000e;
  static const UTZFMT_STYLE_ISO_EXTENDED_FULL = 0x0000000f;
  static const UTZFMT_STYLE_ISO_EXTENDED_LOCAL_FULL = 0x00000010;
  static const UTZFMT_STYLE_ZONE_ID = 0x00000011;
  static const UTZFMT_STYLE_ZONE_ID_SHORT = 0x00000012;
  static const UTZFMT_STYLE_EXEMPLAR_LOCATION = 0x00000013;
}

/// {@category Enum}
class UTimeZoneFormatTimeType {
  static const UTZFMT_TIME_TYPE_UNKNOWN = 0x00000000;
  static const UTZFMT_TIME_TYPE_STANDARD = 0x00000001;
  static const UTZFMT_TIME_TYPE_DAYLIGHT = 0x00000002;
}

/// {@category Enum}
class UTimeZoneNameType {
  static const UTZNM_UNKNOWN = 0x00000000;
  static const UTZNM_LONG_GENERIC = 0x00000001;
  static const UTZNM_LONG_STANDARD = 0x00000002;
  static const UTZNM_LONG_DAYLIGHT = 0x00000004;
  static const UTZNM_SHORT_GENERIC = 0x00000008;
  static const UTZNM_SHORT_STANDARD = 0x00000010;
  static const UTZNM_SHORT_DAYLIGHT = 0x00000020;
  static const UTZNM_EXEMPLAR_LOCATION = 0x00000040;
}

/// {@category Enum}
class UTimeZoneTransitionType {
  static const UCAL_TZ_TRANSITION_NEXT = 0x00000000;
  static const UCAL_TZ_TRANSITION_NEXT_INCLUSIVE = 0x00000001;
  static const UCAL_TZ_TRANSITION_PREVIOUS = 0x00000002;
  static const UCAL_TZ_TRANSITION_PREVIOUS_INCLUSIVE = 0x00000003;
}

/// {@category Enum}
class UTraceFunctionNumber {
  static const UTRACE_FUNCTION_START = 0x00000000;
  static const UTRACE_U_INIT = 0x00000000;
  static const UTRACE_U_CLEANUP = 0x00000001;
  static const UTRACE_CONVERSION_START = 0x00001000;
  static const UTRACE_UCNV_OPEN = 0x00001000;
  static const UTRACE_UCNV_OPEN_PACKAGE = 0x00001001;
  static const UTRACE_UCNV_OPEN_ALGORITHMIC = 0x00001002;
  static const UTRACE_UCNV_CLONE = 0x00001003;
  static const UTRACE_UCNV_CLOSE = 0x00001004;
  static const UTRACE_UCNV_FLUSH_CACHE = 0x00001005;
  static const UTRACE_UCNV_LOAD = 0x00001006;
  static const UTRACE_UCNV_UNLOAD = 0x00001007;
  static const UTRACE_COLLATION_START = 0x00002000;
  static const UTRACE_UCOL_OPEN = 0x00002000;
  static const UTRACE_UCOL_CLOSE = 0x00002001;
  static const UTRACE_UCOL_STRCOLL = 0x00002002;
  static const UTRACE_UCOL_GET_SORTKEY = 0x00002003;
  static const UTRACE_UCOL_GETLOCALE = 0x00002004;
  static const UTRACE_UCOL_NEXTSORTKEYPART = 0x00002005;
  static const UTRACE_UCOL_STRCOLLITER = 0x00002006;
  static const UTRACE_UCOL_OPEN_FROM_SHORT_STRING = 0x00002007;
  static const UTRACE_UCOL_STRCOLLUTF8 = 0x00002008;
  static const UTRACE_UDATA_START = 0x00003000;
  static const UTRACE_UDATA_RESOURCE = 0x00003000;
  static const UTRACE_UDATA_BUNDLE = 0x00003001;
  static const UTRACE_UDATA_DATA_FILE = 0x00003002;
  static const UTRACE_UDATA_RES_FILE = 0x00003003;
}

/// {@category Enum}
class UTraceLevel {
  static const UTRACE_OFF = 0xffffffff;
  static const UTRACE_ERROR = 0x00000000;
  static const UTRACE_WARNING = 0x00000003;
  static const UTRACE_OPEN_CLOSE = 0x00000005;
  static const UTRACE_INFO = 0x00000007;
  static const UTRACE_VERBOSE = 0x00000009;
}

/// {@category Enum}
class UTransDirection {
  static const UTRANS_FORWARD = 0x00000000;
  static const UTRANS_REVERSE = 0x00000001;
}

/// {@category Enum}
class UVerticalOrientation {
  static const U_VO_ROTATED = 0x00000000;
  static const U_VO_TRANSFORMED_ROTATED = 0x00000001;
  static const U_VO_TRANSFORMED_UPRIGHT = 0x00000002;
  static const U_VO_UPRIGHT = 0x00000003;
}

/// {@category Enum}
class UWordBreak {
  static const UBRK_WORD_NONE = 0x00000000;
  static const UBRK_WORD_NONE_LIMIT = 0x00000064;
  static const UBRK_WORD_NUMBER = 0x00000064;
  static const UBRK_WORD_NUMBER_LIMIT = 0x000000c8;
  static const UBRK_WORD_LETTER = 0x000000c8;
  static const UBRK_WORD_LETTER_LIMIT = 0x0000012c;
  static const UBRK_WORD_KANA = 0x0000012c;
  static const UBRK_WORD_KANA_LIMIT = 0x00000190;
  static const UBRK_WORD_IDEO = 0x00000190;
  static const UBRK_WORD_IDEO_LIMIT = 0x000001f4;
}

/// {@category Enum}
class UWordBreakValues {
  static const U_WB_OTHER = 0x00000000;
  static const U_WB_ALETTER = 0x00000001;
  static const U_WB_FORMAT = 0x00000002;
  static const U_WB_KATAKANA = 0x00000003;
  static const U_WB_MIDLETTER = 0x00000004;
  static const U_WB_MIDNUM = 0x00000005;
  static const U_WB_NUMERIC = 0x00000006;
  static const U_WB_EXTENDNUMLET = 0x00000007;
  static const U_WB_CR = 0x00000008;
  static const U_WB_EXTEND = 0x00000009;
  static const U_WB_LF = 0x0000000a;
  static const U_WB_MIDNUMLET = 0x0000000b;
  static const U_WB_NEWLINE = 0x0000000c;
  static const U_WB_REGIONAL_INDICATOR = 0x0000000d;
  static const U_WB_HEBREW_LETTER = 0x0000000e;
  static const U_WB_SINGLE_QUOTE = 0x0000000f;
  static const U_WB_DOUBLE_QUOTE = 0x00000010;
  static const U_WB_E_BASE = 0x00000011;
  static const U_WB_E_BASE_GAZ = 0x00000012;
  static const U_WB_E_MODIFIER = 0x00000013;
  static const U_WB_GLUE_AFTER_ZWJ = 0x00000014;
  static const U_WB_ZWJ = 0x00000015;
  static const U_WB_WSEGSPACE = 0x00000016;
}

/// {@category Enum}
class WORDLIST_TYPE {
  static const WORDLIST_TYPE_IGNORE = 0x00000000;
  static const WORDLIST_TYPE_ADD = 0x00000001;
  static const WORDLIST_TYPE_EXCLUDE = 0x00000002;
  static const WORDLIST_TYPE_AUTOCORRECT = 0x00000003;
}

/// {@category Enum}
class tagMLCONVCHARF {
  static const MLCONVCHARF_AUTODETECT = 0x00000001;
  static const MLCONVCHARF_ENTITIZE = 0x00000002;
  static const MLCONVCHARF_NCR_ENTITIZE = 0x00000002;
  static const MLCONVCHARF_NAME_ENTITIZE = 0x00000004;
  static const MLCONVCHARF_USEDEFCHAR = 0x00000008;
  static const MLCONVCHARF_NOBESTFITCHARS = 0x00000010;
  static const MLCONVCHARF_DETECTJPN = 0x00000020;
}

/// {@category Enum}
class tagMLCPF {
  static const MLDETECTF_MAILNEWS = 0x00000001;
  static const MLDETECTF_BROWSER = 0x00000002;
  static const MLDETECTF_VALID = 0x00000004;
  static const MLDETECTF_VALID_NLS = 0x00000008;
  static const MLDETECTF_PRESERVE_ORDER = 0x00000010;
  static const MLDETECTF_PREFERRED_ONLY = 0x00000020;
  static const MLDETECTF_FILTER_SPECIALCHAR = 0x00000040;
  static const MLDETECTF_EURO_UTF8 = 0x00000080;
}
