/// {@category Enum}
class GESTURECONFIG_ID {
  static const GID_BEGIN = 0x00000001;
  static const GID_END = 0x00000002;
  static const GID_ZOOM = 0x00000003;
  static const GID_PAN = 0x00000004;
  static const GID_ROTATE = 0x00000005;
  static const GID_TWOFINGERTAP = 0x00000006;
  static const GID_PRESSANDTAP = 0x00000007;
  static const GID_ROLLOVER = 0x00000007;
}

/// {@category Enum}
class MANIPULATION_PROCESSOR_MANIPULATIONS {
  static const MANIPULATION_NONE = 0x00000000;
  static const MANIPULATION_TRANSLATE_X = 0x00000001;
  static const MANIPULATION_TRANSLATE_Y = 0x00000002;
  static const MANIPULATION_SCALE = 0x00000004;
  static const MANIPULATION_ROTATE = 0x00000008;
  static const MANIPULATION_ALL = 0x0000000f;
}

/// {@category Enum}
class RegisterTouchWindow_ulFlags {
  static const TWF_FINETOUCH = 0x00000001;
  static const TWF_WANTPALM = 0x00000002;
}

/// {@category Enum}
class TOUCHEVENTF_FLAGS {
  static const TOUCHEVENTF_MOVE = 0x00000001;
  static const TOUCHEVENTF_DOWN = 0x00000002;
  static const TOUCHEVENTF_UP = 0x00000004;
  static const TOUCHEVENTF_INRANGE = 0x00000008;
  static const TOUCHEVENTF_PRIMARY = 0x00000010;
  static const TOUCHEVENTF_NOCOALESCE = 0x00000020;
  static const TOUCHEVENTF_PEN = 0x00000040;
  static const TOUCHEVENTF_PALM = 0x00000080;
}

/// {@category Enum}
class TOUCHINPUTMASKF_MASK {
  static const TOUCHINPUTMASKF_TIMEFROMSYSTEM = 0x00000001;
  static const TOUCHINPUTMASKF_EXTRAINFO = 0x00000002;
  static const TOUCHINPUTMASKF_CONTACTAREA = 0x00000004;
}
