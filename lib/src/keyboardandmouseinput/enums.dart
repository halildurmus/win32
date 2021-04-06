/// {@category Enum}
class ActivateKeyboardLayout_Flags {
  static const KLF_REORDER = 0x00000008;
  static const KLF_RESET = 0x40000000;
  static const KLF_SETFORPROCESS = 0x00000100;
  static const KLF_SHIFTLOCK = 0x00010000;
  static const KLF_ACTIVATE = 0x00000001;
  static const KLF_NOTELLSHELL = 0x00000080;
  static const KLF_REPLACELANG = 0x00000010;
  static const KLF_SUBSTITUTE_OK = 0x00000002;
}

/// {@category Enum}
class GetMouseMovePointsEx_resolutionFlags {
  static const GMMP_USE_DISPLAY_POINTS = 0x00000001;
  static const GMMP_USE_HIGH_RESOLUTION_POINTS = 0x00000002;
}

/// {@category Enum}
class GetRawInputData_uiCommandFlags {
  static const RID_HEADER = 0x10000005;
  static const RID_INPUT = 0x10000003;
}

/// {@category Enum}
class GetRawInputDeviceInfo_uiCommand {
  static const RIDI_PREPARSEDDATA = 0x20000005;
  static const RIDI_DEVICENAME = 0x20000007;
  static const RIDI_DEVICEINFO = 0x2000000b;
}

/// {@category Enum}
class INPUT_typeFlags {
  static const INPUT_MOUSE = 0x00000000;
  static const INPUT_KEYBOARD = 0x00000001;
  static const INPUT_HARDWARE = 0x00000002;
}

/// {@category Enum}
class MOUSE_EVENT_FLAGS {
  static const MOUSEEVENTF_ABSOLUTE = 0x00008000;
  static const MOUSEEVENTF_LEFTDOWN = 0x00000002;
  static const MOUSEEVENTF_LEFTUP = 0x00000004;
  static const MOUSEEVENTF_MIDDLEDOWN = 0x00000020;
  static const MOUSEEVENTF_MIDDLEUP = 0x00000040;
  static const MOUSEEVENTF_MOVE = 0x00000001;
  static const MOUSEEVENTF_RIGHTDOWN = 0x00000008;
  static const MOUSEEVENTF_RIGHTUP = 0x00000010;
  static const MOUSEEVENTF_WHEEL = 0x00000800;
  static const MOUSEEVENTF_XDOWN = 0x00000080;
  static const MOUSEEVENTF_XUP = 0x00000100;
  static const MOUSEEVENTF_HWHEEL = 0x00001000;
  static const MOUSEEVENTF_MOVE_NOCOALESCE = 0x00002000;
  static const MOUSEEVENTF_VIRTUALDESK = 0x00004000;
}

/// {@category Enum}
class RAWINPUTDEVICE_dwFlags {
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
class RID_DEVICE_INFO_dwType {
  static const RIM_TYPEMOUSE = 0x00000000;
  static const RIM_TYPEKEYBOARD = 0x00000001;
  static const RIM_TYPEHID = 0x00000002;
}

/// {@category Enum}
class RegisterHotKey_fsModifiersFlags {
  static const MOD_ALT = 0x00000001;
  static const MOD_CONTROL = 0x00000002;
  static const MOD_NOREPEAT = 0x00004000;
  static const MOD_SHIFT = 0x00000004;
  static const MOD_WIN = 0x00000008;
}

/// {@category Enum}
class TRACKMOUSEEVENT_dwFlags {
  static const TME_CANCEL = 0x80000000;
  static const TME_HOVER = 0x00000001;
  static const TME_LEAVE = 0x00000002;
  static const TME_NONCLIENT = 0x00000010;
  static const TME_QUERY = 0x40000000;
}

/// {@category Enum}
class keybd_eventFlags {
  static const KEYEVENTF_EXTENDEDKEY = 0x00000001;
  static const KEYEVENTF_KEYUP = 0x00000002;
  static const KEYEVENTF_SCANCODE = 0x00000008;
  static const KEYEVENTF_UNICODE = 0x00000004;
}

