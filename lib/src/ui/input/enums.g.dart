/// {@category Enum}
class INPUT_MESSAGE_DEVICE_TYPE {
  static const IMDT_UNAVAILABLE = 0x00000000;
  static const IMDT_KEYBOARD = 0x00000001;
  static const IMDT_MOUSE = 0x00000002;
  static const IMDT_TOUCH = 0x00000004;
  static const IMDT_PEN = 0x00000008;
  static const IMDT_TOUCHPAD = 0x00000010;
}

/// {@category Enum}
class INPUT_MESSAGE_ORIGIN_ID {
  static const IMO_UNAVAILABLE = 0x00000000;
  static const IMO_HARDWARE = 0x00000001;
  static const IMO_INJECTED = 0x00000002;
  static const IMO_SYSTEM = 0x00000004;
}

/// {@category Enum}
class RAWINPUTDEVICE_FLAGS {
  static const RIDEV_REMOVE = 0x00000001;
  static const RIDEV_EXCLUDE = 0x00000010;
  static const RIDEV_PAGEONLY = 0x00000020;
  static const RIDEV_NOLEGACY = 0x00000030;
  static const RIDEV_INPUTSINK = 0x00000100;
  static const RIDEV_CAPTUREMOUSE = 0x00000200;
  static const RIDEV_NOHOTKEYS = 0x00000200;
  static const RIDEV_APPKEYS = 0x00000400;
  static const RIDEV_EXINPUTSINK = 0x00001000;
  static const RIDEV_DEVNOTIFY = 0x00002000;
}

/// {@category Enum}
class RAW_INPUT_DATA_COMMAND_FLAGS {
  static const RID_HEADER = 0x10000005;
  static const RID_INPUT = 0x10000003;
}

/// {@category Enum}
class RAW_INPUT_DEVICE_INFO_COMMAND {
  static const RIDI_PREPARSEDDATA = 0x20000005;
  static const RIDI_DEVICENAME = 0x20000007;
  static const RIDI_DEVICEINFO = 0x2000000b;
}

/// {@category Enum}
class RID_DEVICE_INFO_TYPE {
  static const RIM_TYPEMOUSE = 0x00000000;
  static const RIM_TYPEKEYBOARD = 0x00000001;
  static const RIM_TYPEHID = 0x00000002;
}
