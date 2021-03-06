/// {@category Enum}
class TsActiveSelEnd {
  static const TS_AE_NONE = 0x00000000;
  static const TS_AE_START = 0x00000001;
  static const TS_AE_END = 0x00000002;
}

/// {@category Enum}
class TsLayoutCode {
  static const TS_LC_CREATE = 0x00000000;
  static const TS_LC_CHANGE = 0x00000001;
  static const TS_LC_DESTROY = 0x00000002;
}

/// {@category Enum}
class TsRunType {
  static const TS_RT_PLAIN = 0x00000000;
  static const TS_RT_HIDDEN = 0x00000001;
  static const TS_RT_OPAQUE = 0x00000002;
}

/// {@category Enum}
class TsGravity {
  static const TS_GR_BACKWARD = 0x00000000;
  static const TS_GR_FORWARD = 0x00000001;
}

/// {@category Enum}
class TsShiftDir {
  static const TS_SD_BACKWARD = 0x00000000;
  static const TS_SD_FORWARD = 0x00000001;
}

/// {@category Enum}
class TfLBIClick {
  static const TF_LBI_CLK_RIGHT = 0x00000001;
  static const TF_LBI_CLK_LEFT = 0x00000002;
}

/// {@category Enum}
class TfLBBalloonStyle {
  static const TF_LB_BALLOON_RECO = 0x00000000;
  static const TF_LB_BALLOON_SHOW = 0x00000001;
  static const TF_LB_BALLOON_MISS = 0x00000002;
}

/// {@category Enum}
class TfAnchor {
  static const TF_ANCHOR_START = 0x00000000;
  static const TF_ANCHOR_END = 0x00000001;
}

/// {@category Enum}
class TfActiveSelEnd {
  static const TF_AE_NONE = 0x00000000;
  static const TF_AE_START = 0x00000001;
  static const TF_AE_END = 0x00000002;
}

/// {@category Enum}
class TfLayoutCode {
  static const TF_LC_CREATE = 0x00000000;
  static const TF_LC_CHANGE = 0x00000001;
  static const TF_LC_DESTROY = 0x00000002;
}

/// {@category Enum}
class TfGravity {
  static const TF_GRAVITY_BACKWARD = 0x00000000;
  static const TF_GRAVITY_FORWARD = 0x00000001;
}

/// {@category Enum}
class TfShiftDir {
  static const TF_SD_BACKWARD = 0x00000000;
  static const TF_SD_FORWARD = 0x00000001;
}

/// {@category Enum}
class TF_DA_LINESTYLE {
  static const TF_LS_NONE = 0x00000000;
  static const TF_LS_SOLID = 0x00000001;
  static const TF_LS_DOT = 0x00000002;
  static const TF_LS_DASH = 0x00000003;
  static const TF_LS_SQUIGGLE = 0x00000004;
}

/// {@category Enum}
class TF_DA_COLORTYPE {
  static const TF_CT_NONE = 0x00000000;
  static const TF_CT_SYSCOLOR = 0x00000001;
  static const TF_CT_COLORREF = 0x00000002;
}

/// {@category Enum}
class TF_DA_ATTR_INFO {
  static const TF_ATTR_INPUT = 0x00000000;
  static const TF_ATTR_TARGET_CONVERTED = 0x00000001;
  static const TF_ATTR_CONVERTED = 0x00000002;
  static const TF_ATTR_TARGET_NOTCONVERTED = 0x00000003;
  static const TF_ATTR_INPUT_ERROR = 0x00000004;
  static const TF_ATTR_FIXEDCONVERTED = 0x00000005;
  static const TF_ATTR_OTHER = 0xffffffff;
}

/// {@category Enum}
class TfCandidateResult {
  static const CAND_FINALIZED = 0x00000000;
  static const CAND_SELECTED = 0x00000001;
  static const CAND_CANCELED = 0x00000002;
}

/// {@category Enum}
class TfSapiObject {
  static const GETIF_RESMGR = 0x00000000;
  static const GETIF_RECOCONTEXT = 0x00000001;
  static const GETIF_RECOGNIZER = 0x00000002;
  static const GETIF_VOICE = 0x00000003;
  static const GETIF_DICTGRAM = 0x00000004;
  static const GETIF_RECOGNIZERNOINIT = 0x00000005;
}

/// {@category Enum}
class TfIntegratableCandidateListSelectionStyle {
  static const STYLE_ACTIVE_SELECTION = 0x00000000;
  static const STYLE_IMPLIED_SELECTION = 0x00000001;
}

/// {@category Enum}
class TKBLayoutType {
  static const TKBLT_UNDEFINED = 0x00000000;
  static const TKBLT_CLASSIC = 0x00000001;
  static const TKBLT_OPTIMIZED = 0x00000002;
}

/// {@category Enum}
class InputScope {
  static const IS_DEFAULT = 0x00000000;
  static const IS_URL = 0x00000001;
  static const IS_FILE_FULLFILEPATH = 0x00000002;
  static const IS_FILE_FILENAME = 0x00000003;
  static const IS_EMAIL_USERNAME = 0x00000004;
  static const IS_EMAIL_SMTPEMAILADDRESS = 0x00000005;
  static const IS_LOGINNAME = 0x00000006;
  static const IS_PERSONALNAME_FULLNAME = 0x00000007;
  static const IS_PERSONALNAME_PREFIX = 0x00000008;
  static const IS_PERSONALNAME_GIVENNAME = 0x00000009;
  static const IS_PERSONALNAME_MIDDLENAME = 0x0000000a;
  static const IS_PERSONALNAME_SURNAME = 0x0000000b;
  static const IS_PERSONALNAME_SUFFIX = 0x0000000c;
  static const IS_ADDRESS_FULLPOSTALADDRESS = 0x0000000d;
  static const IS_ADDRESS_POSTALCODE = 0x0000000e;
  static const IS_ADDRESS_STREET = 0x0000000f;
  static const IS_ADDRESS_STATEORPROVINCE = 0x00000010;
  static const IS_ADDRESS_CITY = 0x00000011;
  static const IS_ADDRESS_COUNTRYNAME = 0x00000012;
  static const IS_ADDRESS_COUNTRYSHORTNAME = 0x00000013;
  static const IS_CURRENCY_AMOUNTANDSYMBOL = 0x00000014;
  static const IS_CURRENCY_AMOUNT = 0x00000015;
  static const IS_DATE_FULLDATE = 0x00000016;
  static const IS_DATE_MONTH = 0x00000017;
  static const IS_DATE_DAY = 0x00000018;
  static const IS_DATE_YEAR = 0x00000019;
  static const IS_DATE_MONTHNAME = 0x0000001a;
  static const IS_DATE_DAYNAME = 0x0000001b;
  static const IS_DIGITS = 0x0000001c;
  static const IS_NUMBER = 0x0000001d;
  static const IS_ONECHAR = 0x0000001e;
  static const IS_PASSWORD = 0x0000001f;
  static const IS_TELEPHONE_FULLTELEPHONENUMBER = 0x00000020;
  static const IS_TELEPHONE_COUNTRYCODE = 0x00000021;
  static const IS_TELEPHONE_AREACODE = 0x00000022;
  static const IS_TELEPHONE_LOCALNUMBER = 0x00000023;
  static const IS_TIME_FULLTIME = 0x00000024;
  static const IS_TIME_HOUR = 0x00000025;
  static const IS_TIME_MINORSEC = 0x00000026;
  static const IS_NUMBER_FULLWIDTH = 0x00000027;
  static const IS_ALPHANUMERIC_HALFWIDTH = 0x00000028;
  static const IS_ALPHANUMERIC_FULLWIDTH = 0x00000029;
  static const IS_CURRENCY_CHINESE = 0x0000002a;
  static const IS_BOPOMOFO = 0x0000002b;
  static const IS_HIRAGANA = 0x0000002c;
  static const IS_KATAKANA_HALFWIDTH = 0x0000002d;
  static const IS_KATAKANA_FULLWIDTH = 0x0000002e;
  static const IS_HANJA = 0x0000002f;
  static const IS_HANGUL_HALFWIDTH = 0x00000030;
  static const IS_HANGUL_FULLWIDTH = 0x00000031;
  static const IS_SEARCH = 0x00000032;
  static const IS_FORMULA = 0x00000033;
  static const IS_SEARCH_INCREMENTAL = 0x00000034;
  static const IS_CHINESE_HALFWIDTH = 0x00000035;
  static const IS_CHINESE_FULLWIDTH = 0x00000036;
  static const IS_NATIVE_SCRIPT = 0x00000037;
  static const IS_YOMI = 0x00000038;
  static const IS_TEXT = 0x00000039;
  static const IS_CHAT = 0x0000003a;
  static const IS_NAME_OR_PHONENUMBER = 0x0000003b;
  static const IS_EMAILNAME_OR_ADDRESS = 0x0000003c;
  static const IS_PRIVATE = 0x0000003d;
  static const IS_MAPS = 0x0000003e;
  static const IS_NUMERIC_PASSWORD = 0x0000003f;
  static const IS_NUMERIC_PIN = 0x00000040;
  static const IS_ALPHANUMERIC_PIN = 0x00000041;
  static const IS_ALPHANUMERIC_PIN_SET = 0x00000042;
  static const IS_FORMULA_NUMBER = 0x00000043;
  static const IS_CHAT_WITHOUT_EMOJI = 0x00000044;
  static const IS_PHRASELIST = 0xffffffff;
  static const IS_REGULAREXPRESSION = 0xfffffffe;
  static const IS_SRGS = 0xfffffffd;
  static const IS_XML = 0xfffffffc;
  static const IS_ENUMSTRING = 0xfffffffb;
}
